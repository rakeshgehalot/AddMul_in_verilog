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
module crisel(

x,y,cin,
cout,sumo
);

input [31:0]x;
input [31:0]y;
input cin;
output  cout;
output  [31:0]sumo;

wire [7:0]carc1,carc0;
wire [6:0]c;
wire [31:0] sumc1,sumc0;




fulladd ad1(x[3:0],y[3:0],sumc1[3:0],sumc0[3:0],carc1[0],carc0[0]);
mux m1(cin,sumc1[3:0],sumc0[3:0],carc1[0],carc0[0],sumo[3:0],c[0]);
fulladd ad2(x[7:4],y[7:4],sumc1[7:4],sumc0[7:4],carc1[1],carc0[1]);
mux m2(c[0],sumc1[7:4],sumc0[7:4],carc1[1],carc0[1],sumo[7:4],c[1]);


fulladd ad3(x[11:8],y[11:8],sumc1[11:8],sumc0[11:8],carc1[2],carc0[2]);
mux m3(c[1],sumc1[11:8],sumc0[11:8],carc1[2],carc0[2],sumo[11:8],c[2]);
fulladd ad4(x[15:12],y[15:12],sumc1[15:12],sumc0[15:12],carc1[3],carc0[3]);
mux m4(c[2],sumc1[15:12],sumc0[15:12],carc1[3],carc0[3],sumo[15:12],c[3]);


fulladd ad5(x[19:16],y[19:16],sumc1[19:16],sumc0[19:16],carc1[4],carc0[4]);
mux m5(c[3],sumc1[19:16],sumc0[19:16],carc1[4],carc0[4],sumo[19:16],c[4]);
fulladd ad6(x[23:20],y[23:20],sumc1[23:20],sumc0[23:20],carc1[5],carc0[5]);
mux m6(c[4],sumc1[23:20],sumc0[23:20],carc1[5],carc0[5],sumo[23:20],c[5]);


fulladd ad7(x[27:24],y[27:24],sumc1[27:24],sumc0[27:24],carc1[6],carc0[6]);
mux m7(c[5],sumc1[27:24],sumc0[27:24],carc1[6],carc0[6],sumo[27:24],c[6]);
fulladd ad8(x[31:28],y[31:28],sumc1[31:28],sumc0[31:28],carc1[7],carc0[7]);
mux m8(c[6],sumc1[31:28],sumc0[31:28],carc1[7],carc0[7],sumo[31:28],cout);

endmodule



module fulladd(
    input [3:0]a,
    input [3:0]b,
    
    output [3:0]sumc1,sumc0,
    output carc1,carc0
	 
    );
	 
assign {carc0,sumc0} = a+b;
assign {carc1,sumc1} = a+b+1;

//assign carc0 = ;	 
	// wire sumt;
	 //wire cart,ct;
//hadd h1(a,b,sumt,cart);
//hadd h2(sumt,c,sum1,ct);
//or a1(car1,cart,ct);

endmodule

module mux(sel, dc1,dc0,carc1,carc0,data,cout);

input sel;
input[3:0] dc1,dc0;
input carc0,carc1;
output cout;
output [3:0]data;

assign {cout,data} = (sel == 0)? {carc0,dc0} : {carc1,dc1};

endmodule


