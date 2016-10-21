`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: XRD
// Engineer: Rakesh Gehalot
// 
// Create Date:    14:21:38 01/29/2016 
// Design Name: 
// Module Name:    carby 
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
module carby(a,b,cin,cout,sum
    );
	 

input [31:0]a,b;
input cin;
output cout;
output [31:0]sum;

wire [31:0]p,g;
wire [7:0]c1;
wire [6:0]c;

pg p1(a[3:0],b[3:0],p[3:0],g[3:0]);
fulladd a1(p[3:0],g[3:0],cin,sum[3:0],c1[0]);
mux m1(p[3:0],cin,c1[0],c[0]);

pg p2(a[7:4],b[7:4],p[7:4],g[7:4]);
fulladd a2(p[7:4],g[7:4],c[0],sum[7:4],c1[1]);
mux m2(p[7:4],c[0],c1[1],c[1]);

pg p3(a[11:8],b[11:8],p[11:8],g[11:8]);
fulladd a3(p[11:8],g[11:8],c[1],sum[11:8],c1[2]);
mux m3(p[11:8],c[1],c1[2],c[2]);

pg p4(a[15:12],b[15:12],p[15:12],g[15:12]);
fulladd a4(p[15:12],g[15:12],c[2],sum[15:12],c1[3]);
mux m4(p[15:12],c[2],c1[3],c[3]);


pg p5(a[19:16],b[19:16],p[19:16],g[19:16]);
fulladd a5(p[19:16],g[19:16],c[3],sum[19:16],c1[4]);
mux m5(p[19:16],c[3],c1[4],c[4]);


pg p6(a[23:20],b[23:20],p[23:20],g[23:20]);
fulladd a6(p[23:20],g[23:20],c[4],sum[23:20],c1[5]);
mux m6(p[23:20],c[4],c1[5],c[5]);


pg p7(a[27:24],b[27:24],p[27:24],g[27:24]);
fulladd a7(p[27:24],g[27:24],c[5],sum[27:24],c1[6]);
mux m7(p[27:24],c[5],c1[6],c[6]);

pg p8(a[31:28],b[31:28],p[31:28],g[31:28]);
fulladd a8(p[31:28],g[31:28],c[6],sum[31:28],c1[7]);
mux m8(p[31:28],c[6],c1[7],cout);


endmodule


module pg(a,b,p,g);
input [3:0]a,b;
output [3:0]p,g;

assign p[0] = a[0]^b[0] ;
assign p[1] = a[1]^b[1] ;
assign p[2] = a[2]^b[2] ;
assign p[3] = a[3]^b[3] ;

assign g[0] = a[0]&b[0] ;
assign g[1] = a[1]&b[1] ;
assign g[2] = a[2]&b[2] ;
assign g[3] = a[3]&b[3] ;

endmodule




module fulladd(
    input [3:0]p,
    input [3:0]g,
    input cin,
    output [3:0]sumo,
    output cou
    );
	
wire [2:0] c;
	
fulladd1 a1(p[0],g[0],cin,sumo[0],c[0]);
fulladd1 a2(p[1],g[1],c[0],sumo[1],c[1]);
fulladd1 a3(p[2],g[2],c[1],sumo[2],c[2]);
fulladd1 a4(p[3],g[3],c[2],sumo[3],cou);

endmodule

module fulladd1( p ,g ,cin ,sum ,cout );
output sum ;
output cout;
input p ;
input g ;
input cin ;


assign sum = p^cin ;
assign cout = g|(p&cin);

endmodule


module mux(p, c,c1,cout);
input [3:0]p;
input c,c1;
output cout;


assign cout = (p == 4'b1111)? c : c1;

endmodule
