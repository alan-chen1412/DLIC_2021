
d
Command: %s
53*	vivadotcl23
route_design -directive Explore2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
^
Using Router directive '%s'.
20*	routeflow2
Explore2default:defaultZ35-270h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
C
.Phase 1 Build RT Design | Checksum: 123fe5875
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:24 ; elapsed = 00:00:20 . Memory (MB): peak = 1659.465 ; gain = 20.0432default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
B
-Phase 2.1 Create Timer | Checksum: 123fe5875
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:24 ; elapsed = 00:00:20 . Memory (MB): peak = 1659.465 ; gain = 20.0432default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 123fe5875
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:24 ; elapsed = 00:00:20 . Memory (MB): peak = 1666.789 ; gain = 27.3672default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 123fe5875
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:24 ; elapsed = 00:00:20 . Memory (MB): peak = 1666.789 ; gain = 27.3672default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 164406f5c
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:27 ; elapsed = 00:00:22 . Memory (MB): peak = 1696.668 ; gain = 57.2462default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-0.179 | TNS=-1.303 | WHS=-0.275 | THS=-234.555|
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 1c4df6bd0
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:29 ; elapsed = 00:00:23 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 203fe8579
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:30 ; elapsed = 00:00:24 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.349 | TNS=-2.633 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 167ccc02d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:40 ; elapsed = 00:00:31 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.504 | TNS=-2.734 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 123050d93
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:43 ; elapsed = 00:00:34 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 123050d93
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:43 ; elapsed = 00:00:34 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 5.1.1 Update Timing | Checksum: 1dd96a146
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:43 ; elapsed = 00:00:34 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.234 | TNS=-1.203 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 22ad9df9d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:44 ; elapsed = 00:00:34 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 22ad9df9d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:44 ; elapsed = 00:00:34 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 22ad9df9d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:44 ; elapsed = 00:00:34 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 1c1a90be6
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:44 ; elapsed = 00:00:34 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.234 | TNS=-1.202 | WHS=-0.088 | THS=-0.088 |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 1cdabfb45
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:44 ; elapsed = 00:00:34 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 1ea0fd390
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:44 ; elapsed = 00:00:35 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
t

Phase %s%s
101*constraints2
7 2default:default2'
Timing Verification2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
7.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 7.1 Update Timing | Checksum: 17d8fbe2d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:45 ; elapsed = 00:00:35 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.234 | TNS=-1.202 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 7 Timing Verification | Checksum: 17d8fbe2d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:45 ; elapsed = 00:00:35 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
o

Phase %s%s
101*constraints2
8 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 8 Route finalize | Checksum: 17d8fbe2d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:46 ; elapsed = 00:00:35 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
v

Phase %s%s
101*constraints2
9 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 9 Verifying routed nets | Checksum: 17d8fbe2d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:46 ; elapsed = 00:00:35 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
s

Phase %s%s
101*constraints2
10 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
F
1Phase 10 Depositing Routes | Checksum: 1c4e9463e
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:46 ; elapsed = 00:00:36 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
w

Phase %s%s
101*constraints2
11 2default:default2)
Incr Placement Change2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0042default:default2
1802.4732default:default2
0.0002default:defaultZ17-268h px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-0.2072default:defaultZ30-746h px? 
@
+Ending IncrPlace Task | Checksum: ec218331
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 1802.473 ; gain = 0.0002default:defaulth px? 
J
5Phase 11 Incr Placement Change | Checksum: 1c4e9463e
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:02 ; elapsed = 00:00:53 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
q

Phase %s%s
101*constraints2
12 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
C
.Phase 12 Build RT Design | Checksum: 355c4956
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:06 ; elapsed = 00:00:57 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
w

Phase %s%s
101*constraints2
13 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
13.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
B
-Phase 13.1 Create Timer | Checksum: 3b51f8d6
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:06 ; elapsed = 00:00:58 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
|

Phase %s%s
101*constraints2
13.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 13.2 Fix Topology Constraints | Checksum: 3b51f8d6
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:06 ; elapsed = 00:00:58 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
u

