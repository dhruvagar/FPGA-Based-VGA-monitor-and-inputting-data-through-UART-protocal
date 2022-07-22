module UART_COM
  (input  i_Clk,       
   input  i_UART_RX,   
   output o_UART_TX,
	output RX_LED
   ); 
 
  wire w_RX_DV;
  wire [7:0] w_RX_Byte;
  wire w_TX_Active, w_TX_Serial;
   
  UART_RX #(.CLKS_PER_BIT(868)) receiver
  (.i_Clock(i_Clk),
   .i_RX_Serial(i_UART_RX),
   .o_RX_DV(w_RX_DV),
   .o_RX_Byte(w_RX_Byte));
    
  UART_TX #(.CLKS_PER_BIT(868)) transmitter
  (.i_Clock(i_Clk),
   .i_TX_DV(w_RX_DV),       
   .i_TX_Byte(w_RX_Byte),  
   .o_TX_Active(w_TX_Active),
   .o_TX_Serial(w_TX_Serial),
   .o_TX_Done());
   

  assign o_UART_TX = w_TX_Active ? w_TX_Serial : 1'b1;
  assign RX_LED = w_RX_Byte;
endmodule
