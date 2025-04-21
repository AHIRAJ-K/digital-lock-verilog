`timescale 1ns / 1ps

module Digital_Lock_tb;

    // Inputs
    reg [3:0] input_code;
    reg reset;

    // Outputs
    wire unlock;
    wire alarm;

    // Instantiate the Digital_Lock module (no password port)
    Digital_Lock uut (
        .input_code(input_code),
        .reset(reset),
        .unlock(unlock),
        .alarm(alarm)
    );

    initial begin
        $display("Time | input_code | Unlock | Alarm");
        $monitor("%4dns |     %b     |    %b    |   %b", $time, input_code, unlock, alarm);

        // Test Case 0: Reset the system
        reset = 1;
        input_code = 4'b0000;
        #10;

        // Test Case 1: Correct password
        reset = 0;
        input_code = 4'b1010; // Correct password
        #10;

        // Test Case 2: Incorrect password
        input_code = 4'b1100;
        #10;

        // Test Case 3: Another incorrect password
        input_code = 4'b0110;
        #10;

        // Test Case 4: Reset again
        reset = 1;
        #10;

        $stop;
    end
endmodule