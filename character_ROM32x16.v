module character_ROM32x16(
// input i_RX_DV,
    input clk,
    input [7:0]ascii_val,
	 output  [15:0]display_out_0,
	 output  [15:0]display_out_1,
	 output  [15:0]display_out_2,
	 output  [15:0]display_out_3,
	 output  [15:0]display_out_4,
	 output  [15:0]display_out_5,
	 output  [15:0]display_out_6,
	 output  [15:0]display_out_7,
	 output  [15:0]display_out_8,
	 output  [15:0]display_out_9,
	 output  [15:0]display_out_10,
	 output  [15:0]display_out_11,
	 output  [15:0]display_out_12,
	 output  [15:0]display_out_13,
	 output  [15:0]display_out_14,
	 output  [15:0]display_out_15,
	 output  [15:0]display_out_16,
	 output  [15:0]display_out_17,
	 output  [15:0]display_out_18,
	 output  [15:0]display_out_19,
	 output  [15:0]display_out_20,
	 output  [15:0]display_out_21,
	 output  [15:0]display_out_22,
	 output  [15:0]display_out_23,
	 output  [15:0]display_out_24,
	 output  [15:0]display_out_25,
	 output  [15:0]display_out_26,
	 output  [15:0]display_out_27,
	 output  [15:0]display_out_28,
	 output  [15:0]display_out_29,
	 output  [15:0]display_out_30,
	 output  [15:0]display_out_31
	 );
	 
reg [15:0]display[0:31];

always@(posedge clk)

