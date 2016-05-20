module IF_ID(clk, IF_pc_plus_4, IF_ins, 
				  ID_pc_plus_4, ID_ins);
	input			clk;
	input	[31:0]	IF_pc_plus_4;
	input	[31:0]	IF_ins;

	output	[31:0]	ID_pc_plus_4;
	output	[31:0]	ID_ins;

	reg		[31:0]	pc_plus_4;
	reg		[31:0]	ins;

	always @(posedge clk) begin
		pc_plus_4	<=	IF_pc_plus_4;
		ins			<=	IF_ins;
	end

	assign ID_pc_plus_4	=	pc_plus_4;
	assign ID_ins		=	ins;
endmodule