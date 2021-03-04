`timescale 1ps/1ps

module Optimization (
	input wire clk,
	input wire nrst,
	input wire swiptAlive,
	input wire [19:0] freq,
	input wire freq_optimum,
	input wire freq_rdy,
	input wire freq_set_up_down,
	input wire power_optimum,
	input wire [19:0] best_freq,
	output wire data_go,
	output wire data_start,
	output wire [19:0] freq_new
	);

	reg [19:0] delta_freq = 20'h00032; //Delta freq is 50 Hz but can be modified (max 255Hz for 8 bits)

	reg data_go_reg;
	reg data_start_reg;
	reg [19:0] freq_new_reg;
	reg [19:0] data_check_buf = 20'hFFFFF; //250 000 clks of stable period

	
	always @(posedge clk)begin
	    if(~nrst || ~swiptAlive)begin
	        data_go_reg <= 0;
	        data_start_reg <= 0;
	        freq_new_reg <= freq;
	    end
		else if(swiptAlive && nrst && ~data_start)begin
		    if(~freq_optimum)begin
				//FREQ OPT ALG
		        data_go_reg <= 0;
		        data_start_reg <= 0;
	            if(freq_rdy == 1 && freq_set_up_down)begin
	                freq_new_reg <= freq + delta_freq;
	            end
	            else if (freq_rdy == 1 && ~freq_set_up_down) begin
	                freq_new_reg <= freq - delta_freq;
	            end
		    end
		    else if(~power_optimum)begin
				//POWER OPT ALG
		        data_go_reg <= 0;
		    end
		    else begin
		        data_go_reg <= 1;
		        freq_new_reg <= best_freq;
		    end
		end
		
		//CHECK IF DATA GO
		if(data_go && nrst)begin
			if(data_check_buf == 0)begin
				data_start_reg <= 1;
			end
			else begin
				data_check_buf <= data_check_buf - 1;
				data_start_reg <= 0;
			end
		end
		else begin
			data_check_buf <= 20'hFFFFF;
			data_start_reg <= 0;
		end
	end

	//CHECK FREQUENCY OPTIMUM

	//REFRESH BEST FREQUENCY
	
	assign data_go = data_go_reg;
	assign data_start = data_start_reg;
	assign freq_new = freq_new_reg;
endmodule
