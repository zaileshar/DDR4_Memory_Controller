// DDR4 Refresh Controller
module ref_ctrl(
    input clk, rst_n,
    input [7:0] trefi,
    output reg req_ref,
    input ack_ref
);
    reg [7:0] ref_cnt;
    always @(posedge clk) begin
        if(!rst_n) ref_cnt <= 0;
        else ref_cnt <= ref_cnt + 1;
    end
endmodule
