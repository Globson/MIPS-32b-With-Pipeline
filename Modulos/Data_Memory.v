module Data_Memory (Clk,Address,WriteData,ReadData,MemRead,MemWrite);
  input MemWrite,MemRead,Clk;
  input [31:0]Address;
  input [31:0]WriteData;
  output reg [31:0]ReadData;
  reg [31:0]MemData[0:31];

  initial begin
    MemData[0] = 0;
    MemData[1] = 0;
    MemData[2] = 0;
    MemData[3] = 0;
    MemData[4] = 0;
    MemData[5] = 0;
    MemData[6] = 0;
    MemData[7] = 666;
    MemData[8] = 0;
    MemData[9] = 555;
    MemData[10] = 0;
    MemData[11] = 0;
    MemData[12] = 0;
    MemData[13] = 0;
    MemData[14] = 0;
    MemData[15] = 0;
    MemData[16] = 0;
    MemData[17] = 0;
    MemData[18] = 0;
    MemData[19] = 0;
    MemData[20] = 0;
    MemData[21] = 0;
    MemData[22] = 0;
    MemData[23] = 0;
    //$monitor("\n\t->Store dado!\nMemdata1: %d\nMemdata2: %d",MemData[7],MemData[9]);
  end

 always @ (negedge Clk) begin
  if(MemWrite == 1) begin
    MemData[Address] <= WriteData;
    end
 else if(MemRead == 1) begin
     ReadData <= MemData[Address];
    end
 end

endmodule //Data_memory2
