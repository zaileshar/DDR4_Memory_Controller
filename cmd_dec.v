// DDR4 Command Decoder
module cmd_dec(
    input clk, rst_n,
    input [3:0] cs_n, act_n,
    input [1:0] bg,
    input [1:0] ba,
    output we_cmd, read_cmd, ref_cmd
);
    // simplistic decode
    assign we_cmd = (cs_n == 0 && act_n == 1) ? 1:0;
endmodule
