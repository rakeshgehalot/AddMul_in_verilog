`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
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
module carsav(a,b,d,sum,cout
    );
input [2:0]a,b,d;
output [3:0]sum;
output cout;
wire [2:0]s,s1;
wire [2:0]c,c1;
wire [1:0]c2;

halfadd h1(a[0],b[0],s[0],c[0]);
halfadd h2(a[1],b[1],s[1],c[1]);
halfadd h3(a[2],b[2],s[2],c[2]);

halfadd h4(d[0],s[0],sum[0],c1[0]);
fulladd a1(d[1],s[1],c[0],s1[1],c1[1]);
fulladd a2(d[2],s[2],c[1],s1[2],c1[2]);

halfadd h5(s1[1],c1[0],sum[1],c2[0]);
fulladd a3(s1[2],c1[1],c2[0],sum[2],c2[1]);
fulladd a4(c[2],c1[2],c2[1],sum[3],cout);

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
