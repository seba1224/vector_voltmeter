//-----------------------------------------------------------------------------
// system_testing_pfb_out_ramblk_wrapper.v
//-----------------------------------------------------------------------------

module system_testing_pfb_out_ramblk_wrapper
  (
    clk,
    bram_we,
    bram_en_a,
    bram_addr,
    bram_rd_data,
    bram_wr_data,
    BRAM_Rst_B,
    BRAM_Clk_B,
    BRAM_EN_B,
    BRAM_WEN_B,
    BRAM_Addr_B,
    BRAM_Din_B,
    BRAM_Dout_B
  );
  input clk;
  input bram_we;
  input bram_en_a;
  input [9:0] bram_addr;
  output [63:0] bram_rd_data;
  input [63:0] bram_wr_data;
  input BRAM_Rst_B;
  input BRAM_Clk_B;
  input BRAM_EN_B;
  input [0:3] BRAM_WEN_B;
  input [0:31] BRAM_Addr_B;
  output [0:31] BRAM_Din_B;
  input [0:31] BRAM_Dout_B;

  bram_block_custom
    #(
      .C_PORTA_DWIDTH ( 64 ),
      .C_PORTA_AWIDTH ( 32 ),
      .C_PORTA_NUM_WE ( 8 ),
      .C_PORTA_DEPTH ( 10 ),
      .OPTIMIZATION ( "Minimum_Area" ),
      .REG_CORE_OUTPUT ( "false" ),
      .REG_PRIM_OUTPUT ( "false" ),
      .C_PORTB_DWIDTH ( 32 ),
      .C_PORTB_AWIDTH ( 32 ),
      .C_PORTB_NUM_WE ( 4 ),
      .C_PORTB_DEPTH ( 11 )
    )
    testing_pfb_out_ramblk (
      .clk ( clk ),
      .bram_we ( bram_we ),
      .bram_en_a ( bram_en_a ),
      .bram_addr ( bram_addr ),
      .bram_rd_data ( bram_rd_data ),
      .bram_wr_data ( bram_wr_data ),
      .BRAM_Rst_B ( BRAM_Rst_B ),
      .BRAM_Clk_B ( BRAM_Clk_B ),
      .BRAM_EN_B ( BRAM_EN_B ),
      .BRAM_WEN_B ( BRAM_WEN_B ),
      .BRAM_Addr_B ( BRAM_Addr_B ),
      .BRAM_Din_B ( BRAM_Din_B ),
      .BRAM_Dout_B ( BRAM_Dout_B )
    );

endmodule

