module CLIO_INTERPOL
(
	input              CLK,
	input              RST_N,
	input              EN,
	
	input              CE,
	
	input              ACLK1,
	input              ACLK2,
	
	input      [23: 0] LP0,
	input      [23: 0] LP1,
	input      [23: 0] LP2,
	input      [23: 0] LP3,
	input              DE_IN,
	
	output reg [23: 0] OUT,
	output reg         DE
);

	bit [23: 0] SUM;
	bit         DE_IN_FF;
	always @(posedge CLK) begin
		if (EN && CE) begin
			SUM <= LP3;
			OUT <= SUM;
			
			DE_IN_FF <= DE_IN;
			DE <= DE_IN_FF;
		end
	end
		

endmodule

