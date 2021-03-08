`timescale 1ps/1ps

module GetMeanCurrent (
	input wire clk,
	input wire nrst,
	input wire data_go,
	input wire data_start,
	input wire [11:0] ADC,
	output reg [11:0] mean_curr
	);
	///Description
	//In this module, the mean current mesurement over 1 ms is given;
	//-----------------------
	reg getMeanCurr = 0;
	reg [8:0] numberMeasurements = 0;
	reg [19:0] clk_cycles = 20'h9C40;
	reg [11:0] highest = 20'h0;
	
	always @(posedge clk)begin
		if(getMeanCurr && nrst)begin
			if(clk_cycles == 20'h0)begin
				clk_cycles <= 20'h9C40;
				highest <= 20'h0;
				numberMeasurements <= numberMeasurements + 1;
				mean_curr <= ((numberMeasurements*mean_curr)+(highest))/(numberMeasurements + 1);
			end
			else begin
				clk_cycles <= clk_cycles - 1;
				if(ADC < 12'h800 && ADC > highest)begin
					highest <= ADC;
				end
				else if(ADC >= 12'h800 && 12'hFFF - ADC > highest)begin
                	highest <= 12'hFFF - ADC;
            	end
			end
		end
		else if(data_start)begin
			mean_curr <= mean_curr;
		end
		else begin
			mean_curr <= 0;
		end
	end


	always @(posedge data_go)begin
		getMeanCurr <= 1;
	end


	always @(posedge data_start)begin
		getMeanCurr <= 0;
	end
	
endmodule

