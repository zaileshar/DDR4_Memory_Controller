// DDR4 Request Arbiter
module arbiter(
    input req_rd, req_wr, req_ref,
    output gnt_rd, gnt_wr, gnt_ref
);
    // rigid priority: ref > rd > wr
    assign gnt_ref = req_ref;
    assign gnt_rd = req_rd & !req_ref;
    assign gnt_wr = req_wr & !req_rd & !req_ref;
endmodule
