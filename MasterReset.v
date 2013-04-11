module MasterReset(CLK, Reset_L, Reset_L_Out);
	input CLK, Reset_L;
	output Reset_L_Out;
	reg Reset_L_Out;
	reg[31:0] resetFlag, resetCount;

	always @(negedge CLK) begin
		if (Reset_L) begin
			if (resetFlag) begin
				Reset_L_Out = 0;
				resetCount = 0;
            	resetFlag = 0;
			end else begin
				Reset_L_Out = 1;
			end
		end else begin
			Reset_L_Out = 1;
			resetCount = resetCount + 1;
			// resetCount >= 10
			if (resetCount >= 32'b1010) begin
            	resetFlag = 1;
         	end 
		end
	end
endmodule