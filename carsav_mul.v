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
module carsavmul(x,y,mul
    );
input [3:0]x,y;
output [7:0]mul;
wire [2:0]a;
wire [3:0]b,d,e;
wire [2:0]c,c1,c2;
wire [2:0]s,s1,s2;
wire [1:0]c3;


assign a[0] =x[1]&y[0];
assign a[1] =x[2]&y[0];
assign a[2] =x[3]&y[0];
assign mul[0] =x[0]&y[0];

assign b[0] =x[0]&y[1];
assign b[1] =x[1]&y[1];
assign b[2] =x[2]&y[1];
assign b[3] =x[3]&y[1];

halfadd h1(a[0],b[0],mul[1],c[0]);
halfadd h2(a[1],b[1],s[0],c[1]);
halfadd h3(a[2],b[2],s[1],c[2]);
assign s[2]=b[3];

assign d[0] =x[0]&y[2];
assign d[1] =x[1]&y[2];
assign d[2] =x[2]&y[2];
assign d[3] =x[3]&y[2];

fulladd a1(d[0],s[0],c[0],mul[2],c1[0]);
fulladd a2(d[1],s[1],c[1],s1[0],c1[1]);
fulladd a3(d[2],s[2],c[2],s1[1],c1[2]);
assign s1[2]=d[3];

assign e[0] =x[0]&y[3];
assign e[1] =x[1]&y[3];
assign e[2] =x[2]&y[3];
assign e[3] =x[3]&y[3];

fulladd a4(e[0],s1[0],c1[0],mul[3],c2[0]);
fulladd a5(e[1],s1[1],c1[1],s2[0],c2[1]);
fulladd a6(e[2],s1[2],c1[2],s2[1],c2[2]);
assign s2[2]=e[3];

halfadd h7(c2[0],s2[0],mul[4],c3[0]);
fulladd a7(c2[1],s2[1],c3[0],mul[5],c3[1]);
fulladd a8(c2[2],s2[2],c3[1],mul[6],mul[7]);

endmodule


module fulladd(a,b,c,sum,carry);
output sum;
output carry;
input a;
input b;
input c;
assign sum =a^b^c;
assign carry=(a&b)|(b&c)|(c&a);
endmodule

module halfadd(a,b,sum,carry);
output sum;
output carry;
input a;
input b;
assign sum = a^b;
assign carry = a&b;
endmodule
