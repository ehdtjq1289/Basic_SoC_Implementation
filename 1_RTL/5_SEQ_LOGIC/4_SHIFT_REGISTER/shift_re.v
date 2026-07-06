`timescale 1ns / 1ps


module shift_re(
	clk			,
	rst_n			,
	i_serial_in		,
	o_para_out		
);

	//port list
	input		clk			;
	input		rst_n			;
	input		i_serial_in		;
	output	[7:0]	o_para_out		;
	

	reg	[7:0]	o_para_out		;
	always @(posedge clk or negedge rst_n) begin
		if (~rst_n) begin		
		   o_para_out <= 8'b0;
		end else begin
		   o_para_out <= {o_para_out[6:0], i_serial_in};
		end
	end


	endmodule


