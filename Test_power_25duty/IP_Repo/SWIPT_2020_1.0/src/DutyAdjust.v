`timescale 1ps/1ps

module DutyAdjust (
	input wire clk,
	input wire nrst,
	input wire data_start,
	input wire data_trans,
	input wire data_rec,
	input wire l_rdy,
	input wire l_up_down,
	input wire [11:0] l,
	input wire [11:0] l_reg,
	output reg [11:0] l_adj
	);

	always @(posedge clk)begin
		if(l_rdy && l_up_down)begin
			if((l + l/10) < 12'h1F4)begin
				l_adj <= l + (l/10);
			end
			else begin
				l_adj <= 12'h1F4;
			end
		end
		else if(l_rdy && ~l_up_down)begin
			l_adj <= l - (l/10);
		end
		else if(data_start)begin
			l_adj <= l_reg;
		end
		else begin
			if(l_adj > 0)begin
				l_adj <= l_adj;
			end
			else begin
				l_adj <= l;
			end
		end
	end
endmodule
