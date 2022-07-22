`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:38:42 08/02/2021 
// Design Name: 
// Module Name:    UART_Tx 
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
module UART_Tx(
    input clk,
    input [7:0] data,
    input transmit,
    input reset,
    output reg TxD	
    );
	 
	 
	 reg [3:0] bit_counter; //count to 10 bits
	 reg [13:0] baudrate_counter; //10,416 counter clock(100MHz)/ Baudrate(9600) 
	 reg [9:0] shiftright_register; //parallel input array
	 reg state, next_state; //idle and transmitting mode
	 reg shift, load; //to start loading and shifting
	 reg clear; //reset data array
	 
	 always@( posedge clk)
	 begin 
	 if (reset)
	 begin
	 state <= 0;
	 bit_counter <= 0;
	 baudrate_counter <= 0;
	 end
	 
	 else
	 begin 
	 baudrate_counter <= baudrate_counter+1;
	 
	 if (baudrate_counter==10415)
	 begin
	 state <= next_state;
	 baudrate_counter <= 0;
	 
	 if(load)
	 shiftright_register <= {1'b1,data,1'b0};
	 
	 if (clear)
	 bit_counter <= 0;
	 
	 if (shift)
	 shiftright_register <= shiftright_register>>1;
	 bit_counter <= bit_counter+1;
	 end 
	 end
	 end
	 
	 
	 //mealy machine
	 always@(posedge clk)
	 begin
	 load <= 0;
	 shift <= 0;
	 clear <= 0;
	 TxD <= 1;
	 
	 case (state) //idle state
	 0: begin
	 if (transmit)
	 begin
	 next_state <= 1;
	 load <= 1;
	 shift <= 0;
	 clear <= 0;
	 end
	 
	 else begin
	 next_state <= 0;
	 TxD <= 1;
	 end 
	 end
	 
	 1: begin
	 if (bit_counter==10)
	 begin
	 next_state <= 0;  
	 clear <=1;
	 end
	 
	 else begin
	 next_state <= 1;
	 TxD <= shiftright_register[0];
    shift <= 1;
    end
	 end
	 
	 default : next_state <= 0;
	 endcase 
	 end
	  
	 
	 
endmodule
