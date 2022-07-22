module counter_on_vga(
    input clk,
	 input clear_bar,
    output Hsynq,
    output Vsynq,
    output reg [3:0] Red,
    output reg [3:0] Green,
    output reg [3:0] Blue
    );

wire clk_25M;
wire enable_V_Counter;
wire [15:0] H_Count_Value;
wire [15:0] V_Count_Value;
wire [448:463] char_1 [259:290]; // 32 values each of 16 bit
wire [464:479] char_2 [259:290]; // 32 values each of 16 bit
wire [7:0] w_ascii_char_1, w_ascii_char_2;
wire [3:0] count_val_1,count_val_2;
wire clk_1sec;
reg [7:0] r_ascii_char_1,r_ascii_char_2;
//assign w_ascii = 8'h30;
	
clk_25Mhz VGA_Clock_gen (clk, clk_25M);
horizontal_counter VGA_Horiz (clk_25M, enable_V_Counter, H_Count_Value);
vertical_counter VGA_Verti (clk_25M, enable_V_Counter, V_Count_Value);
clk_conversion_100Mhzto1Hz clock_1second (clear_bar,clk,clk_1sec);
counter counting_upto_60 (clk_1sec,count_val_1,count_val_2);
always@(posedge clk)
begin

case (count_val_1)

4'd0 : r_ascii_char_1 = 8'h30;
4'd1 : r_ascii_char_1 = 8'h31;
4'd2 : r_ascii_char_1 = 8'h32;
4'd3 : r_ascii_char_1 = 8'h33;
4'd4 : r_ascii_char_1 = 8'h34;
4'd5 : r_ascii_char_1 = 8'h35;
4'd6 : r_ascii_char_1 = 8'h36;
4'd7 : r_ascii_char_1 = 8'h37;
4'd8 : r_ascii_char_1 = 8'h38;
4'd9 : r_ascii_char_1 = 8'h39;

endcase

case (count_val_2)

4'd0 : r_ascii_char_2 = 8'h30;
4'd1 : r_ascii_char_2 = 8'h31;
4'd2 : r_ascii_char_2 = 8'h32;
4'd3 : r_ascii_char_2 = 8'h33;
4'd4 : r_ascii_char_2 = 8'h34;
4'd5 : r_ascii_char_2 = 8'h35;
4'd6 : r_ascii_char_2 = 8'h36;
4'd7 : r_ascii_char_2 = 8'h37;
4'd8 : r_ascii_char_2 = 8'h38;
4'd9 : r_ascii_char_2 = 8'h39;

endcase

end

assign w_ascii_char_1 = r_ascii_char_1;

assign w_ascii_char_2 = r_ascii_char_2;

character_ROM32x16 crom_char1 (clk,w_ascii_char_1,char_1[259],char_1[260],char_1[261],char_1[262],
                               char_1[263],char_1[264],char_1[265],
                               char_1[266],char_1[267],char_1[268],char_1[269],char_1[270],
										 char_1[271],char_1[272],char_1[273],char_1[274],char_1[275],
										 char_1[276],char_1[277],char_1[278],char_1[279],char_1[280],
										 char_1[281],char_1[282],char_1[283],char_1[284],char_1[285],
										 char_1[286],char_1[287],char_1[288],char_1[289],char_1[290]);

character_ROM32x16 crom_char2 (clk,w_ascii_char_2,char_2[259],char_2[260],char_2[261],char_2[262],
                               char_2[263],char_2[264],char_2[265],
                               char_2[266],char_2[267],char_2[268],char_2[269],char_2[270],
										 char_2[271],char_2[272],char_2[273],char_2[274],char_2[275],
										 char_2[276],char_2[277],char_2[278],char_2[279],char_2[280],
										 char_2[281],char_2[282],char_2[283],char_2[284],char_2[285],
										 char_2[286],char_2[287],char_2[288],char_2[289],char_2[290]);

assign Hsynq = (H_Count_Value < 96) ? 1'b1:1'b0;
assign Vsynq = (V_Count_Value < 2) ? 1'b1:1'b0;

always@(posedge clk)
begin

