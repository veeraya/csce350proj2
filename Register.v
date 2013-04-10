module Register (readReg1, readReg2, writeReg, writeData, RegWrite, readData1, readData2);
   input [4:0] readReg1, readReg2, writeReg;
   input [31:0] writeData;
   input RegWrite;
   output [31:0] readData1, readData2;
   reg [31:0] register[31:0];

   always begin
      if (RegWrite) begin
         register[writeReg] = writeData;
      end
   end

   register[writeReg] = register[writeReg]
   assign readData1 = register[readReg1];
   assign readData2 = register[readReg2];


      always @(writeReg or readReg1)
   #10 $display($time, "\treadReg1=%d\treadReg2=%d\twriteReg=%d\twriteData=%d\tRegWrite=%d\readData1=%d\treadData2=%d",
      readReg1, readReg2, writeReg, writeData, RegWrite, readData1, readData2);
endmodule // Imem

// module test_register();
//    reg[4:0] readReg1, readReg2, writeReg;
//    reg[31:0] writeData;
//    reg RegWrite;
//    wire [31:0] readData1, readData2;

//    Register register(readReg1, readReg2, writeReg, writeData, RegWrite, readData1, readData2);

//    initial begin
//       $monitor($time, "\treadReg1=%d\treadReg2=%d\twriteReg=%d\twriteData=%d\tRegWrite=%d\readData1=%d\treadData2=%d", readReg1, readReg2, writeReg, writeData, RegWrite, readData1, readData2);
//       writeReg = 0; writeData = 0; RegWrite = 1; #1
//       writeReg = 1; writeData = 1; RegWrite = 1; #1
//       writeReg = 2; writeData = 2; RegWrite = 1; #1
//       writeReg = 3; writeData = 3; RegWrite = 1; #1
//       writeReg = 4; writeData = 4; RegWrite = 1; #1
//       writeReg = 5; writeData = 5; RegWrite = 1; #1
//       writeReg = 6; writeData = 6; RegWrite = 1; #1
//       writeReg = 7; writeData = 7; RegWrite = 1; #1
//       writeReg = 8; writeData = 8; RegWrite = 1; #1
//       writeReg = 9; writeData = 9; RegWrite = 1; #1
//       writeReg = 10; writeData = 10; RegWrite = 1; #1
//       writeReg = 11; writeData = 11; RegWrite = 1; #1
//       writeReg = 12; writeData = 12; RegWrite = 1; #1
//       writeReg = 13; writeData = 13; RegWrite = 1; #1
//       writeReg = 14; writeData = 14; RegWrite = 1; #1
//       writeReg = 15; writeData = 15; RegWrite = 1; #1
//       writeReg = 16; writeData = 16; RegWrite = 1; #1
//       writeReg = 17; writeData = 17; RegWrite = 1; #1
//       writeReg = 18; writeData = 18; RegWrite = 1; #1
//       writeReg = 19; writeData = 19; RegWrite = 1; #1
//       writeReg = 20; writeData = 20; RegWrite = 1; #1
//       RegWrite = 0; readReg1 = 0; readReg2 = 1; #1
//       RegWrite = 0; readReg1 = 2; readReg2 = 3; #1
//       RegWrite = 0; readReg1 = 4; readReg2 = 5; #1
//       RegWrite = 0; readReg1 = 6; readReg2 = 7; #1
//       RegWrite = 0; readReg1 = 8; readReg2 = 9; #1
//       RegWrite = 0; readReg1 = 10; readReg2 = 11; #1
//       RegWrite = 0; readReg1 = 12; readReg2 = 13; #1
//       RegWrite = 0; readReg1 = 14; readReg2 = 15; #1
//       RegWrite = 0; readReg1 = 16; readReg2 = 17; #1
//       $finish;
//    end

// endmodule