`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:57:27 09/06/2021 
// Design Name: 
// Module Name:    Digital_Clock 
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
module Digital_Clock(
    input clk,
    input rst,
    output reg [6:0] SSD,
    output reg [7:0] EN
    );

wire clk1hz;	 
reg [3:0]SS0,SS1,SS2,SS3,SS4,SS5,AD;
reg [3:0]S0,S1,S2,S3,S4,S5;
wire [6:0]SSD0,SSD1,SSD2,SSD3,SSD4,SSD5,AS;
reg [6:0]SD0,SD1,SD2,SD3,SD4,SD5;

//SevenSegmentDecoder af(AD,AS);

clk_conversion_100Mhzto1Hz x6(!rst, clk,clk1hz);

//assign AD = 4'd4;
always@(posedge clk)
begin

if (rst == 1'd1)
begin
S0 <= 4'd0;
S1 <= 4'd0;
S2 <= 4'd0;
S3 <= 4'd0;
S4 <= 4'd0;
S5 <= 4'd0;
end
end
always@(posedge clk1hz)
begin

if (rst == 1'd1)
begin
S0 <= 4'd0;
S1 <= 4'd0;
S2 <= 4'd0;
S3 <= 4'd0;
S4 <= 4'd0;
S5 <= 4'd0;
end

else 
begin
S0 <= S0+1;
		if (S0 == 4'd9)
		begin
		S0 <= 4'd0;
		S1 <= S1+1;
		
		if (S1 == 4'd5)
		begin
		S1 <= 4'd0;
		S2 <= S2+1;
		
		if (S2 == 4'd9)
		begin
		S2 <= 4'd0;
		S3 <= S3+1;
		
		if (S3 == 4'd5)
		begin
		S3 <= 4'd0;
		S4 <= S4+1;
		
		if ((S4 == 4'd3) && (S5 ==4'd2)) 
		begin
		S4 <= 4'd0;
		S5 <= 4'd0;
		end
		
		if (S4 == 4'd9)
		begin
		S4 <= 4'd0;
		S5 <= S5+1;
		
		if (S4 == 4'd2)
		begin
		S5 <= 4'd0;
		
		end 
		end
		end 
		end 
		end 
		end 
		
end
end


//assign SSD0 = SD0;
//assign SSD1 = SD1;
//assign SSD2 = SD2;
//assign SSD3 = SD3;
//assign SSD4 = SD4;
//assign SSD5 = SD5;

//assign SS0 = S0;
//assign SS1 = S1;
//assign SS2 = S2;
//assign SS3 = S3;
//assign SS4 = S4;
//assign SS5 = S5;

SevenSegmentDecoder x0(S0,SSD0);
SevenSegmentDecoder x1(S1,SSD1);
SevenSegmentDecoder x2(SS2,SSD2);
SevenSegmentDecoder x3(S3,SSD3);
SevenSegmentDecoder x4(S4,SSD4);
SevenSegmentDecoder x5(S5,SSD5);
//enable shifting
//always(posedge clk)




endmodule
