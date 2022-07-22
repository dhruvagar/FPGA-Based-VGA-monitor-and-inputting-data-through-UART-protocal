
module new_character_generator(
    input clk,
	// input i_UART_RX,
	 //output o_UART_TX,
    output Hsynq,
    output Vsynq,
    output reg [3:0] Red,
    output reg [3:0] Green,
    output reg [3:0] Blue
    );

wire clk_25M;
wire enable_V_Counter;//, w_RX_DV, w_TX_Active, w_TX_Serial;
wire [15:0] H_Count_Value;
wire [15:0] V_Count_Value;
//wire [3:0] w_red, w_green, w_blue;
//wire [7:0] w_RX_Byte;
wire [448:463] char_1 [259:290]; // 32 values each of 16 bit
wire [464:479] char_2 [259:290]; // 32 values each of 16 bit
//reg [448:463] reg_char_1 [259:290];
//reg [464:479] reg_char_2 [259:290];
//reg [2:0] color_val=3'b000;
//reg [7:0] reg_ascii;
wire [7:0] w_ascii;

//assign reg_ascii = 8'h30;
assign w_ascii = 8'h30;

//UART_RX #(.CLKS_PER_BIT(868)) receiver
//  (.i_Clock(clk),
//   .i_RX_Serial(i_UART_RX),
//   .o_RX_DV(w_RX_DV),
//   .o_RX_Byte(w_RX_Byte));
	
//UART_TX #(.CLKS_PER_BIT(868)) transmitter
//  (.i_Clock(clk),
//   .i_TX_DV(w_RX_DV),       
//   .i_TX_Byte(w_RX_Byte),  
//   .o_TX_Active(w_TX_Active),
//   .o_TX_Serial(w_TX_Serial),
//   .o_TX_Done());
	
clock_25MHz VGA_Clock_gen (clk, clk_25M);
horizontal_counter VGA_Horiz (clk_25M, enable_V_Counter, H_Count_Value);
vertical_counter VGA_Verti (clk_25M, enable_V_Counter, V_Count_Value);
character_ROM32x16 crom_char1 (clk,w_ascii,char_1[259],char_1[260],char_1[261],char_1[262],
                               char_1[263],char_1[264],char_1[265],
                               char_1[266],char_1[267],char_1[268],char_1[269],char_1[270],
										 char_1[271],char_1[272],char_1[273],char_1[274],char_1[275],
										 char_1[276],char_1[277],char_1[278],char_1[279],char_1[280],
										 char_1[281],char_1[282],char_1[283],char_1[284],char_1[285],
										 char_1[286],char_1[287],char_1[288],char_1[289],char_1[290]);

character_ROM32x16 crom_char2 (clk,w_ascii,char_2[259],char_2[260],char_2[261],char_2[262],
                               char_2[263],char_2[264],char_2[265],
                               char_2[266],char_2[267],char_2[268],char_2[269],char_2[270],
										 char_2[271],char_2[272],char_2[273],char_2[274],char_2[275],
										 char_2[276],char_2[277],char_2[278],char_2[279],char_2[280],
										 char_2[281],char_2[282],char_2[283],char_2[284],char_2[285],
										 char_2[286],char_2[287],char_2[288],char_2[289],char_2[290]);

//assign reg_char_1[259] = char_1[259];
//assign reg_char_1[260] = char_1[260];
//assign reg_char_1[261] = char_1[261];
//assign reg_char_1[262] = char_1[262];
//assign reg_char_1[263] = char_1[263];
//assign reg_char_1[264] = char_1[264];
//assign reg_char_1[265] = char_1[265];
//assign reg_char_1[266] = char_1[266];
//assign reg_char_1[267] = char_1[267];
//assign reg_char_1[268] = char_1[268];
//assign reg_char_1[269] = char_1[269];
//assign reg_char_1[270] = char_1[270];
//assign reg_char_1[271] = char_1[271];
//assign reg_char_1[272] = char_1[272];
//assign reg_char_1[273] = char_1[273];
//assign reg_char_1[274] = char_1[274];
//assign reg_char_1[275] = char_1[275];
//assign reg_char_1[276] = char_1[276];
//assign reg_char_1[277] = char_1[277];
//assign reg_char_1[278] = char_1[278];
//assign reg_char_1[279] = char_1[279];
//assign reg_char_1[280] = char_1[280];
//assign reg_char_1[281] = char_1[281];
//assign reg_char_1[282] = char_1[282];
//assign reg_char_1[283] = char_1[283];
//assign reg_char_1[284] = char_1[284];
//assign reg_char_1[285] = char_1[285];
//assign reg_char_1[286] = char_1[286];
//assign reg_char_1[287] = char_1[287];
//assign reg_char_1[288] = char_1[288];
//assign reg_char_1[289] = char_1[289];
//assign reg_char_1[290] = char_1[290];
//
//assign reg_char_2[259] = char_2[259];
//assign reg_char_2[260] = char_2[260];
//assign reg_char_2[261] = char_2[261];
//assign reg_char_2[262] = char_2[262];
//assign reg_char_2[263] = char_2[263];
//assign reg_char_2[264] = char_2[264];
//assign reg_char_2[265] = char_2[265];
//assign reg_char_2[266] = char_2[266];
//assign reg_char_2[267] = char_2[267];
//assign reg_char_2[268] = char_2[268];
//assign reg_char_2[269] = char_2[269];
//assign reg_char_2[270] = char_2[270];
//assign reg_char_2[271] = char_2[271];
//assign reg_char_2[272] = char_2[272];
//assign reg_char_2[273] = char_2[273];
//assign reg_char_2[274] = char_2[274];
//assign reg_char_2[275] = char_2[275];
//assign reg_char_2[276] = char_2[276];
//assign reg_char_2[277] = char_2[277];
//assign reg_char_2[278] = char_2[278];
//assign reg_char_2[279] = char_2[279];
//assign reg_char_2[280] = char_2[280];
//assign reg_char_2[281] = char_2[281];
//assign reg_char_2[282] = char_2[282];
//assign reg_char_2[283] = char_2[283];
//assign reg_char_2[284] = char_2[284];
//assign reg_char_2[285] = char_2[285];
//assign reg_char_2[286] = char_2[286];
//assign reg_char_2[287] = char_2[287];
//assign reg_char_2[288] = char_2[288];
//assign reg_char_2[289] = char_2[289];
//assign reg_char_2[290] = char_2[290];

//character_ROM crm (w_RX_DV,w_RX_Byte,

//assign o_UART_TX = w_TX_Active ? w_TX_Serial : 1'b1;
assign Hsynq = (H_Count_Value < 96) ? 1'b1:1'b0;
assign Vsynq = (V_Count_Value < 2) ? 1'b1:1'b0;

//always@(posedge w_RX_DV)
//begin

//case(w_RX_Byte)


//endcase
//end 

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

//assign Red = w_red;
//assign Green = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ? (()?:):4'h0;
//assign Blue = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ? (()?:):4'h0;

end

endmodule
