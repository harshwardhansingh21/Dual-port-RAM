module RAM_dualport(
input we_a,
  input we_b,
  input clk,
  input reset,
  input [7:0] din_a,
  input [7:0] din_b,
  input  [3:0] addr_a,
  input [3:0] addr_b,
  output reg [7:0] dout_b,
  output reg [7:0] dout_a
);
  
  
  reg[7:0]mem[0:15];
  int i;
  
  ///port a
  always@(posedge clk)
    begin
      if(reset) begin
        dout_a<=0;
        for(i=0;i<16;i++)
          mem[i]<=0;
      end
      else begin
        if(we_a)
          begin
            mem[addr_a]<=din_a;
          end
        else begin
          dout_a<=mem[addr_a];
        end
      end
    end
  
  ///port b
  always@(posedge clk)
    begin
      if(reset)
        dout_b<=0;
      else 
        if(we_b && !(we_a && addr_a==addr_b))//port_b will only write when port_a and port_b are not writting on the same address
          begin
            mem[addr_b]<=din_b;
          end
         
        else begin
          dout_b<=mem[addr_b];
        end
      end
    
  
  
  
  
  
endmodule
    
  
  
  
  
  
