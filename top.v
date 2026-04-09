module top(
    input btnU,
    input btnC,
    output [6:0] led
);



    tff tff1(
        .D(1),
        .clk(btnC),
        .Q(led[0])
     );

    tff tff2(
        .D(1),
        .clk(led[0]),
        .Q(led[1])
     );

    tff tff3(
        .D(1),
        .clk(led[1]),
        .Q(led[2])
     );

    modCount modCount1(
        .clk(btnC),
        .rst(btnU),
        .m1(led[3]),
        .m2(led[4]),
        .m3(led[5]),
        .Co(led[6])
    
    );

endmodule