Red[0] = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ?
             ((H_Count_Value < 480 && H_Count_Value > 447 && V_Count_Value < 291 && V_Count_Value > 258) ? 
				 ((H_Count_Value < 464 && H_Count_Value > 447)? char_1[V_Count_Value][H_Count_Value]: char_2[V_Count_Value][H_Count_Value]):1'b1):1'b0;
Red[1] = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ?
             ((H_Count_Value < 480 && H_Count_Value > 447 && V_Count_Value < 291 && V_Count_Value > 258) ? 
				 ((H_Count_Value < 464 && H_Count_Value > 447)? char_1[V_Count_Value][H_Count_Value]: char_2[V_Count_Value][H_Count_Value]):1'b1):1'b0;
Red[2] = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ?
             ((H_Count_Value < 480 && H_Count_Value > 447 && V_Count_Value < 291 && V_Count_Value > 258) ? 
				 ((H_Count_Value < 464 && H_Count_Value > 447)? char_1[V_Count_Value][H_Count_Value]: char_2[V_Count_Value][H_Count_Value]):1'b1):1'b0;
Red[3] = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ?
             ((H_Count_Value < 480 && H_Count_Value > 447 && V_Count_Value < 291 && V_Count_Value > 258) ? 
				 ((H_Count_Value < 464 && H_Count_Value > 447)? char_1[V_Count_Value][H_Count_Value]: char_2[V_Count_Value][H_Count_Value]):1'b1):1'b0;

Green[0] = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ?
             ((H_Count_Value < 480 && H_Count_Value > 447 && V_Count_Value < 291 && V_Count_Value > 258) ? 
				 ((H_Count_Value < 464 && H_Count_Value > 447)? char_1[V_Count_Value][H_Count_Value]: char_2[V_Count_Value][H_Count_Value]):1'b1):1'b0;
Green[1] = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ?
             ((H_Count_Value < 480 && H_Count_Value > 447 && V_Count_Value < 291 && V_Count_Value > 258) ? 
				 ((H_Count_Value < 464 && H_Count_Value > 447)? char_1[V_Count_Value][H_Count_Value]: char_2[V_Count_Value][H_Count_Value]):1'b1):1'b0;
Green[2] = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ?
             ((H_Count_Value < 480 && H_Count_Value > 447 && V_Count_Value < 291 && V_Count_Value > 258) ? 
				 ((H_Count_Value < 464 && H_Count_Value > 447)? char_1[V_Count_Value][H_Count_Value]: char_2[V_Count_Value][H_Count_Value]):1'b1):1'b0;
Green[3] = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ?
             ((H_Count_Value < 480 && H_Count_Value > 447 && V_Count_Value < 291 && V_Count_Value > 258) ? 
				 ((H_Count_Value < 464 && H_Count_Value > 447)? char_1[V_Count_Value][H_Count_Value]: char_2[V_Count_Value][H_Count_Value]):1'b1):1'b0;

Blue[0] = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ?
             ((H_Count_Value < 480 && H_Count_Value > 447 && V_Count_Value < 291 && V_Count_Value > 258) ? 
				 ((H_Count_Value < 464 && H_Count_Value > 447)? char_1[V_Count_Value][H_Count_Value]: char_2[V_Count_Value][H_Count_Value]):1'b1):1'b0;
Blue[1] = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ?
             ((H_Count_Value < 480 && H_Count_Value > 447 && V_Count_Value < 291 && V_Count_Value > 258) ? 
				 ((H_Count_Value < 464 && H_Count_Value > 447)? char_1[V_Count_Value][H_Count_Value]: char_2[V_Count_Value][H_Count_Value]):1'b1):1'b0;
Blue[2] = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ?
             ((H_Count_Value < 480 && H_Count_Value > 447 && V_Count_Value < 291 && V_Count_Value > 258) ? 
				 ((H_Count_Value < 464 && H_Count_Value > 447)? char_1[V_Count_Value][H_Count_Value]: char_2[V_Count_Value][H_Count_Value]):1'b1):1'b0;
Blue[3] = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ?
             ((H_Count_Value < 480 && H_Count_Value > 447 && V_Count_Value < 291 && V_Count_Value > 258) ? 
				 ((H_Count_Value < 464 && H_Count_Value > 447)? char_1[V_Count_Value][H_Count_Value]: char_2[V_Count_Value][H_Count_Value]):1'b1):1'b0;


end

endmodule
