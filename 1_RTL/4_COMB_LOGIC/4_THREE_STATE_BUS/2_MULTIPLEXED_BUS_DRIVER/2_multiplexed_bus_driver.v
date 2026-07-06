`timescale 1ns / 1ps

module multiplexed_bus_driver (
	// port list
	i_data_a		,
	i_data_b		,
	i_en_a			,
	i_en_b			,
	o_bus_data		
);

	// port declaration
	input	[7:0]	i_data_a	;
	input	[7:0]	i_data_b	;
	input		i_en_a		;
	input		i_en_b		;
	output	[7:0]	o_bus_data	;

	wire		o_select	;
	wire	[7:0]	o_mux_selcet	;

	// modeling
	assign	o_select = i_data_a ^ i_data_b	;
	
	assign	o_mux_select = (i_data_a) ? i_data_a :
			       (i_data_b) ? i_data_b :
				8'bz

	assign o_bus_data = (w_selet) ? w_mux_out : 8'bz	;





endmodule
	