Phase %s%s
101*constraints2
13.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 13.3 Pre Route Cleanup | Checksum: 86a1a4af
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:06 ; elapsed = 00:00:58 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
q

Phase %s%s
101*constraints2
13.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 13.4 Update Timing | Checksum: 1ce902846
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:10 ; elapsed = 00:01:00 . Memory (MB): peak = 1802.473 ; gain = 163.0512default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-0.325 | TNS=-2.603 | WHS=-0.275 | THS=-232.812|
2default:defaultZ35-416h px? 
J
5Phase 13 Router Initialization | Checksum: 22078360a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:12 ; elapsed = 00:01:01 . Memory (MB): peak = 1830.625 ; gain = 191.2032default:defaulth px? 
q

Phase %s%s
101*constraints2
14 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
D
/Phase 14 Initial Routing | Checksum: 10686535f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:12 ; elapsed = 00:01:01 . Memory (MB): peak = 1830.625 ; gain = 191.2032default:defaulth px? 
t

Phase %s%s
101*constraints2
15 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
v

Phase %s%s
101*constraints2
15.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.324 | TNS=-2.538 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
I
4Phase 15.1 Global Iteration 0 | Checksum: 19c836a98
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:19 ; elapsed = 00:01:07 . Memory (MB): peak = 1830.625 ; gain = 191.2032default:defaulth px? 
v

Phase %s%s
101*constraints2
15.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.380 | TNS=-2.206 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 15.2 Global Iteration 1 | Checksum: 79e8f129
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:23 ; elapsed = 00:01:11 . Memory (MB): peak = 1830.625 ; gain = 191.2032default:defaulth px? 
F
1Phase 15 Rip-up And Reroute | Checksum: 79e8f129
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:23 ; elapsed = 00:01:11 . Memory (MB): peak = 1830.625 ; gain = 191.2032default:defaulth px? 
}

Phase %s%s
101*constraints2
16 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
16.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
s

