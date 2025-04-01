module tff(
    input T, Clock,
    output reg Q,
    output NotQ
);

    initial begin
        Q = 0;
    end
    
    always @(posedge Clock) begin
        if(T) begin
            Q = NotQ;
        end else
            Q = Q;
    end
    
    assign NotQ = ~Q;


endmodule