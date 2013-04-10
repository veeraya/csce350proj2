

module MainControl (Instr, ALUOpWire, ALUSrcWire, RegDstWire, RegWriteWire);
    input [5:0] Instr;
    output ALUSrcWire, RegDstWire, RegWriteWire, ALUOpWire;
    reg ALUSrc, RegWrite, ALUOp, RegDst;

    always @(Instr) begin
        case (Instr)
            // add, sub, addu, subu
            6'b000000 : begin
                                ALUSrc = 0;
                                RegWrite = 1;
                                ALUOp = 1
                            end
            // addi
            6'b001000 : begin
                            ALUSrc = 0;
                            RegWrite = 1;
                            ALUOp = 1
                          end
            // addui
            6'b001001 : begin
                             ALUSrc = 0;
                             RegWrite = 1;
                             ALUOp = 1
                           end
            default: begin
                        ALUSrc = 0;
                        RegWrite = 0;
                        ALUOp = 1
                     end
        endcase
    end

    assign ALUSrcWire = ALUSrc;
    assign ALUOpWire = ALUOp;
    assign RegWriteWire = RegWrite;
    assign RegDstWire = RegDst;
endmodule