Phase %s%s
101*constraints2
16.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 16.1.1 Update Timing | Checksum: e0cbe227
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:24 ; elapsed = 00:01:11 . Memory (MB): peak = 1830.625 ; gain = 191.2032default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.209 | TNS=-1.158 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 16.1 Delay CleanUp | Checksum: dbb377ea
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:24 ; elapsed = 00:01:11 . Memory (MB): peak = 1830.625 ; gain = 191.2032default:defaulth px? 
{

Phase %s%s
101*constraints2
16.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 16.2 Clock Skew Optimization | Checksum: dbb377ea
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:24 ; elapsed = 00:01:11 . Memory (MB): peak = 1830.625 ; gain = 191.2032default:defaulth px? 
O
:Phase 16 Delay and Skew Optimization | Checksum: dbb377ea
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:24 ; elapsed = 00:01:11 . Memory (MB): peak = 1830.625 ; gain = 191.2032default:defaulth px? 
o

Phase %s%s
101*constraints2
17 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
17.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
s

Phase %s%s
101*constraints2
17.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
F
1Phase 17.1.1 Update Timing | Checksum: 1b6c487eb
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:24 ; elapsed = 00:01:11 . Memory (MB): peak = 1830.625 ; gain = 191.2032default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.209 | TNS=-1.158 | WHS=0.051  | THS=0.000  |
2default:defaultZ35-416h px? 
D
/Phase 17.1 Hold Fix Iter | Checksum: 1b6c487eb
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:24 ; elapsed = 00:01:11 . Memory (MB): peak = 1830.625 ; gain = 191.2032default:defaulth px? 
B
-Phase 17 Post Hold Fix | Checksum: 1b6c487eb
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:24 ; elapsed = 00:01:11 . Memory (MB): peak = 1830.625 ; gain = 191.2032default:defaulth px? 
u

Phase %s%s
101*constraints2
18 2default:default2'
Timing Verification2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
18.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 18.1 Update Timing | Checksum: 1aa604496
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:25 ; elapsed = 00:01:12 . Memory (MB): peak = 1830.625 ; gain = 191.2032default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.209 | TNS=-1.158 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 18 Timing Verification | Checksum: 1aa604496
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:25 ; elapsed = 00:01:12 . Memory (MB): peak = 1830.625 ; gain = 191.2032default:defaulth px? 
p

Phase %s%s
101*constraints2
19 2default:default2"
Route finalize2default:defaultZ18-101h px? 
C
.Phase 19 Route finalize | Checksum: 1aa604496
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:25 ; elapsed = 00:01:12 . Memory (MB): peak = 1830.625 ; gain = 191.2032default:defaulth px? 
w

Phase %s%s
101*constraints2
20 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
J
5Phase 20 Verifying routed nets | Checksum: 1aa604496
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:25 ; elapsed = 00:01:12 . Memory (MB): peak = 1830.625 ; gain = 191.2032default:defaulth px? 
s

Phase %s%s
101*constraints2
21 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
F
1Phase 21 Depositing Routes | Checksum: 19ce44d3a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:26 ; elapsed = 00:01:13 . Memory (MB): peak = 1830.625 ; gain = 191.2032default:defaulth px? 
t

Phase %s%s
101*constraints2
22 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Post Routing Timing Summary %s
20*route2J
6| WNS=-0.207 | TNS=-1.128 | WHS=0.052  | THS=0.000  |
2default:defaultZ35-20h px? 
?
dThe design did not meet timing requirements. Please run report_timing_summary for detailed reports.
39*routeZ35-39h px? 
?
?TNS is the sum of the worst slack violation on every endpoint in the design. Review the paths with the biggest WNS violations in the timing reports and modify your constraints or your design to improve both WNS and TNS.
96*routeZ35-253h px? 
G
2Phase 22 Post Router Timing | Checksum: 14f744d13
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:29 ; elapsed = 00:01:15 . Memory (MB): peak = 1830.625 ; gain = 191.2032default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:29 ; elapsed = 00:01:15 . Memory (MB): peak = 1830.625 ; gain = 191.2032default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
13022default:default2
82default:default2
92default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:01:312default:default2
00:01:162default:default2
1830.6252default:default2
191.2032default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0042default:default2
1830.6252default:default2
0.0002default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:032default:default2 
00:00:00.9282default:default2
1830.6252default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2z
fC:/Users/micha/Documents/Vivado_ws/DLIC_2020_hw5/DLIC_2020_hw5.runs/impl_1/design_1_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb -rpx design_1_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
xreport_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb -rpx design_1_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
jC:/Users/micha/Documents/Vivado_ws/DLIC_2020_hw5/DLIC_2020_hw5.runs/impl_1/design_1_wrapper_drc_routed.rptjC:/Users/micha/Documents/Vivado_ws/DLIC_2020_hw5/DLIC_2020_hw5.runs/impl_1/design_1_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file design_1_wrapper_methodology_drc_routed.rpt -pb design_1_wrapper_methodology_drc_routed.pb -rpx design_1_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file design_1_wrapper_methodology_drc_routed.rpt -pb design_1_wrapper_methodology_drc_routed.pb -rpx design_1_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
vC:/Users/micha/Documents/Vivado_ws/DLIC_2020_hw5/DLIC_2020_hw5.runs/impl_1/design_1_wrapper_methodology_drc_routed.rptvC:/Users/micha/Documents/Vivado_ws/DLIC_2020_hw5/DLIC_2020_hw5.runs/impl_1/design_1_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb -rpx design_1_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb -rpx design_1_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
13142default:default2
82default:default2
92default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2?
mExecuting : report_route_status -file design_1_wrapper_route_status.rpt -pb design_1_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file design_1_wrapper_timing_summary_routed.rpt -pb design_1_wrapper_timing_summary_routed.pb -rpx design_1_wrapper_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px? 
?
%s4*runtcl2m
YExecuting : report_incremental_reuse -file design_1_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2m
YExecuting : report_clock_utilization -file design_1_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file design_1_wrapper_bus_skew_routed.rpt -pb design_1_wrapper_bus_skew_routed.pb -rpx design_1_wrapper_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 


End Record