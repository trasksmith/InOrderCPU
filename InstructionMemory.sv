module InstructionMemory(
    input logic [31:0] instr_addr,
    output logic [31:0] instr
);

logic [31:0] program_mem [0:255];

initial begin
    $readmemh("program.mem", program_mem);
end

assign instr = program_mem[instr_addr >> 2];

endmodule