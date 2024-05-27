module top 
(
  input btn1,
  input btn2,
  
  output reg [2:0] led
);
  reg [2:0] a,b,c;

  assign a = 3'b100;
  assign b = 3'b011;
  always @ (*) begin
    if (!btn1 && !btn2) begin
      c = a + b ;
      led [0] = ~c[0];
      led [1] = ~c[1];
      led [2] = ~c[2];
    end
    else if (!btn1 && btn2) begin
      c = a - b ;
      led [0] = ~c[0];
      led [1] = ~c[1];
      led [2] = ~c[2];
    end
    else if (btn1 && !btn2) begin
      c = a | b ;
      led [0] = ~c[0];
      led [1] = ~c[1];
      led [2] = ~c[2];
    end
    else begin
      c = a & b ;
      led [0] = ~c[0];
      led [1] = ~c[1];
      led [2] = ~c[2];
    end
  end
endmodule