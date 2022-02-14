
`timescale 1ns/10ps

module  CONV(
	input				clk,
	input				reset,
	output	reg			busy,	
	input				ready,	
			
	output	reg	[11:0]	iaddr,
	input		[19:0]	idata,	
	
	output	reg			cwr,
	output	reg	[11:0]	caddr_wr,
	output	reg	[19:0]	cdata_wr,
	
	output	reg			crd,
	output	reg	[11:0]	caddr_rd,
	input	 	[19:0]	cdata_rd,
	
	output	reg [2:0]	csel
	);

parameter IDLE 		= 4'd0,
		  RDATA		= 4'd1,
		  CAL		= 4'd2,
		  WDATA		= 4'd3,
		  MRDATA	= 4'd4,
		  MCAL		= 4'd5,
		  MWDATA	= 4'd6,
		  FRDATA	= 4'd7,
		  FWDATA	= 4'd8,
		  FIN		= 4'd9;

parameter L_UP	= 3'd0,
		  M_UP	= 3'd1,
		  RGT	= 3'd2,
		  LEF	= 3'd3,
		  MID	= 3'd4,
		  L_DN	= 3'd5,
		  M_DN	= 3'd6;
	  	

reg [2:0] addr_pos;
reg [2:0] r_num;

reg [3:0] state_cnt;

reg [3:0] STATE, NEXT;

reg signed [19:0] WT_K [0:8]; //maybe combination
reg signed [19:0] BIAS_K;
reg signed [39:0] MUL_RES;

reg signed [19:0] DATA[0:8];

reg [3:0] index;
reg [2:0] mindex;

reg [11:0] addr;
reg [11:0] maddr;
reg [11:0] faddr;

reg K_num;


//FSM
//-------------------------------------------------------//
always@(posedge clk or posedge reset) begin
	STATE <= (reset) ? IDLE : NEXT;
end

always@(*) begin
	case(STATE) 
		IDLE 	: NEXT = (ready) ? RDATA : IDLE;
		RDATA	: NEXT = (state_cnt == r_num) ? CAL : RDATA;
		CAL		: NEXT = (state_cnt == 4'd10) ? WDATA : CAL;
		WDATA	: NEXT = (state_cnt == 4'd1) ? (((addr == 12'd0) & (K_num)) ? MRDATA : RDATA) : WDATA;
		MRDATA	: NEXT = (state_cnt == 4'd3) ? MCAL : MRDATA;
		MCAL	: NEXT = (state_cnt == 4'd3) ? MWDATA : MCAL;
		MWDATA	: NEXT = (state_cnt == 4'd1) ? (((addr == 12'd0) & (K_num)) ? FRDATA : MRDATA) : MWDATA; 
		FRDATA	: NEXT = (state_cnt == 4'd1) ? FWDATA : FRDATA;
		FWDATA	: NEXT = (state_cnt == 4'd2) ? ((faddr == 12'd2050) ? FIN : FRDATA) : FWDATA;
		FIN		: NEXT = FIN;
	endcase
end

always@(posedge clk or posedge reset) begin
	if(reset) state_cnt <= 4'd0;
	else if(STATE == RDATA) state_cnt <= (state_cnt == r_num) ? 4'd0 : state_cnt + 4'd1;
	else if(STATE == CAL)	state_cnt <= (state_cnt == 4'd10) ? 4'd0 : state_cnt + 4'd1;
	else if(STATE == WDATA) state_cnt <= (state_cnt == 4'd1) ? 4'd0 : state_cnt + 4'd1;
	else if(STATE == MRDATA)state_cnt <= (state_cnt == 4'd3) ? 4'd0 : state_cnt + 4'd1;
	else if(STATE == MCAL)	state_cnt <= (state_cnt == 4'd3) ? 4'd0 : state_cnt + 4'd1;
	else if(STATE == MWDATA)state_cnt <= (state_cnt == 4'd1) ? 4'd0 : state_cnt + 4'd1;
	else if(STATE == FRDATA)state_cnt <= (state_cnt == 4'd1) ? 4'd0 : state_cnt + 4'd1;
	else if(STATE == FWDATA)state_cnt <= (state_cnt == 4'd2) ? 4'd0 : state_cnt + 4'd1;
end

//K_num
always@(posedge clk or posedge reset) begin
	if(reset) K_num <= 1'b0;
	else if((STATE == WDATA) & (addr == 12'd0) & (state_cnt == 4'd1)) K_num <= K_num  + 1'b1;
	else if((STATE == MWDATA) & (addr == 12'd0) & (state_cnt == 4'd1)) K_num <= K_num + 1'b1;
end


always@(*) begin
	case(STATE)
		WDATA  : csel = (K_num) ? 3'b010 : 3'b001;
		MRDATA : csel = (K_num) ? 3'b010 : 3'b001;
		MWDATA : csel = (K_num) ? 3'b100 : 3'b011;
		FRDATA : csel = (state_cnt) ? 3'b100 : 3'b011;
		FWDATA : csel = 3'b101;
		default: csel = 3'b000;
	endcase
end

always@(posedge clk or posedge reset) begin
	if(reset) busy <= 1'b0;
	else begin
		case(STATE)
			RDATA, CAL, WDATA, MRDATA, MCAL, MWDATA, FRDATA, FWDATA	: busy <= 1'b1;
			IDLE : busy <= (ready & ~reset) ? 1'b1 : 1'b0;
			default : busy <= 1'b0;
		endcase
	end
end

//-------------------------------------------------------//

//Kernel weight
//-------------------------------------------------------//
integer idx;
always@(posedge clk or posedge reset) begin
	if(reset) begin
		BIAS_K <= 20'b0;
		for(idx = 0 ; idx < 9 ; idx = idx + 1) begin
			WT_K[idx] <= 20'b0;
		end
	end
	else begin
		if(K_num) begin
			WT_K[0] <= 20'hFDB55;
			WT_K[1] <= 20'h02992;
			WT_K[2] <= 20'hFC994;
			WT_K[3] <= 20'h050FD;
			WT_K[4] <= 20'h02F20;
			WT_K[5] <= 20'h0202D;
			WT_K[6] <= 20'h03BD7;
			WT_K[7] <= 20'hFD369;
			WT_K[8] <= 20'h05E68;
			BIAS_K	<= 20'hF7295;
		end
		else begin //kernel 0
			WT_K[0] <= 20'h0A89E;
			WT_K[1] <= 20'h092D5;
			WT_K[2] <= 20'h06D43;
			WT_K[3] <= 20'h01004;
			WT_K[4] <= 20'hF8F71;
			WT_K[5] <= 20'hF6E54;
			WT_K[6] <= 20'hFA6D7;
			WT_K[7] <= 20'hFC834;
			WT_K[8] <= 20'hFAC19;
			BIAS_K	<= 20'h01310;
		end
	end
end
//-------------------------------------------------------//

//RDATA
//-------------------------------------------------------//
always@(*) begin
	if		(addr == 12'b0) 		addr_pos = L_UP;
	else if	(addr[5:0] == 6'h3f) 	addr_pos = RGT;
	else if	(addr[11:6] == 7'h0)	addr_pos = M_UP;
	else if (addr == 12'd4032)		addr_pos = L_DN;
	else if (addr[5:0] == 6'h0)		addr_pos = LEF;
	else if	(addr[11:6] == 6'h3f)	addr_pos = M_DN;
	else							addr_pos = MID;
end

//address for conv result
always@(posedge clk or posedge reset) begin
	if(reset) addr <= 12'b0;
	else if(STATE == WDATA) begin
		if(state_cnt == 4'd0) addr <= (addr == 12'd4095) ? 12'd0 : addr + 12'd1; 
	end
	else if(STATE == MWDATA) begin
		if(state_cnt == 4'd0) addr <= (addr == 12'd4030) ? 12'd0 : (addr[5:0] == 6'h3e) ? addr + 12'd66 : addr + 12'd2;
	end
end

//address for max result
always@(posedge clk or posedge reset) begin
	if(reset) maddr <= 12'b0;
	else if((STATE == MWDATA) & (state_cnt == 4'd0)) begin
		maddr <= (maddr == 12'd1023) ? 12'd0 : maddr + 12'b1;
	end
	else if((STATE == FWDATA) & (state_cnt == 4'd0)) begin
		maddr <= (maddr == 12'd1023) ? 12'd0 : maddr + 12'b1;
	end
end

//address for flatten result
always@(posedge clk or posedge reset) begin
	if(reset) faddr <= 12'b0;
	else if(STATE == FWDATA) faddr <= (state_cnt < 4'd2) ? faddr + 12'b1 : faddr;
end


always@(*) begin
	case(addr_pos)
		L_UP,L_DN: r_num = 3'd3;
		M_UP,M_DN: r_num = 3'd1;
		MID		 : r_num = 3'd2;
		RGT		 : r_num = 3'd0; 
		LEF		 : r_num = 3'd5;
	endcase
end

integer idx1;
always@(posedge clk or posedge reset) begin
	if(reset) begin
		for(idx1 = 0 ; idx1 < 9 ; idx1 = idx1 + 1) begin
			DATA[idx1] <= 20'b0;
		end
	end
	else if(STATE == RDATA) DATA[index] <= idata;
	else if((STATE == WDATA) & (state_cnt == 4'd1)) begin
		case(addr_pos)
			L_UP,LEF,L_DN: begin
				for(idx1 = 0 ; idx1 < 9 ; idx1 = idx1 +1) 
					DATA[idx1] <= 8'b0;
			end
			default:begin
				DATA[0] <= DATA[1]; DATA[1] <= DATA[2]; DATA[2] <= 8'b0;
				DATA[3] <= DATA[4]; DATA[4] <= DATA[5]; DATA[5] <= 8'b0;
				DATA[6] <= DATA[7]; DATA[7] <= DATA[8]; DATA[8] <= 8'b0;
			end
		endcase
	end
	else if(STATE == MRDATA) DATA[mindex] <= cdata_rd;
	else if(STATE == MCAL) begin
		if(state_cnt[0]) begin
			if(DATA[0] > DATA[1]) begin
				DATA[0] <= DATA[1];
				DATA[1] <= DATA[0];
			end
			if(DATA[2] > DATA[3]) begin
				DATA[2] <= DATA[3];
				DATA[3] <= DATA[2];
			end
		end
		else begin
			if(DATA[1] > DATA[2]) begin
				DATA[1] <= DATA[2];
				DATA[2] <= DATA[1];
			end
		end
	end
	else if(STATE == FRDATA) DATA[mindex] <= cdata_rd;
end

always@(posedge clk or posedge reset) begin
	if(reset) begin
		index	<= 4'd4;
		iaddr	<= 12'd0;
	end
	else if(STATE == RDATA) begin
		case(addr_pos)
			L_UP: begin
				case(index)
					4'd4,4'd7: begin
						index <= index + 4'd1;
						iaddr <= iaddr + 12'd1;
					end
					4'd5: begin
						index <= index + 4'd2;
						iaddr <= iaddr + 12'd63;
					end
				endcase
			end
			M_UP,MID: begin
				case(index)
					4'd2,4'd5: begin
						index <= index + 4'd3;
						iaddr <= iaddr + 12'd64;
					end
				endcase
			end
			LEF: begin
				case(index)
					4'd1,4'd4,4'd7: begin
						index <= index + 4'd1;
						iaddr <= iaddr + 12'd1;
					end
					4'd2,4'd5: begin
						index <= index + 4'd2;
						iaddr <= iaddr + 12'd63;
					end
				endcase
			end
			L_DN: begin
				case(index)
					4'd1,4'd4: begin
						index <= index + 4'd1;
						iaddr <= iaddr + 12'd1;
					end
					4'd2: begin
						index <= index + 4'd2;
						iaddr <= iaddr + 12'd63;
					end
				endcase
			end
			M_DN: begin
				case(index)
					4'd2: begin
						index <= index + 4'd3;
						iaddr <= iaddr + 12'd64;
					end
				endcase
			end
		endcase
	end
	else if((STATE == WDATA) & (state_cnt == 4'd1)) begin
		case(addr_pos)
			L_UP: begin
				index <= 4'd4;
				iaddr <= 12'd0;
			end
			M_UP: begin
				index <= 4'd5;
				iaddr <= addr + 12'd1;
			end
			LEF, L_DN: begin
				index <= 4'd1;
				iaddr <= addr - 12'd64;
			end
			MID, M_DN: begin
				index <= 4'd2;
				iaddr <= addr - 12'd63;
			end
			RGT: begin
				index <= 4'd4;
				iaddr <= addr;
			end
		endcase
	end
end
//-------------------------------------------------------//

//CAL
//-------------------------------------------------------//
always@(posedge clk or posedge reset) begin
	if(reset) MUL_RES <= 40'b0;
	else if(STATE == RDATA) MUL_RES <= 40'b0;
	else if(STATE == CAL) begin
		if(state_cnt < 4'd9) begin
			MUL_RES <= DATA[state_cnt]*WT_K[state_cnt] + MUL_RES;
		end
		else if(state_cnt == 4'd9) begin
			MUL_RES[35:16] <= MUL_RES[35:16] + BIAS_K;
		end
		else begin
			MUL_RES[35:16] <= MUL_RES[35:16] + MUL_RES[15];
		end
	end
end
//-------------------------------------------------------//

//WDATA
//-------------------------------------------------------//
always@(posedge clk or posedge reset) begin
	if(reset) begin
		cdata_wr 	<= 20'b0;
		caddr_wr	<= 12'b0;
	end
	else if(STATE == WDATA) begin
		if (state_cnt == 4'd0) begin
			cdata_wr	<= (MUL_RES[35]) ? 20'b0 : MUL_RES[35:16];
			caddr_wr	<= addr;
		end
		else begin
			cdata_wr	<= cdata_wr;
			caddr_wr	<= caddr_wr;
		end
	end
	else if(STATE == MWDATA) begin
		if (state_cnt == 4'd0) begin
			cdata_wr	<= DATA[3];
			caddr_wr	<= maddr;
		end
		else begin
			cdata_wr	<= cdata_wr;
			caddr_wr	<= caddr_wr;
		end
	end
	else if(STATE == FRDATA) begin
		cdata_wr		<= cdata_wr;
		caddr_wr		<= caddr_wr;
	end
	else if(STATE == FWDATA) begin
		cdata_wr		<= DATA[state_cnt];
		caddr_wr		<= faddr;
	end
end

always@(*)begin
	case(STATE)
		WDATA : cwr = (state_cnt) ? 1'b1 : 1'b0;
		MWDATA: cwr = (state_cnt) ? 1'b1 : 1'b0;
		FWDATA: cwr = (state_cnt == 4'd0) ?  1'b0 : 1'b1;
		default: cwr = 1'b0;
	endcase
end
//-------------------------------------------------------//

//MRDATA
//-------------------------------------------------------//

always@(*) begin
	case(STATE)
		MRDATA 	: crd <= 1'b1;
		FRDATA	: crd <= 1'b1;
		default	: crd <= 1'b0;
	endcase
end

always@(posedge clk or posedge reset) begin
	if(reset) begin
		mindex <= 3'b0;
	end
	else if(STATE == MRDATA) begin
		mindex <= mindex + 3'b1;
	end
	else if(STATE == FRDATA) begin
		mindex <= (mindex == 3'd2) ? 3'd0 : mindex + 3'b1;
	end
	else mindex <= 3'b0;
end

always@(posedge clk or posedge reset) begin
	if(reset) caddr_rd <= 12'b0;
	else if((STATE == MRDATA) & (crd)) begin
		case(mindex)
			3'd0,3'd2	: caddr_rd <= caddr_rd + 12'b1;
			3'd1		: caddr_rd <= caddr_rd + 12'd63;
		endcase
	end
	else if((STATE == MWDATA) & (state_cnt == 4'd1)) begin
		caddr_rd <= addr;
	end
	else if(STATE == FWDATA) caddr_rd <= (state_cnt == 4'd1) ? maddr : caddr_rd;
end
//-------------------------------------------------------//

endmodule
