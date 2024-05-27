module top 
(
  input btn1,
  input btn2,

  output reg led
);

  always @ (*) begin
    if (!btn1 && !btn2)
      led = 0;
    else if (!btn1 && btn2)
      led = 1;
    else if (btn1 && !btn2)
      led = 1;
    else begin
      led = 1;
    end
  end
endmodule