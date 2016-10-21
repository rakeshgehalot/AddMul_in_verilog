`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: XRD
// Engineer: Rakesh gehalot
// 
// Create Date:    12:18:18 01/30/2016 
// Design Name: 
// Module Name:    calookah 
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
module calookah(a,b,cin,cout,sum
    );
	
input [31:0]a,b;
input cin;
output cout;
output [31:0]sum;

wire [31:0]p,g;
wire [30:0]c;

pg p1(a[0],b[0],p[0],g[0]);
co c0(p[0],cin,g[0],c[0]);
fulladd a1(p[0],cin,sum[0]);

pg p2(a[1],b[1],p[1],g[1]);
co c1(p[1],c[0],g[1],c[1]);
fulladd a2(p[1],c[0],sum[1]);

pg p3(a[2],b[2],p[2],g[2]);
co c2(p[2],c[1],g[2],c[2]);
fulladd a3(p[2],c[1],sum[2]);

pg p4(a[3],b[3],p[3],g[3]);
co c3(p[3],c[2],g[3],c[3]);
fulladd a4(p[3],c[2],sum[3]);

pg p5(a[4],b[4],p[4],g[4]);
co c4(p[4],c[3],g[4],c[4]);
fulladd a5(p[4],c[3],sum[4]);

pg p6(a[5],b[5],p[5],g[5]);
co c5(p[5],c[4],g[5],c[5]);
fulladd a6(p[5],c[4],sum[5]);

pg p7(a[6],b[6],p[6],g[6]);
co c6(p[6],c[5],g[6],c[6]);
fulladd a7(p[6],c[5],sum[6]);

pg p8(a[7],b[7],p[7],g[7]);
co c7(p[7],c[6],g[7],c[7]);
fulladd a8(p[7],c[6],sum[7]);

pg p9(a[8],b[8],p[8],g[8]);
co c8(p[8],c[7],g[8],c[8]);
fulladd a9(p[8],c[7],sum[8]);

pg p10(a[9],b[9],p[9],g[9]);
co c9(p[9],c[8],g[9],c[9]);
fulladd a10(p[9],c[8],sum[9]);

pg p11(a[10],b[10],p[10],g[10]);
co c10(p[10],c[9],g[10],c[10]);
fulladd a12(p[10],c[9],sum[10]);

pg p13(a[11],b[11],p[11],g[11]);
co c11(p[11],c[10],g[11],c[11]);
fulladd a13(p[11],c[10],sum[11]);

pg p14(a[12],b[12],p[12],g[12]);
co c12(p[12],c[11],g[12],c[12]);
fulladd a14(p[12],c[11],sum[12]);

pg p15(a[13],b[13],p[13],g[13]);
co c13(p[13],c[12],g[13],c[13]);
fulladd a15(p[13],c[12],sum[13]);

pg p16(a[14],b[14],p[14],g[14]);
co c14(p[14],c[13],g[14],c[14]);
fulladd a16(p[14],c[13],sum[14]);

pg p17(a[15],b[15],p[15],g[15]);
co c15(p[15],c[14],g[15],c[15]);
fulladd a17(p[15],c[14],sum[15]);

pg p18(a[16],b[16],p[16],g[16]);
co c16(p[16],c[15],g[16],c[16]);
fulladd a18(p[16],c[15],sum[16]);

pg p19(a[17],b[17],p[17],g[17]);
co c17(p[17],c[16],g[17],c[17]);
fulladd a19(p[17],c[16],sum[17]);

pg p20(a[18],b[18],p[18],g[18]);
co c18(p[18],c[17],g[18],c[18]);
fulladd a20(p[18],c[17],sum[18]);

pg p21(a[19],b[19],p[19],g[19]);
co c19(p[19],c[18],g[19],c[19]);
fulladd a21(p[19],c[18],sum[19]);

pg p22(a[20],b[20],p[20],g[20]);
co c20(p[20],c[19],g[20],c[20]);
fulladd a22(p[20],c[19],sum[20]);

pg p23(a[21],b[21],p[21],g[21]);
co c21(p[21],c[20],g[21],c[21]);
fulladd a23(p[21],c[20],sum[21]);

pg p24(a[22],b[22],p[22],g[22]);
co c22(p[22],c[21],g[22],c[22]);
fulladd a24(p[22],c[21],sum[22]);

pg p25(a[23],b[23],p[23],g[23]);
co c23(p[23],c[22],g[23],c[23]);
fulladd a25(p[23],c[22],sum[23]);

pg p26(a[24],b[24],p[24],g[24]);
co c24(p[24],c[23],g[24],c[24]);
fulladd a26(p[24],c[23],sum[24]);

pg p27(a[25],b[25],p[25],g[25]);
co c25(p[25],c[24],g[25],c[25]);
fulladd a27(p[25],c[24],sum[25]);

pg p28(a[26],b[26],p[26],g[26]);
co c26(p[26],c[25],g[26],c[26]);
fulladd a28(p[26],c[25],sum[26]);

pg p29(a[27],b[27],p[27],g[27]);
co c27(p[27],c[26],g[27],c[27]);
fulladd a29(p[27],c[26],sum[27]);

pg p30(a[28],b[28],p[28],g[28]);
co c28(p[28],c[27],g[28],c[28]);
fulladd a30(p[28],c[27],sum[28]);

pg p31(a[29],b[29],p[29],g[29]);
co c29(p[29],c[28],g[29],c[29]);
fulladd a31(p[29],c[28],sum[29]);

pg p32(a[30],b[30],p[30],g[30]);
co c30(p[30],c[29],g[30],c[30]);
fulladd a32(p[30],c[29],sum[30]);

pg p33(a[31],b[31],p[31],g[31]);
co c31(p[31],c[30],g[31],cout);
fulladd a34(p[31],c[30],sum[31]);

endmodule





module pg(a,b,p,g);
input a,b;
output p,g;
assign p = a^b ;
assign g = a&b ;
endmodule

module co(p,c,g,cout);
input p,g,c;
output cout;
assign cout= (p&c)|g;
endmodule

module fulladd(p,cin,sum);
output sum ;
input p ;
input cin ;
assign sum = p^cin ;
endmodule
