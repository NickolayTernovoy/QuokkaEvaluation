// PLEASE READ THIS, IT MAY SAVE YOU SOME TIME AND MONEY, THANK YOU!
// * This file was generated by Quokka FPGA Toolkit.
// * Generated code is your property, do whatever you want with it
// * Place custom code between [BEGIN USER ***] and [END USER ***].
// * CAUTION: All code outside of [USER] scope is subject to regeneration.
// * Bad things happen sometimes in developer's life,
//   it is recommended to use source control management software (e.g. git, bzr etc) to keep your custom code safe'n'sound.
// * Internal structure of code is subject to change.
//   You can use some of signals in custom code, but most likely they will not exist in future (e.g. will get shorter or gone completely)
// * Please send your feedback, comments, improvement ideas etc. to evmuryshkin@gmail.com
// * Visit https://github.com/EvgenyMuryshkin/QuokkaEvaluation to access latest version of playground
// 
// DISCLAIMER:
//   Code comes AS-IS, it is your responsibility to make sure it is working as expected
//   no responsibility will be taken for any loss or damage caused by use of Quokka toolkit.
// 
// System configuration name is CompositionModule_TopLevel, clock frequency is 1Hz, Top-level
// FSM summary
// -- Packages
module CompositionModule_TopLevel (
// [BEGIN USER PORTS]
// [END USER PORTS]

	input  CompositionModuleIsEnabled,
	output CompositionModuleHasData,
	output [8: 1] CompositionModuleData,
	output [8: 1] CompositionModuleFixed1,
	output [8: 1] CompositionModuleFixed2,
	output [8: 1] CompositionModuleFixed3
    );

// [BEGIN USER SIGNALS]
// [END USER SIGNALS]
localparam HiSignal = 1'b1;
localparam LoSignal = 1'b0;
wire  CompositionModule_TopLevel_CompositionModuleIsEnabled;
wire  CompositionModule_TopLevel_CompositionModuleHasData;
wire  [8:1] CompositionModule_TopLevel_CompositionModuleData;
wire  [8:1] CompositionModule_TopLevel_CompositionModuleFixed1;
wire  [8:1] CompositionModule_TopLevel_CompositionModuleFixed2;
wire  [8:1] CompositionModule_TopLevel_CompositionModuleFixed3;
wire  CompositionModule_TopLevel_CompositionModule_IsEnabled;
reg  CompositionModule_TopLevel_CompositionModule_HasData = 1'b0;
reg  [8:1] CompositionModule_TopLevel_CompositionModule_Data = 8'b00000000;
reg  [8:1] CompositionModule_TopLevel_CompositionModule_Fixed1 = 8'b00000000;
reg  [8:1] CompositionModule_TopLevel_CompositionModule_Fixed2 = 8'b00000000;
reg  [8:1] CompositionModule_TopLevel_CompositionModule_Fixed3 = 8'b00000000;
wire  CompositionModule_TopLevel_CompositionModule_Zero = 1'b0;
wire  CompositionModule_TopLevel_CompositionModule_One = 1'b1;
wire  CompositionModule_TopLevel_CompositionModule_true = 1'b1;
wire  CompositionModule_TopLevel_CompositionModule_false = 1'b0;
wire  [4:1] CompositionModule_TopLevel_CompositionModule__L14F31T33_Expr = 4'b1010;
wire  [5:1] CompositionModule_TopLevel_CompositionModule__L15F31T33_Expr = 5'b10100;
wire  [5:1] CompositionModule_TopLevel_CompositionModule__L16F30T32_Expr = 5'b10100;
wire  CompositionModule_TopLevel_CompositionModule_Inputs_IsEnabled;
reg  CompositionModule_TopLevel_CompositionModule_Emitter_IsEnabled = 1'b0;
reg  CompositionModule_TopLevel_CompositionModule_Emitter_Ack = 1'b0;
reg  [8:1] CompositionModule_TopLevel_CompositionModule_Emitter_Data = 8'b00000000;
reg  CompositionModule_TopLevel_CompositionModule_Emitter_HasData = 1'b0;
reg  CompositionModule_TopLevel_CompositionModule_Transmitter_Trigger = 1'b0;
reg  CompositionModule_TopLevel_CompositionModule_Transmitter_Ack = 1'b0;
reg  [8:1] CompositionModule_TopLevel_CompositionModule_Transmitter_Data = 8'b00000000;
reg  CompositionModule_TopLevel_CompositionModule_Transmitter_Bit = 1'b0;
reg  CompositionModule_TopLevel_CompositionModule_Transmitter_IsReady = 1'b0;
reg  CompositionModule_TopLevel_CompositionModule_Transmitter_IsTransmitting = 1'b0;
reg  CompositionModule_TopLevel_CompositionModule_Transmitter_IsTransmissionStarted = 1'b0;
reg  CompositionModule_TopLevel_CompositionModule_Receiver_IsValid = 1'b0;
reg  CompositionModule_TopLevel_CompositionModule_Receiver_Ack = 1'b0;
reg  CompositionModule_TopLevel_CompositionModule_Receiver_Bit = 1'b0;
reg  CompositionModule_TopLevel_CompositionModule_Receiver_HasData = 1'b0;
reg  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_Data = 8'b00000000;
reg  [8:1] CompositionModule_TopLevel_CompositionModule_Receiver_PartialData = 8'b00000000;
	assign CompositionModule_TopLevel_CompositionModuleIsEnabled = CompositionModuleIsEnabled;
// Top-level entity connections
assign CompositionModule_TopLevel_Clock = Clock;
assign CompositionModuleHasData = CompositionModule_TopLevel_CompositionModuleHasData;
assign CompositionModuleData = CompositionModule_TopLevel_CompositionModuleData;
assign CompositionModuleFixed1 = CompositionModule_TopLevel_CompositionModuleFixed1;
assign CompositionModuleFixed2 = CompositionModule_TopLevel_CompositionModuleFixed2;
assign CompositionModuleFixed3 = CompositionModule_TopLevel_CompositionModuleFixed3;
assign CompositionModule_TopLevel_CompositionModule_IsEnabled = CompositionModule_TopLevel_CompositionModuleIsEnabled;
assign CompositionModule_TopLevel_CompositionModuleHasData = CompositionModule_TopLevel_CompositionModule_HasData;
assign CompositionModule_TopLevel_CompositionModuleData = CompositionModule_TopLevel_CompositionModule_Data;
assign CompositionModule_TopLevel_CompositionModuleFixed1 = CompositionModule_TopLevel_CompositionModule_Fixed1;
assign CompositionModule_TopLevel_CompositionModuleFixed2 = CompositionModule_TopLevel_CompositionModule_Fixed2;
assign CompositionModule_TopLevel_CompositionModuleFixed3 = CompositionModule_TopLevel_CompositionModule_Fixed3;
assign CompositionModule_TopLevel_CompositionModule_Inputs_IsEnabled = CompositionModule_TopLevel_CompositionModule_IsEnabled;
// [BEGIN USER ARCHITECTURE]
// [END USER ARCHITECTURE]
endmodule
