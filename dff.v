module dff(
    input Clock, D,
    output reg Q, reg NotQ
);
    initial begin
        Q = 0;
    end
    
    always @(posedge Clock) begin
        Q <= D;
        NotQ <= ~D;
    end
    
//    assign Q = E ? D : Q;
//    assign NotQ = ~Q;

endmodule