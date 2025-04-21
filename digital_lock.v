module Digital_Lock (
    input [3:0] password,           // 4-bit stored password
    input [3:0] input_code,        // 4-bit entered code
    input reset,                        // Reset signal
    output reg unlock,             // Unlock signal
    output reg alarm               // Alarm signal
);

    // Parameterized password (let's say the password is '1010')

    parameter [3:0] stored_password = 4'b1010;

    always @(*) begin
        if (reset) begin
            unlock = 0;
            alarm = 0;
        end else if (input_code == stored_password) begin
            unlock = 1;
            alarm = 0;  // No alarm if the code is correct
        end else begin
            unlock = 0;
            alarm = 1;  // Raise alarm if the code is incorrect
        end
    end
endmodule
