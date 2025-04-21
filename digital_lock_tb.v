`timescale 1ns / 1ps

module Digital_Lock_tb;

    // Inputs
    reg [3:0] input_code;
    reg reset;

    // Outputs
    wire unlock;
    wire alarm;

    // Instantiate the Digital_Lock module
    Digital_Lock uut (
        .password(4'b1010),   // Using the stored password '1010'
        .input_code(input_code),
        .reset(reset),
        .unlock(unlock),
        .alarm(alarm)
    );

    // Test procedure
    initial begin
        // Initialize inputs
        reset = 1;
        input_code = 4'b0000;
        
        // Wait for reset to take effect
        #10;
        reset = 0;

        // Test Case 1: Enter correct password
        input_code = 4'b1010;   // Correct password
        #10;
        $display("Test Case 1: Correct password");
        $display("Unlock: %b, Alarm: %b", unlock, alarm);

        // Test Case 2: Enter incorrect password
        input_code = 4'b1100;   // Incorrect password
        #10;
        $display("Test Case 2: Incorrect password");
        $display("Unlock: %b, Alarm: %b", unlock, alarm);

        // Test Case 3: Another incorrect password
        input_code = 4'b0110;   // Incorrect password
        #10;
        $display("Test Case 3: Incorrect password");
        $display("Unlock: %b, Alarm: %b", unlock, alarm);

        // Test Case 4: Reset the system
        reset = 1;
        #10;
        $display("Test Case 4: System Reset");
        $display("Unlock: %b, Alarm: %b", unlock, alarm);
        
        // End simulation
        $stop;
    end
endmodule
