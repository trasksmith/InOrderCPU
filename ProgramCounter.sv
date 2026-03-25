module ProgramCounter(
    input  logic        clk,
    input  logic        reset,
    input  logic        branch_en,
    input  logic [31:0] branch_addr,
    output logic [31:0] pc_out
);

assign pc_next = branch_en ? branch_addr : pc_out + 'd4;

always_ff@(posedge clk) begin
    if(!rst) begin
        pc_out <= 32'h00000000;
    end
    else begin
        pc_out <= pc_next;
    end
end

endmodule