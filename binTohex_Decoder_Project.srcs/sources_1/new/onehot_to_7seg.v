`timescale 1ns / 1ps

module onehot_to_7seg (
    input  wire [15:0] onehot,
    output reg  [6:0] seg,
    output reg  [3:0] hex_digit
);
    always @(*) begin
        case (onehot)
            16'b0000000000000001: begin seg = 7'b1000000; hex_digit = 4'h0; end // 0
            16'b0000000000000010: begin seg = 7'b1111001; hex_digit = 4'h1; end // 1
            16'b0000000000000100: begin seg = 7'b0100100; hex_digit = 4'h2; end // 2
            16'b0000000000001000: begin seg = 7'b0110000; hex_digit = 4'h3; end // 3
            16'b0000000000010000: begin seg = 7'b0011001; hex_digit = 4'h4; end // 4
            16'b0000000000100000: begin seg = 7'b0010010; hex_digit = 4'h5; end // 5
            16'b0000000001000000: begin seg = 7'b0000010; hex_digit = 4'h6; end // 6
            16'b0000000010000000: begin seg = 7'b1111000; hex_digit = 4'h7; end // 7
            16'b0000000100000000: begin seg = 7'b0000000; hex_digit = 4'h8; end // 8
            16'b0000001000000000: begin seg = 7'b0010000; hex_digit = 4'h9; end // 9
            16'b0000010000000000: begin seg = 7'b0001000; hex_digit = 4'hA; end // A
            16'b0000100000000000: begin seg = 7'b0000011; hex_digit = 4'hB; end // B
            16'b0001000000000000: begin seg = 7'b1000110; hex_digit = 4'hC; end // C
            16'b0010000000000000: begin seg = 7'b0100001; hex_digit = 4'hD; end // D
            16'b0100000000000000: begin seg = 7'b0000110; hex_digit = 4'hE; end // E
            16'b1000000000000000: begin seg = 7'b0001110; hex_digit = 4'hF; end // F
            default: begin seg = 7'b1111111; hex_digit = 4'hF; end // blank
        endcase
    end
endmodule
