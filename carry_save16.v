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
module carsav16(a,b,d,e,sum,cout
    );
input [15:0]a,b,d,e;
output [17:0]sum;
output cout;
wire [15:0]s,s1,s2;
wire [15:0]c,c1,c2,c3;

halfadd h1(a[0],b[0],s[0],c[0]);
halfadd h2(a[1],b[1],s[1],c[1]);
halfadd h3(a[2],b[2],s[2],c[2]);
halfadd h4(a[3],b[3],s[3],c[3]);
halfadd h5(a[4],b[4],s[4],c[4]);
halfadd h6(a[5],b[5],s[5],c[5]);
halfadd h7(a[6],b[6],s[6],c[6]);
halfadd h8(a[7],b[7],s[7],c[7]);
halfadd ha1(a[8],b[8],s[8],c[8]);
halfadd ha2(a[9],b[9],s[9],c[9]);
halfadd ha3(a[10],b[10],s[10],c[10]);
halfadd ha4(a[11],b[11],s[11],c[11]);
halfadd ha5(a[12],b[12],s[12],c[12]);
halfadd ha6(a[13],b[13],s[13],c[13]);
halfadd ha7(a[14],b[14],s[14],c[14]);
halfadd ha8(a[15],b[15],s[15],c[15]);



halfadd ha9(d[0],s[0],s1[0],c1[0]);
fulladd a1(d[1],s[1],c[0],s1[1],c1[1]);
fulladd a3(d[2],s[2],c[1],s1[2],c1[2]);
fulladd a4(d[3],s[3],c[2],s1[3],c1[3]);
fulladd a5(d[4],s[4],c[3],s1[4],c1[4]);
fulladd a6(d[5],s[5],c[4],s1[5],c1[5]);
fulladd a7(d[6],s[6],c[5],s1[6],c1[6]);
fulladd a8(d[7],s[7],c[6],s1[7],c1[7]);
fulladd aa1(d[8],s[8],c[7],s1[8],c1[8]);
fulladd aa3(d[9],s[9],c[8],s1[9],c1[9]);
fulladd aa4(d[10],s[10],c[9],s1[10],c1[10]);
fulladd aa5(d[11],s[11],c[10],s1[11],c1[11]);
fulladd aa6(d[12],s[12],c[11],s1[12],c1[12]);
fulladd aa7(d[13],s[13],c[12],s1[13],c1[13]);
fulladd aa8(d[14],s[14],c[13],s1[14],c1[14]);
fulladd aa9(d[15],s[15],c[14],s1[15],c1[15]);


halfadd h10(e[0],s1[0],s2[0],c2[0]);
assign sum[0]=s2[0];
fulladd a9(e[1],s1[1],c1[0],s2[1],c2[1]);
fulladd a10(e[2],s1[2],c1[1],s2[2],c2[2]);
fulladd a11(e[3],s1[3],c1[2],s2[3],c2[3]);
fulladd a12(e[4],s1[4],c1[3],s2[4],c2[4]);
fulladd a13(e[5],s1[5],c1[4],s2[5],c2[5]);
fulladd a14(e[6],s1[6],c1[5],s2[6],c2[6]);
fulladd a15(e[7],s1[7],c1[6],s2[7],c2[7]);
fulladd aa19(e[8],s1[8],c1[7],s2[8],c2[8]);
fulladd aa10(e[9],s1[9],c1[8],s2[9],c2[9]);
fulladd aa11(e[10],s1[10],c1[9],s2[10],c2[10]);
fulladd aa12(e[11],s1[11],c1[10],s2[11],c2[11]);
fulladd aa13(e[12],s1[12],c1[11],s2[12],c2[12]);
fulladd aa14(e[13],s1[13],c1[12],s2[13],c2[13]);
fulladd aa15(e[14],s1[14],c1[13],s2[14],c2[14]);
fulladd aa115(e[15],s1[15],c1[14],s2[15],c2[15]);

halfadd h11(s2[1],c2[0],sum[1],c3[0]);
fulladd a16(s2[2],c2[1],c3[0],sum[2],c3[1]);
fulladd a19(s2[3],c2[2],c3[1],sum[3],c3[2]);
fulladd a20(s2[4],c2[3],c3[2],sum[4],c3[3]);
fulladd a21(s2[5],c2[4],c3[3],sum[5],c3[4]);
fulladd a22(s2[6],c2[5],c3[4],sum[6],c3[5]);
fulladd a23(s2[7],c2[6],c3[5],sum[7],c3[6]);
fulladd aa16(s2[8],c2[7],c3[6],sum[8],c3[7]);
fulladd aa119(s2[9],c2[8],c3[7],sum[9],c3[8]);
fulladd aa20(s2[10],c2[9],c3[8],sum[10],c3[9]);
fulladd aa21(s2[11],c2[10],c3[9],sum[11],c3[10]);
fulladd aa22(s2[12],c2[11],c3[10],sum[12],c3[11]);
fulladd aa23(s2[13],c2[12],c3[11],sum[13],c3[12]);
fulladd aa123(s2[14],c2[13],c3[12],sum[14],c3[13]);
fulladd a26(s2[15],c2[14],c3[13],sum[15],c3[14]);
fulladd a24(c1[15],c2[15],c3[14],sum[16],c3[15]);
halfadd h12(c[15],c3[15],sum[17],cout);

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
