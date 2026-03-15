// DDR4 Bank State Machine
module bank_fsm(
    input clk, rst_n,
    input start_act, start_pre,
    output reg [1:0] state
);
    always @(posedge clk) begin
        if(!rst_n) state <= 0;
        else if (start_act) state <= 1; // ACTIVE
        else if (start_pre) state <= 0; // PRECHARGE
    end
endmodule
