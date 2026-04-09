`timescale 1ns / 1ps

module top_tb;
    reg [3:0] sw;
    reg       btn;
    wire [6:0] seg;
    wire [3:0] an;
    wire [3:0] hex;

    top uut (
        .sw(sw),
        .btn(btn),
        .seg(seg),
        .an(an),
        .hex(hex)
    );

    initial begin
        btn = 0;
        sw = 4'b0000;
        #10 btn = 1;

        // Step through all hex digits
        for (integer i = 0; i < 16; i = i + 1) begin
            sw = i;
            #10;
        end

        // Disable output
        btn = 0;
        #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | sw(bin)=%b | hex_out=0x%h | seg=%b | an=%b", $time, sw, hex, seg, an);
    end
endmodule