case(ascii_val)

        8'h30:begin	
    display[0]=  16'b0000000000000000;
    display[1]=  16'b0000000000000000;		  
	 display[2]=  16'b0000000000000000;
    display[3]=  16'b0000000000000000;
    display[4]=  16'b0000000000000000;
    display[5]=  16'b0000000000000000;
    display[6]=  16'b0001111111100000;
    display[7]=  16'b0011111111110000;
    display[8]=  16'b0111110011111000;
    display[9]=  16'b1111100001111100;
    display[10]= 16'b1111000000111100;
    display[11]= 16'b1111000000111100;
    display[12]= 16'b1111000000111100;
    display[13]= 16'b1111000000111100;
    display[14]= 16'b1111000011111100;
    display[15]= 16'b1111000110111100;
    display[16]= 16'b1111001100111100;
    display[17]= 16'b1111011000111100;
    display[18]= 16'b1111110000111100;
    display[19]= 16'b1111000000111100;
    display[20]= 16'b1111000000111100;
    display[21]= 16'b1111000000111100;
    display[22]= 16'b1111100001111100;
    display[23]= 16'b0111110011111000;
    display[24]= 16'b0011111111110000;
    display[25]= 16'b0001111111100000;
    display[26]= 16'b0000000000000000;
    display[27]= 16'b0000000000000000;
    display[28]= 16'b0000000000000000;
    display[29]= 16'b0000000000000000;
    display[30]= 16'b0000000000000000;
    display[31]= 16'b0000000000000000;
           end
        8'h31:begin
    display[0]=  16'b0000000000000000;
    display[1]=  16'b0000000000000000;		  
	 display[2]=  16'b0000000000000000;
    display[3]=  16'b0000000000000000;
    display[4]=  16'b0000000000000000;
    display[5]=  16'b0000000000000000;
    display[6]=  16'b0000001111000000;
    display[7]=  16'b0000011111000000;
    display[8]=  16'b0000111111000000;
    display[9]=  16'b0001111111000000;
    display[10]= 16'b0011111111000000;
    display[11]= 16'b0000001111000000;
    display[12]= 16'b0000001111000000;
    display[13]= 16'b0000001111000000;
    display[14]= 16'b0000001111000000;
    display[15]= 16'b0000001111000000;
    display[16]= 16'b0000001111000000;
    display[17]= 16'b0000001111000000;
    display[18]= 16'b0000001111000000;
    display[19]= 16'b0000001111000000;
    display[20]= 16'b0000001111000000;
    display[21]= 16'b0000001111000000;
    display[22]= 16'b0000001111000000;
    display[23]= 16'b0000001111000000;
    display[24]= 16'b0011111111111100;
    display[25]= 16'b0011111111111100;
    display[26]= 16'b0000000000000000;
    display[27]= 16'b0000000000000000;
    display[28]= 16'b0000000000000000;
    display[29]= 16'b0000000000000000;
    display[30]= 16'b0000000000000000;
	 display[31]= 16'b0000000000000000;
              end                                                                                                                                                                                              
        8'h32:begin
    display[0]=  16'b0000000000000000;
    display[1]=  16'b0000000000000000;		  
	 display[2]=  16'b0000000000000000;
    display[3]=  16'b0000000000000000;
    display[4]=  16'b0000000000000000;
    display[5]=  16'b0000000000000000;
    display[6]=  16'b0011111111110000;
    display[7]=  16'b0111111111111000;
    display[8]=  16'b1111100001111100;
    display[9]=  16'b1111000000111100;
    display[10]= 16'b1110000000111100;
    display[11]= 16'b0000000000111100;
    display[12]= 16'b0000000001111100;
    display[13]= 16'b0000000011111000;
    display[14]= 16'b0000000111111000;
    display[15]= 16'b0000001111110000;
    display[16]= 16'b0000011111100000;
    display[17]= 16'b0000111111000000;
    display[18]= 16'b0001111110000000;
    display[19]= 16'b0011111100000000;
    display[20]= 16'b0111111000000000;
    display[21]= 16'b1111110000000000;
    display[22]= 16'b1111000000111100;
    display[23]= 16'b1111000000111100;
    display[24]= 16'b1111111111111100;
    display[25]= 16'b1111111111111100;
    display[26]= 16'b0000000000000000;
    display[27]= 16'b0000000000000000;
    display[28]= 16'b0000000000000000;
    display[29]= 16'b0000000000000000;
    display[30]= 16'b0000000000000000;
	 display[31]= 16'b0000000000000000;
                 end
        8'h33:begin
    display[0]=  16'b0000000000000000;
    display[1]=  16'b0000000000000000;		  
	 display[2]=  16'b0000000000000000;
    display[3]=  16'b0000000000000000;
    display[4]=  16'b0000000000000000;
    display[5]=  16'b0000000000000000;
    display[6]=  16'b0011111111110000;
    display[7]=  16'b0111111111111000;
    display[8]=  16'b1111100001111100;
    display[9]=  16'b1111000000111100;
    display[10]= 16'b0000000000111100;
    display[11]= 16'b0000000000111100;
    display[12]= 16'b0000000000111100;
    display[13]= 16'b0000000001111000;
    display[14]= 16'b0000111111110000;
    display[15]= 16'b0000111111110000;
    display[16]= 16'b0000000001111000;
    display[17]= 16'b0000000000111100;
    display[18]= 16'b0000000000111100;
    display[19]= 16'b0000000000111100;
    display[20]= 16'b0000000000111100;
    display[21]= 16'b0000000000111100;
    display[22]= 16'b1111000000111100;
    display[23]= 16'b1111100001111100;
    display[24]= 16'b0111111111111000;
    display[25]= 16'b0011111111110000;
    display[26]= 16'b0000000000000000;
    display[27]= 16'b0000000000000000;
    display[28]= 16'b0000000000000000;
    display[29]= 16'b0000000000000000;
    display[30]= 16'b0000000000000000;
	 display[31]= 16'b0000000000000000;
                end                 
        8'h34:begin
    display[0]=  16'b0000000000000000;
    display[1]=  16'b0000000000000000;		  
	 display[2]=  16'b0000000000000000;
    display[3]=  16'b0000000000000000;
    display[4]=  16'b0000000000000000;
    display[5]=  16'b0000000000000000;
    display[6]=  16'b0000000011110000;
    display[7]=  16'b0000000111110000;
    display[8]=  16'b0000001111110000;
    display[9]=  16'b0000011111110000;
    display[10]= 16'b0000111111110000;
    display[11]= 16'b0001111111110000;
    display[12]= 16'b0011111011110000;
    display[13]= 16'b0111110011110000;
    display[14]= 16'b1111100011110000;
    display[15]= 16'b1111000011110000;
    display[16]= 16'b1111111111111100;
    display[17]= 16'b1111111111111100;
    display[18]= 16'b0000000011110000;
    display[19]= 16'b0000000011110000;
    display[20]= 16'b0000000011110000;
    display[21]= 16'b0000000011110000;
    display[22]= 16'b0000000011110000;
    display[23]= 16'b0000000011110000;
    display[24]= 16'b0000001111111100;
    display[25]= 16'b0000001111111100;
    display[26]= 16'b0000000000000000;
    display[27]= 16'b0000000000000000;
    display[28]= 16'b0000000000000000;
    display[29]= 16'b0000000000000000;
    display[30]= 16'b0000000000000000;
	 display[31]= 16'b0000000000000000;
                    end               
        8'h35:begin
    display[0]=  16'b0000000000000000;
    display[1]=  16'b0000000000000000;		  
	 display[2]=  16'b0000000000000000;
    display[3]=  16'b0000000000000000;
    display[4]=  16'b0000000000000000;
    display[5]=  16'b0000000000000000;
    display[6]=  16'b1111111111111100;
    display[7]=  16'b1111111111111100;
    display[8]=  16'b1111000000000000;
    display[9]=  16'b1111000000000000;
    display[10]= 16'b1111000000000000;
    display[11]= 16'b1111000000000000;
    display[12]= 16'b1111000000000000;
    display[13]= 16'b1111000000000000;
    display[14]= 16'b1111111111100000;	
    display[15]= 16'b1111111111111000;
    display[16]= 16'b0000000001111100;
    display[17]= 16'b0000000000111100;
    display[18]= 16'b0000000000111100;
    display[19]= 16'b0000000000111100;
    display[20]= 16'b0000000000111100;
    display[21]= 16'b0000000000111100;
    display[22]= 16'b1111000000111100;
    display[23]= 16'b1111100001111100;
    display[24]= 16'b0111111111111000;
    display[25]= 16'b0011111111110000;
    display[26]= 16'b0000000000000000;
    display[27]= 16'b0000000000000000;
    display[28]= 16'b0000000000000000;
    display[29]= 16'b0000000000000000;
    display[30]= 16'b0000000000000000;
	 display[31]= 16'b0000000000000000;
                   end           
        8'h36:begin
    display[0]=  16'b0000000000000000;
    display[1]=  16'b0000000000000000;		  
	 display[2]=  16'b0000000000000000;
    display[3]=  16'b0000000000000000;
    display[4]=  16'b0000000000000000;
    display[5]=  16'b0000000000000000;
    display[6]=  16'b0000111111110000;
    display[7]=  16'b0001111111110000;
    display[8]=  16'b0011111000000000;
    display[9]=  16'b0111110000000000;
    display[10]= 16'b1111000000000000;
    display[11]= 16'b1111000000000000;
    display[12]= 16'b1111000000000000;
    display[13]= 16'b1111111111110000;
    display[14]= 16'b1111111111110000;
    display[15]= 16'b1111100001111100;
    display[16]= 16'b1111000000111100;
    display[17]= 16'b1111000000111100;
    display[18]= 16'b1111000000111100;
    display[19]= 16'b1111000000111100;
    display[20]= 16'b1111000000111100;
    display[21]= 16'b1111000000111100;
    display[22]= 16'b1111000000111100;
    display[23]= 16'b1111100001111100;
    display[24]= 16'b0111111111111000;
    display[25]= 16'b0011111111110000;
    display[26]= 16'b0000000000000000;
    display[27]= 16'b0000000000000000;
    display[28]= 16'b0000000000000000;
    display[29]= 16'b0000000000000000;
    display[30]= 16'b0000000000000000;
    display[31]= 16'b0000000000000000;	 
                          end
        8'h37:begin
    display[0]=  16'b0000000000000000;
    display[1]=  16'b0000000000000000;		  
	 display[2]=  16'b0000000000000000;
    display[3]=  16'b0000000000000000;
    display[4]=  16'b0000000000000000;
    display[5]=  16'b0000000000000000;
    display[6]=  16'b1111111111111100;
    display[7]=  16'b1111111111111100;
    display[8]=  16'b1111000000111100;
    display[9]=  16'b1111000000111100;           ;
    display[10]= 16'b0000000000111100;
    display[11]= 16'b0000000000111100;
    display[12]= 16'b0000000001111000;
    display[13]= 16'b0000000011110000;
    display[14]= 16'b0000000111100000;
    display[15]= 16'b0000001111000000;
    display[16]= 16'b0000011110000000;
    display[17]= 16'b0000111110000000;
    display[18]= 16'b0000111100000000;
    display[19]= 16'b0000111100000000;
    display[20]= 16'b0000111100000000;
    display[21]= 16'b0000111100000000;
    display[22]= 16'b0000111100000000;
    display[23]= 16'b0000111100000000;
    display[24]= 16'b0000111100000000;
    display[25]= 16'b0000111100000000;
    display[26]= 16'b0000000000000000;
    display[27]= 16'b0000000000000000;
    display[28]= 16'b0000000000000000;
    display[29]= 16'b0000000000000000;
    display[30]= 16'b0000000000000000;
    display[31]= 16'b0000000000000000;    
                       end                                                      
        8'h38:begin
    display[0]=  16'b0000000000000000;
    display[1]=  16'b0000000000000000;		  
	 display[2]=  16'b0000000000000000;
    display[3]=  16'b0000000000000000;
    display[4]=  16'b0000000000000000;
    display[5]=  16'b0000000000000000;
    display[6]=  16'b0011111111110000;
    display[7]=  16'b0111111111111000;
    display[8]=  16'b1111100001111100;
    display[9]=  16'b0111110000111110;
    display[10]= 16'b1111000000111100;
    display[11]= 16'b1111000000111100;
    display[12]= 16'b1111000000111100;
    display[13]= 16'b0111100001111000;
    display[14]= 16'b0011111111110000;
    display[15]= 16'b0011111111110000;
    display[16]= 16'b0111100001111000;
    display[17]= 16'b1111000000111100;
    display[18]= 16'b1111000000111100;
    display[19]= 16'b1111000000111100;
    display[20]= 16'b1111000000111100;
    display[21]= 16'b1111000000111100;
    display[22]= 16'b1111000000111100;
    display[23]= 16'b1111100001111100;
    display[24]= 16'b0111111111111000;
    display[25]= 16'b0011111111110000;
    display[26]= 16'b0000000000000000;
    display[27]= 16'b0000000000000000;
    display[28]= 16'b0000000000000000;
    display[29]= 16'b0000000000000000;
    display[30]= 16'b0000000000000000;
	 display[31]= 16'b0000000000000000;
                            end                                                   
        8'h39:begin
    display[0]=  16'b0000000000000000;
    display[1]=  16'b0000000000000000;		  
	 display[2]=  16'b0000000000000000;
    display[3]=  16'b0000000000000000;
    display[4]=  16'b0000000000000000;
    display[5]=  16'b0000000000000000;
    display[6]=  16'b0011111111110000;
    display[7]=  16'b0111111111111000;
    display[8]=  16'b1111100001111100;
    display[9]=  16'b1111000000111100;
    display[10]= 16'b1111000000111100;
    display[11]= 16'b1111000000111100;
    display[12]= 16'b1111000000111100;
    display[13]= 16'b1111000000111100;
    display[14]= 16'b1111100001111100;
    display[15]= 16'b0111111111111100;
    display[16]= 16'b0111111111111100;
    display[17]= 16'b0000000000111100;
    display[18]= 16'b0000000000111100;
    display[19]= 16'b0000000000111100;
    display[20]= 16'b0000000000111100;
    display[21]= 16'b0000000001111100;
    display[22]= 16'b0000000011111000;
    display[23]= 16'b0000000111110000;
    display[24]= 16'b0011111111100000;
    display[25]= 16'b0011111111000000;
    display[26]= 16'b0000000000000000;
    display[27]= 16'b0000000000000000;
    display[28]= 16'b0000000000000000;
    display[29]= 16'b0000000000000000;
    display[30]= 16'b0000000000000000;
	 display[31]= 16'b0000000000000000;
                       end    
