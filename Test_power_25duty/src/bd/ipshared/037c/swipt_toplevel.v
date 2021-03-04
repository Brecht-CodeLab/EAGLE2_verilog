`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2020 03:52:49 PM
// Design Name: 
// Module Name: swipt_toplevel
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module swipt_toplevel #(

        // Student parameters start
        
        // Student parameters end
        
        // Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S_AXI_DATA_WIDTH	= 32
	)
	(
	input wire clk,
	input wire nrst,
	input wire [C_S_AXI_DATA_WIDTH-1:0] din_0,
	input wire [C_S_AXI_DATA_WIDTH-1:0] din_1,
	input wire [C_S_AXI_DATA_WIDTH-1:0] din_2,
	input wire [C_S_AXI_DATA_WIDTH-1:0] din_3,
	input wire [C_S_AXI_DATA_WIDTH-1:0] din_4,
    input wire [C_S_AXI_DATA_WIDTH-1:0] din_5,
    input wire [C_S_AXI_DATA_WIDTH-1:0] din_6,
    input wire [C_S_AXI_DATA_WIDTH-1:0] din_7,
	input wire [11:0] ADC_in,
	output wire SWIPT_OUT0,
	output wire SWIPT_OUT1,
	output wire SWIPT_OUT2,
	output wire SWIPT_OUT3,
	input wire swiptONHeartbeat
	);
	
	//-----------------------------//
	// TA heartbeat implementation //
	// Experimental at this point  //
	// Update status after testing //
	//-----------------------------//
	reg [23:0] heartbeatCounter;
	// oldheartbeat should be zero on startup!
	reg oldheartbeat = 0;
	// swiptAlive should be zero on startup!
    reg swiptAlive = 0;
	wire heartbeatEdge;
	
	// Edge detection on the heartbeat signal
	assign heartbeatEdge = swiptONHeartbeat ^ oldheartbeat;
	
	always @(posedge clk) begin
	
	   // Keep track of the heartbeat value of the previous cycle for the edge detection	
	   oldheartbeat <= swiptONHeartbeat;
	
	   // Synchronous reset
	   if (~nrst) begin
	       heartbeatCounter <= 0;
	       swiptAlive <= 0;
	   end
	   // Actual heartbeat logic
	   else begin
	       // On a new heartbeatEdge, swipt is live and counter is reset
	       if(heartbeatEdge) begin
	           heartbeatCounter <= 0;
	           swiptAlive <= 1;
	       end
	       else begin
	           // If last heartbeat more than 1m cycles ago, swipt is dead. DO NOT COUNT TO AVOID OVERFLOW OF COUNTER
	           if(heartbeatCounter >= 1000000) begin
	               swiptAlive <= 0;	         
	           end
	           // Increment counter
	           else begin
	               heartbeatCounter <= heartbeatCounter + 1;
	           end
	       end
	   end
	end
	
	// From here it is upto you (replace 1'b0 with something more usefull). Write the HDL that makes the power&data transfer work!
	// Ensure that you only activate the SWIPT_OUTs when the time is right! 
	// Do not trust the swiptAlive value to do this for you, this is a backup mechanism!

//------BEGIN PARAM & VAR------//

	///Frequency Default
	reg [19:0] freq = 20'h4E20; //Default freq is 38 100 Hz
	wire [19:0] freq_new;

    ///Freq Varibles
    wire freq_optimum; //Default no optimum
	wire freq_rdy; //Default 0
    wire freq_set_up_down; //Default up in nrst
    wire [19:0] best_freq;


    ///Power Variables
    wire power_optimum = 1; //Default no power optimum
	wire [19:0] mean_curr;

	///Data Send
    wire data_go;
	wire data_start;
//	wire startup_data;
//	reg startup_data_reg = 0;
//	wire startup_compl;
//	wire data_trans;
//	wire data_rec;
//	reg data_trans_reg = 0;
//	reg data_rec_reg = 0;
//	wire data_t_done;
//	wire data_r_done;


	wire d_startup;
	wire d_data;
	wire d;
	reg d_reg = 0;
	reg [11:0] l = 12'h0FA;
	wire [11:0] l_data;
	wire [11:0] l_adj;
	reg [11:0] l_def = 0;
	wire l_rdy;
	wire l_up_down;

	///Data Receive
	wire read;

//------END PARAM & VAR------//	
	always @(posedge data_start)begin
		l_def <= l;
		//startup_data_reg <= 1;
	end

//	always @(posedge startup_compl)begin
//		data_trans_reg <= 1;
//		data_rec_reg <= 0;
//		startup_data_reg <= 0;
//	end

//	always @(posedge data_t_done)begin
//		data_trans_reg <= 0;
//		data_rec_reg <= 1;
//		l <= l_def;
//	end

//	always @(posedge clk)begin
//		if(startup_data)begin
//			d_reg <= d_startup;
//		end
//		else if(data_trans)begin
//			d_reg <= d_data;
//		end
//	end
	
//------BEGIN MODULES------//
	
	Freq inst_freq (
			.clk (clk),
            .nrst (nrst),
			.data_start (data_start),
            .ADC_in (ADC_in),
			.freq (freq),
            .freq_ready (freq_rdy),
            .freq_set_up_down (freq_set_up_down),
            .freq_opt (freq_optimum),
			.best_freq (best_freq),
			.l_rdy (l_rdy),
			.l_up_down (l_up_down)
			);

	SwiptOut inst_swiptout (
			.clk (clk),
			.nrst (nrst),
			.freq (freq),
			.l (l),
			.SWIPT_OUT0 (SWIPT_OUT0),
			.SWIPT_OUT1 (SWIPT_OUT1),
			.SWIPT_OUT2 (SWIPT_OUT2),
			.SWIPT_OUT3 (SWIPT_OUT3)
			);

	Optimization inst_optimization (
			.clk (clk),
			.nrst (nrst),
			.swiptAlive (swiptAlive),
			.freq (freq),
			.freq_optimum (freq_optimum),
			.freq_rdy (freq_rdy),
			.freq_set_up_down (freq_set_up_down),
			.power_optimum (power_optimum),
			.best_freq (best_freq),
			.data_go (data_go),
			.data_start (data_start),
			.freq_new (freq_new)
			);

//	DataStream inst_datastream (
//			.clk (clk),
//            .nrst (nrst),
//			.data_trans (data_trans),
//			.datastream (bitstream),
//			.data_t_done (data_t_done),
//			.d (d_data)
//			);

//	StartupData inst_startupdata(
//			.clk (clk),
//			.nrst (nrst),
//			.data_start (data_start),
//			.startup_data (startup_data),
//			.startup_compl (startup_compl),
//			.d (d_startup)
//			);

//	CalcL inst_calcl (
//			.clk (clk),
//			.nrst (nrst),
//			.startup_data (startup_data),
//			.data_start (data_start),
//			.data_trans (data_trans),
//			.data_rec (data_rec),
//			.l_def (l_def),
//			.d (d),
//			.l (l_data)
//			);

//	DutyAdjust inst_dutyadjust(
//			.clk (clk),
//			.nrst (nrst),
//			.data_start (data_start),
//			.data_trans (data_trans),
//			.data_rec (data_rec),
//			.l_rdy (l_rdy),
//			.l_up_down (l_up_down),
//			.l (l),
//			.l_data (l_data),
//			.l_adj (l_adj)
//			);

//	ReadData inst_readdata(
//			.clk (clk),
//			.nrst (nrst),
//			.data_rec (data_rec),
//			.ADC (ADC_in),
//			.mean_def (mean_curr),
//			.read (read)
//			);

//	GetMeanCurrent inst_getmeancurr(
//			.clk (clk),
//			.nrst (nrst),
//			.data_go (data_go),
//			.data_start (data_start),
//			.ADC (ADC_in),
//			.mean_curr (mean_curr)
//			);

//------END MODULES------//

//------BEGIN ASSIGNMENT------//
	always @(negedge clk)begin
		freq <= freq_new;
	end
//	always @(posedge clk)begin
//		l <= l_adj;
//	end
	
//	assign startup_data = startup_data_reg;
//	assign data_trans = data_trans_reg;
//	assign data_rec = data_rec_reg;
//	assign d = d_reg;

//------END ASSIGNMENT------//


endmodule