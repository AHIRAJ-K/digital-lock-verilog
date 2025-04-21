module Digital_Lock (
    input  [3:0] input_code,        // 4-bit entered code
    input        reset,             // Reset signal
    output reg   unlock,            // Unlock signal
    output reg   alarm              // Alarm signal
);

    // Stored password (parameterized)
    parameter [3:0] stored_password = 4'b1010;

    always @(*) begin
        if (reset) begin
            unlock = 1'b0;
            alarm  = 1'b0;
        end else if (input_code == stored_password) begin
            unlock = 1'b1;
            alarm  = 1'b0;
        end else begin
            unlock = 1'b0;
            alarm  = 1'b1;
        end
    end

endmodule
