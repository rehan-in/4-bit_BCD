`timescale 1ns / 1ps

module top (
    input  wire [3:0] sw,       // 4-bit binary input from switches
    input  wire       btn,      // Enable button
    output wire [6:0] seg,      // 7-segment segments
    output wire [3:0] an,       // Anode (enable digit 0)
    output wire [3:0] hex       // Hex digit output as 4-bit binary
);
    wire [15:0] onehot_out;
    wire [3:0] hex_internal;

    assign an = 4'b1110; // Activate only digit 0
    assign hex = hex_internal;

    binary_to_onehot decoder (
        .enable(btn),
        .bin_in(sw),
        .hex_out(onehot_out)
    );

    onehot_to_7seg display (
        .onehot(onehot_out),
        .seg(seg),
        .hex_digit(hex_internal)
    );

endmodule
