module modCount(
    input clk, rst,
    output m1, m2, m3, Co
    );
   
   wire dr;
   wire s1;
   wire s2;
   wire s3;
   wire w1;
   wire w2;
   wire w3;
   
   assign dr = (~m1 & m2 & m3) | (rst);
   
    dff dff1(
        .D(s1),
        .clk(clk),
        .rst(dr),
        .Q(m1)
     );

    dff dff2(
        .D(s2),
        .clk(clk),
        .rst(dr),
        .Q(m2)
     );
 
     dff dff3(
        .D(s3),
        .clk(clk),
        .rst(dr),
        .Q(m3)
     );    

     tff tffOut(
        .D(dr),
        .clk(clk),
        .Q(Co)
     );    
     
     
    full_adder add1(
        .A(m1),
        .B(1),
        .Cin(0),
        .Y(s1),
        .Cout(w1)
    );
    
    full_adder add2(
        .A(m2),
        .B(0),
        .Cin(w1),
        .Y(s2),
        .Cout(w2)
    );
    
    full_adder add3(
        .A(m3),
        .B(0),
        .Cin(w2),
        .Y(s3),
        .Cout(w3)
    );
    
    
endmodule
