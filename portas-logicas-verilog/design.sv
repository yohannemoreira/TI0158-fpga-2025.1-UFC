module basic_gates(
    input a,
    input b,
    output and_out,
    output or_out,
    output nand_out,
    output nor_out,
    output xor_out
);
    assign and_out = a & b;      // AND
    assign or_out = a | b;       // OR
    assign nand_out = ~(a & b);  // NAND
    assign nor_out = ~(a | b);   // NOR
    assign xor_out = a ^ b;      // XOR
    
endmodule