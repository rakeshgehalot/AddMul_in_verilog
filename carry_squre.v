`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: XRD
// Engineer: Rakesh gehalot
// 
// Create Date:    22:35:42 01/24/2016 
// Design Name: 
// Module Name:    crisel 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module casqu(

x,y,cin,
cout,sumo
);

input [31:0]x;
input [31:0]y;
input cin;
output  cout;
output  [31:0]sumo;

wire [6:0]carc1,carc0;
wire [5:0]c;
wire [31:0] sumc1,sumc0;


fulladd2 ad1(x[1:0],y[1:0],sumc1[1:0],sumc0[1:0],carc1[0],carc0[0]);
mux2 m1(cin,sumc1[1:0],sumc0[1:0],carc1[0],carc0[0],sumo[1:0],c[0]);

fulladd3 ad2(x[4:2],y[4:2],sumc1[4:2],sumc0[4:2],carc1[1],carc0[1]);
mux3 m2(c[0],sumc1[4:2],sumc0[4:2],carc1[1],carc0[1],sumo[4:2],c[1]);


fulladd4 ad3(x[8:5],y[8:5],sumc1[8:5],sumc0[8:5],carc1[2],carc0[2]);
mux4 m3(c[1],sumc1[8:5],sumc0[8:5],carc1[2],carc0[2],sumo[8:5],c[2]);

fulladd5 ad4(x[13:9],y[13:9],sumc1[13:9],sumc0[13:9],carc1[3],carc0[3]);
mux5 m4(c[2],sumc1[13:9],sumc0[13:9],carc1[3],carc0[3],sumo[13:9],c[3]);


fulladd6 ad5(x[19:14],y[19:14],sumc1[19:14],sumc0[19:14],carc1[4],carc0[4]);
mux6 m5(c[3],sumc1[19:14],sumc0[19:14],carc1[4],carc0[4],sumo[19:14],c[4]);

fulladd7 ad6(x[26:20],y[26:20],sumc1[26:20],sumc0[26:20],carc1[5],carc0[5]);
mux7 m6(c[4],sumc1[26:20],sumc0[26:20],carc1[5],carc0[5],sumo[26:20],c[5]);


fulladd5 ad7(x[31:27],y[31:27],sumc1[31:27],sumc0[31:27],carc1[6],carc0[6]);
mux5 m7(c[5],sumc1[31:27],sumc0[31:27],carc1[6],carc0[6],sumo[31:27],cout);
endmodule




module fulladd2(
    input [1:0]a,
    input [1:0]b,
    output [1:0]sumc1,sumc0,
    output carc1,carc0
    );
assign {carc0,sumc0} = a+b;
assign {carc1,sumc1} = a+b+1;
endmodule

module fulladd3(
    input [2:0]a,
    input [2:0]b,
    output [2:0]sumc1,sumc0,
    output carc1,carc0
    );
assign {carc0,sumc0} = a+b;
assign {carc1,sumc1} = a+b+1;
endmodule

module fulladd4(
    input [3:0]a,
    input [3:0]b,
    output [3:0]sumc1,sumc0,
    output carc1,carc0
    );
assign {carc0,sumc0} = a+b;
assign {carc1,sumc1} = a+b+1;
endmodule

module fulladd5(
    input [4:0]a,
    input [4:0]b,
    output [4:0]sumc1,sumc0,
    output carc1,carc0
    );
assign {carc0,sumc0} = a+b;
assign {carc1,sumc1} = a+b+1;
endmodule

module fulladd6(
    input [5:0]a,
    input [5:0]b,
    output [5:0]sumc1,sumc0,
    output carc1,carc0
    );
assign {carc0,sumc0} = a+b;
assign {carc1,sumc1} = a+b+1;
endmodule

module fulladd7(
    input [6:0]a,
    input [6:0]b,
    output [6:0]sumc1,sumc0,
    output carc1,carc0
    );
assign {carc0,sumc0} = a+b;
assign {carc1,sumc1} = a+b+1;
endmodule






module mux2(sel, dc1,dc0,carc1,carc0,data,cout);
input carc0,carc1,sel;
input[1:0] dc1,dc0;
output [1:0]data;
output cout;
assign {cout,data} = (sel == 0)? {carc0,dc0} : {carc1,dc1};
endmodule

module mux3(sel, dc1,dc0,carc1,carc0,data,cout);
input carc0,carc1,sel;
input[2:0] dc1,dc0;
output [2:0]data;
output cout;
assign {cout,data} = (sel == 0)? {carc0,dc0} : {carc1,dc1};
endmodule

module mux4(sel, dc1,dc0,carc1,carc0,data,cout);
input carc0,carc1,sel;
input[3:0] dc1,dc0;
output cout;
output [3:0]data;
assign {cout,data} = (sel == 0)? {carc0,dc0} : {carc1,dc1};
endmodule

module mux5(sel, dc1,dc0,carc1,carc0,data,cout);
input carc0,carc1,sel;
input[4:0] dc1,dc0;
output [4:0]data;
output cout;
assign {cout,data} = (sel == 0)? {carc0,dc0} : {carc1,dc1};
endmodule

module mux6(sel, dc1,dc0,carc1,carc0,data,cout);
input carc0,carc1,sel;
input[5:0] dc1,dc0;
output [5:0]data;
output cout;
assign {cout,data} = (sel == 0)? {carc0,dc0} : {carc1,dc1};
endmodule

module mux7(sel, dc1,dc0,carc1,carc0,data,cout);
input carc0,carc1,sel;
input[6:0] dc1,dc0;
output [6:0]data;
output cout;
assign {cout,data} = (sel == 0)? {carc0,dc0} : {carc1,dc1};
endmodule
