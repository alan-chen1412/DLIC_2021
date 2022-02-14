module traffic_light (

    input  clk,
    input  rst,
    input  pass,
    output R,
    output G,
    output Y
);

//write your code here
parameter [2:0] s0 = 3'b000,
		s1 = 3'b001,
		s2 = 3'b010,
		s3 = 3'b011,
		s4 = 3'b100,
		s5 = 3'b101,
		s6 = 3'b110;
reg[2:0] current_state,next_state;
reg R;  
reg G;
reg Y;
reg[12:0] counter;
reg[12:0] total;
always@(posedge clk or posedge rst)begin
	if(rst)
   begin
		current_state 	= s0;
		counter 	= 0;
		total		= 0;  
 end
	else
		begin
		current_state = next_state;
		end
end

always@(posedge clk)
	begin
		counter = counter + 1;
	end
always@(posedge clk)
	begin
		total = total+1;
	end

always@(*)begin
	case(current_state)
		s0: if(counter == 1024)
          next_state = s1;
        else
          begin
            next_state = s0;
          end
		s1: if(pass)
			begin
			    next_state = s0;
			    counter = 0;
			end
		    else if(counter == 1152)
         		 next_state = s2;
        else
          begin
            next_state = s1;
          end
		s2: if(pass)
			begin
			    next_state = s0;
			    counter = 0;
			end
		    else if(counter == 1280)
          		next_state = s3;
        else
          begin
            next_state = s2;
          end
		s3: if(pass)
			begin
			    next_state = s0;
			    counter = 0;
			end
		    else if(counter == 1408)
          		next_state = s4;
        else
          begin
            next_state = s3;
          end
		s4: if(pass)
			begin
			    next_state = s0;
			    counter = 0;
			end
		    else if(counter == 1536)
          		next_state = s5;
        else
          begin
            next_state = s4;
          end
		s5: if(pass)
			begin
			    next_state = s0;
			    counter = 0;
			end
		    else if(counter == 2048)
          		next_state = s6;
        else
          begin
            next_state = s5;
          end
		s6: if(pass)
			begin
			    next_state = s0;
			    counter = 0;
			end
		    else if(counter == 3072)
			begin
				next_state = s0;
				counter = 0;
			end
        else
          begin
            next_state = s6;
          end
		default: next_state = s0;
	endcase
end

always@(*)begin
	case(current_state)
		s0:begin
		   R=0;
       G=1;
       Y=0;
     end
		s1:begin
		   R=0;
       G=0;
       Y=0;
     end
		s2:begin
		   R=0;
       G=1;
       Y=0;
     end
		s3:begin
		   R=0;
       G=0;
       Y=0;
     end
		s4:begin
		   R=0;
       G=1;
       Y=0;
     end
		s5:begin
		   R=0;
       G=0;
       Y=1;
     end
		s6:begin
		   R=1;
       G=0;
       Y=0;
     end
    default:begin
       R=0;
       G=0;
       Y=0;
    end
	endcase
end

endmodule