8'h3A:begin
    display[0]=  16'b0000000000000000;
    display[1]=  16'b0000000000000000;		  
	 display[2]=  16'b0000000000000000;
    display[3]=  16'b0000000000000000;
    display[4]=  16'b0000000000000000;
    display[5]=  16'b0000000000000000;
    display[6]=  16'b0000000000000000;
    display[7]=  16'b0000000000000000;
    display[8]=  16'b0000000000000000;
    display[9]=  16'b0000000000000000;
    display[10]= 16'b0000000110000000;
    display[11]= 16'b0000001111000000;
    display[12]= 16'b0000001111000000;
    display[13]= 16'b0000000110000000;
    display[14]= 16'b0000000000000000;
    display[15]= 16'b0000000000000000;
    display[16]= 16'b0000000000000000;
    display[17]= 16'b0000000000000000;
    display[18]= 16'b0000000000000000;
    display[19]= 16'b0000000000000000;
    display[20]= 16'b0000000110000000;
    display[21]= 16'b0000001111000000;
    display[22]= 16'b0000001111000000;
    display[23]= 16'b0000000110000000;
    display[24]= 16'b0000000000000000;
    display[25]= 16'b0000000000000000;
    display[26]= 16'b0000000000000000;
    display[27]= 16'b0000000000000000;
    display[28]= 16'b0000000000000000;
    display[29]= 16'b0000000000000000;
    display[30]= 16'b0000000000000000;
	 display[31]= 16'b0000000000000000;
                       end    							  
                default: 	 begin
    display[0]=  16'b0000000000000000;
    display[1]=  16'b0000000000000000;		  
	 display[2]=  16'b0000000000000000;
    display[3]=  16'b0000000000000000;
    display[4]=  16'b0000000000000000;
    display[5]=  16'b0000000000000000;
    display[6]=  16'b0000000000000000;
    display[7]=  16'b0000000000000000;
    display[8]=  16'b0000000000000000;
    display[9]=  16'b0000000000000000;
    display[10]= 16'b0000000000000000;
    display[11]= 16'b0000000000000000;
    display[12]= 16'b0000000000000000;
    display[13]= 16'b0000000000000000;
    display[14]= 16'b0000000000000000;
    display[15]= 16'b0000000000000000;
    display[16]= 16'b0000000000000000;
    display[17]= 16'b0000000000000000;
    display[18]= 16'b0000000000000000;
    display[19]= 16'b0000000000000000;
    display[20]= 16'b0000000000000000;
    display[21]= 16'b0000000000000000;
    display[22]= 16'b0000000000000000;
    display[23]= 16'b0000000000000000;
    display[24]= 16'b0000000000000000;
    display[25]= 16'b0000000000000000;
    display[26]= 16'b0000000000000000;
    display[27]= 16'b0000000000000000;
    display[28]= 16'b0000000000000000;
    display[29]= 16'b0000000000000000;
    display[30]= 16'b0000000000000000;
	 display[31]= 16'b0000000000000000;	 
                          		end						
																
endcase


assign display_out_0=display[0];
assign display_out_1=display[1];
assign display_out_2=display[2];
assign display_out_3=display[3];
assign display_out_4=display[4];
assign display_out_5=display[5];
assign display_out_6=display[6];
assign display_out_7=display[7];
assign display_out_8=display[8];
assign display_out_9=display[9];
assign display_out_10=display[10];
assign display_out_11=display[11];
assign display_out_12=display[12];
assign display_out_13=display[13];
assign display_out_14=display[14];
assign display_out_15=display[15];
assign display_out_16=display[16];
assign display_out_17=display[17];
assign display_out_18=display[18];
assign display_out_19=display[19];
assign display_out_20=display[20];
assign display_out_21=display[21];
assign display_out_22=display[22];
assign display_out_23=display[23];
assign display_out_24=display[24];
assign display_out_25=display[25];
assign display_out_26=display[26];
assign display_out_27=display[27];
assign display_out_28=display[28];
assign display_out_29=display[29];
assign display_out_30=display[30];
assign display_out_31=display[31];

endmodule
