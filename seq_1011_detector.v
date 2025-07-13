module seq_1011_detector (
    input clk, reset, x,
    output reg z
);

    // Define states using parameters
    parameter S0 = 2'b00,
              S1 = 2'b01,
              S2 = 2'b10,
              S3 = 2'b11;

    reg [1:0] current_state, next_state;

    // State register (clock + reset)
    always @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= S0;
        else
            current_state <= next_state;
    end

    // Next state logic
    always @(*) begin
        case (current_state)
            S0: next_state = (x == 1) ? S1 : S0;
            S1: next_state = (x == 0) ? S2 : S1;
            S2: next_state = (x == 1) ? S3 : S0;
            S3: next_state = (x == 1) ? S1 : S2;
            default: next_state = S0;
        endcase
    end

    // Output logic (Mealy: depends on state + input)
    always @(*) begin
        case (current_state)
            S3: z = (x == 1) ? 1 : 0;  // '1011' detected!
            default: z = 0;
        endcase
    end

endmodule

