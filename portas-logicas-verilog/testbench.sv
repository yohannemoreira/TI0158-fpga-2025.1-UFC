module basic_gates_tb();
    reg a, b;
    wire and_out, or_out, nand_out, nor_out, xor_out;
    
    basic_gates uut (
        .a(a),
        .b(b),
        .and_out(and_out),
        .or_out(or_out),
        .nand_out(nand_out),
        .nor_out(nor_out),
        .xor_out(xor_out)
    );
    
    initial begin
        a = 0; b = 0;
        #10;
        
        $display("Testando todas as portas lógicas básicas");
        $display("a | b | AND | OR | NAND | NOR | XOR");
        $display("--|---|-----|----|----- |----|----");
        $display("%b | %b | %b   | %b  | %b    | %b   | %b", a, b, and_out, or_out, nand_out, nor_out, xor_out);
        
        a = 0; b = 1;
        #10;
        $display("%b | %b | %b   | %b  | %b    | %b   | %b", a, b, and_out, or_out, nand_out, nor_out, xor_out);
        
        a = 1; b = 0;
        #10;
        $display("%b | %b | %b   | %b  | %b    | %b   | %b", a, b, and_out, or_out, nand_out, nor_out, xor_out);
        
        a = 1; b = 1;
        #10;
        $display("%b | %b | %b   | %b  | %b    | %b   | %b", a, b, and_out, or_out, nand_out, nor_out, xor_out);
        
        $finish;
    end
    
endmodule