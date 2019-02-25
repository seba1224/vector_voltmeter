`timescale 1ns / 1ps

module test_init_block ( index, clk, ce, rst,  val );

output [3:0] val;
wire [3:0] val;


input clk;
wire clk;
input ce;
wire ce;
input [7:0] index;
wire [7:0] index;
input rst;
wire rst;

reg [3:0] dir_dic[0:49];
reg [3:0] aux;

parameter a = 2'b00;
parameter b = 2'b01;
parameter c = 2'b11;

reg [1:0] next_state;
reg [1:0] actual_state;

initial begin

    dir_dic[0] = 4'b1111; dir_dic[1] = 4'b0000; dir_dic[2]=4'b0000; dir_dic[3]=4'b0000; dir_dic[5]=4'b1111; dir_dic[6]=4'b0001; dir_dic[7]=4'b0001; dir_dic[8] = 4'b0001; dir_dic[9] = 4'b1100;

    dir_dic[10] = 4'b0010; dir_dic[11] = 4'b0010; dir_dic[12] = 4'b0010; dir_dic[13] = 4'b0010; dir_dic[14]=4'b1111;dir_dic[15] = 4'b0011; dir_dic[16] = 4'b0011; dir_dic[17] = 4'b0011; dir_dic[18] = 4'b1111; dir_dic[19] = 4'b1100;

    dir_dic[20] = 4'b0100; dir_dic[21] = 4'b0100; dir_dic[22] = 4'b0100; dir_dic[23] = 4'b0100; dir_dic[24] = 4'b0111; dir_dic[25] = 4'b0101; dir_dic[26] = 4'b0101; dir_dic[27] = 4'b1111; dir_dic[28] = 4'b1111; dir_dic[29] = 4'b1100;

    dir_dic[30] = 4'b0110; dir_dic[31] = 4'b0110; dir_dic[32] = 4'b0110; dir_dic[33]=4'b0110; dir_dic[34] = 4'b1111; dir_dic[35] = 4'b0111; dir_dic[36] = 4'b0111; dir_dic[37] = 4'b0111; dir_dic[38] = 4'b0111; dir_dic[39] = 4'b1100;

    dir_dic[40] = 4'b1000; dir_dic[41] = 4'b1000; dir_dic[42] = 4'b1111; dir_dic[43]=4'b1111; dir_dic[44] = 4'b1111; dir_dic[45] = 4'b1111; dir_dic[46] = 4'b1111; dir_dic[47] = 4'b1111; dir_dic[48] = 4'b1111; dir_dic[49] = 4'b1100;
aux = 4'b0000;
actual_state = a; 

end
always@(posedge clk, posedge rst) begin
    if(rst)
        actual_state <= a;
    else 
        actual_state <= next_state;
end

always@(*)begin
    case(actual_state)
        a:
            next_state = b;
        b:
            next_state = c;
        c:
            next_state = a;
    endcase
end


always@(posedge clk) begin
	if (actual_state == b) begin
		aux = dir_dic[index];
	end
end


assign val = aux;

endmodule
