module tb_d_latch;

reg d, en;
wire q;

d_latch uut (
    .d(d),
    .en(en),
    .q(q)
);

initial begin
    $dumpfile("d_latch.vcd");
    $dumpvars(0, tb_d_latch);

    $monitor("en=%b d=%b q=%b", en, d, q);

    en = 0; d = 0; #10;
    en = 0; d = 1; #10;  // no change

    en = 1; d = 0; #10;
    en = 1; d = 1; #10;

    en = 0; d = 0; #10;  // hold

    $finish;
end

endmodule
