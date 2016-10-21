`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: xrd
// Engineer: Rakesh gehalot
// 
// Create Date:    20:12:55 01/31/2016 
// Design Name: 
// Module Name:    carsav 
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
module arrmul(a,b,mul
    );
input [3:0]a,b;
output [7:0]mul;

wire [3:0]x;
wire [2:0]x1,x2;
wire [3:0]y,y1,y2;
wire [3:0]c,c1;
wire [2:0]c2;

assign x[0] =a[0]&b[0];
assign x[1] =a[1]&b[0];
assign x[2] =a[2]&b[0];
assign x[3] =a[3]&b[0];
assign mul[0]=a[0]&b[0];

assign y[0] =a[0]&b[1];
assign y[1] =a[1]&b[1];
assign y[2] =a[2]&b[1];
assign y[3] =a[3]&b[1];


halfadd h1(x[1],y[0],mul[1],c[0]);
fulladd a1(x[2],y[1],c[0],x1[0],c[1]);
fulladd a2(x[3],y[2],c[1],x1[1],c[2]);
halfadd h2(c[2],y[3],x1[2],c[3]);

assign y1[0] =a[0]&b[2];
assign y1[1] =a[1]&b[2];
assign y1[2] =a[2]&b[2];
assign y1[3] =a[3]&b[2];

halfadd h3(x1[0],y1[0],mul[2],c1[0]);
fulladd a3(x1[1],y1[1],c1[0],x2[0],c1[1]);
fulladd a4(x1[2],y1[2],c1[1],x2[1],c1[2]);
fulladd a5(c[3],y1[3],c1[2],x2[2],c1[3]);

assign y2[0] =a[0]&b[3];
assign y2[1] =a[1]&b[3];
assign y2[2] =a[2]&b[3];
assign y2[3] =a[3]&b[3];

halfadd h4(x2[0],y2[0],mul[3],c2[0]);
fulladd a6(x2[1],y2[1],c2[0],mul[4],c2[1]);
fulladd a7(x2[2],y2[2],c2[1],mul[5],c2[2]);
fulladd a8(c1[3],y2[3],c2[2],mul[6],mul[7]);



endmodule


module fulladd( a ,b ,c ,sum ,carry );

output sum ;
output carry ;

input a ;
input b ;
input c ;

assign sum = a ^ b ^ c;
assign carry = (a&b) | (b&c) | (c&a);

endmodule

module halfadd(a,b,sum,carry);
output sum ;
output carry ;
input a ;
input b ;
assign sum = a^b;
assign carry = a&b;
endmodule
