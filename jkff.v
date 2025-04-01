module jkff(
    input J, K, Clock,
    output Q, NotQ
);
    wire D;
    assign D = (J & ~Q) | (~K & Q);
    
    dff dff_inst(
        .Clock(Clock),
        .D(D),
        .Q(Q),
        .NotQ(NotQ)
    );

endmodule