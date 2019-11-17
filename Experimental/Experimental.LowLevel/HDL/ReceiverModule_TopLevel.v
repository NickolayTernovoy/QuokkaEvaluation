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
// System configuration name is ReceiverModule_TopLevel, clock frequency is 1Hz, Top-level
// FSM summary
// -- Packages
module ReceiverModule_TopLevel (
// [BEGIN USER PORTS]
// [END USER PORTS]

	input  Clock,
	input  Reset,
	input  ReceiverModuleIsValid,
	input  ReceiverModuleAck,
	input  ReceiverModuleBit,
	output ReceiverModuleHasData,
	output [8: 1] ReceiverModuleData,
	output [8: 1] ReceiverModulePartialData
    );

// [BEGIN USER SIGNALS]
// [END USER SIGNALS]
localparam HiSignal = 1'b1;
localparam LoSignal = 1'b0;
wire  ReceiverModule_TopLevel_Clock;
wire  ReceiverModule_TopLevel_Reset;
wire  ReceiverModule_TopLevel_ReceiverModuleIsValid;
wire  ReceiverModule_TopLevel_ReceiverModuleAck;
wire  ReceiverModule_TopLevel_ReceiverModuleBit;
wire  ReceiverModule_TopLevel_ReceiverModuleHasData;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModuleData;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModulePartialData;
wire  ReceiverModule_TopLevel_ReceiverModule_Clock;
wire  ReceiverModule_TopLevel_ReceiverModule_Reset;
wire  ReceiverModule_TopLevel_ReceiverModule_IsValid;
wire  ReceiverModule_TopLevel_ReceiverModule_Ack;
wire  ReceiverModule_TopLevel_ReceiverModule_Bit;
wire  ReceiverModule_TopLevel_ReceiverModule_HasData;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_Data;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_PartialData;
wire  ReceiverModule_TopLevel_ReceiverModule_Zero = 1'b0;
wire  ReceiverModule_TopLevel_ReceiverModule_One = 1'b1;
wire  ReceiverModule_TopLevel_ReceiverModule_true = 1'b1;
wire  ReceiverModule_TopLevel_ReceiverModule_false = 1'b0;
wire  [2:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F46T71_Expr = 2'b10;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F56T60_Expr = 8'b10000000;
wire  ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F63T64_Expr = 1'b0;
wire  ReceiverModule_TopLevel_ReceiverModule_Inputs_IsValid;
wire  ReceiverModule_TopLevel_ReceiverModule_Inputs_Ack;
wire  ReceiverModule_TopLevel_ReceiverModule_Inputs_Bit;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F36T65_Expr;
wire  [32:1] ReceiverModule_TopLevel_ReceiverModule_State_FSM;
wire  [32:1] ReceiverModule_TopLevel_ReceiverModule_State_FSMDefault = 32'b00000000000000000000000000000000;
reg  ReceiverModule_TopLevel_ReceiverModule_State_FSMWriteEnable = 1'b0;
wire  [32:1] ReceiverModule_TopLevel_ReceiverModule_NextState_FSM;
wire  [32:1] ReceiverModule_TopLevel_ReceiverModule_NextState_FSMDefault = 32'b00000000000000000000000000000000;
reg  ReceiverModule_TopLevel_ReceiverModule_NextState_FSMWriteEnable = 1'b0;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_State_Data;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_State_DataDefault = 8'b00000000;
reg  ReceiverModule_TopLevel_ReceiverModule_State_DataWriteEnable = 1'b0;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_NextState_Data;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_NextState_DataDefault = 8'b00000000;
reg  ReceiverModule_TopLevel_ReceiverModule_NextState_DataWriteEnable = 1'b0;
wire  ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_Expr;
wire signed  [33:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprLhs;
wire signed  [33:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprRhs;
reg  [8:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup = 8'b00000000;
wire  ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_LookupMultiplexerAddress;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup1;
wire  [8:1] ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup2;
wire  BoardSignals_Clock;
wire  BoardSignals_Reset;
wire  BoardSignals_Running;
wire  BoardSignals_Starting;
wire  BoardSignals_Started;
reg  InternalReset = 1'b0;
reg  [32:1] ReceiverModule_TopLevel_ReceiverModule_State_FSMQ = 32'b00000000000000000000000000000000;
reg  [32:1] ReceiverModule_TopLevel_ReceiverModule_State_FSMD = 32'b00000000000000000000000000000000;
reg  [32:1] ReceiverModule_TopLevel_ReceiverModule_NextState_FSMQ = 32'b00000000000000000000000000000000;
reg  [32:1] ReceiverModule_TopLevel_ReceiverModule_NextState_FSMD = 32'b00000000000000000000000000000000;
reg  [8:1] ReceiverModule_TopLevel_ReceiverModule_State_DataQ = 8'b00000000;
reg  [8:1] ReceiverModule_TopLevel_ReceiverModule_State_DataD = 8'b00000000;
reg  [8:1] ReceiverModule_TopLevel_ReceiverModule_NextState_DataQ = 8'b00000000;
reg  [8:1] ReceiverModule_TopLevel_ReceiverModule_NextState_DataD = 8'b00000000;
work_Quokka_BoardSignalsProc ReceiverModule_TopLevel_ReceiverModule_BoardSignalsConnection(BoardSignals_Clock,BoardSignals_Reset,BoardSignals_Running,BoardSignals_Starting,BoardSignals_Started,ReceiverModule_TopLevel_ReceiverModule_Clock,ReceiverModule_TopLevel_ReceiverModule_Reset,InternalReset);
always @(posedge BoardSignals_Clock)
begin
if ( BoardSignals_Reset == 1 ) begin
ReceiverModule_TopLevel_ReceiverModule_State_FSMQ <= ReceiverModule_TopLevel_ReceiverModule_State_FSMDefault;
end
else if ( ReceiverModule_TopLevel_ReceiverModule_State_FSMWriteEnable == 1 ) begin
ReceiverModule_TopLevel_ReceiverModule_State_FSMQ <= ReceiverModule_TopLevel_ReceiverModule_State_FSMD;
end
else begin
ReceiverModule_TopLevel_ReceiverModule_State_FSMQ <= ReceiverModule_TopLevel_ReceiverModule_State_FSMQ;
end
end
always @(posedge BoardSignals_Clock)
begin
if ( BoardSignals_Reset == 1 ) begin
ReceiverModule_TopLevel_ReceiverModule_NextState_FSMQ <= ReceiverModule_TopLevel_ReceiverModule_NextState_FSMDefault;
end
else if ( ReceiverModule_TopLevel_ReceiverModule_NextState_FSMWriteEnable == 1 ) begin
ReceiverModule_TopLevel_ReceiverModule_NextState_FSMQ <= ReceiverModule_TopLevel_ReceiverModule_NextState_FSMD;
end
else begin
ReceiverModule_TopLevel_ReceiverModule_NextState_FSMQ <= ReceiverModule_TopLevel_ReceiverModule_NextState_FSMQ;
end
end
always @(posedge BoardSignals_Clock)
begin
if ( BoardSignals_Reset == 1 ) begin
ReceiverModule_TopLevel_ReceiverModule_State_DataQ <= ReceiverModule_TopLevel_ReceiverModule_State_DataDefault;
end
else if ( ReceiverModule_TopLevel_ReceiverModule_State_DataWriteEnable == 1 ) begin
ReceiverModule_TopLevel_ReceiverModule_State_DataQ <= ReceiverModule_TopLevel_ReceiverModule_State_DataD;
end
else begin
ReceiverModule_TopLevel_ReceiverModule_State_DataQ <= ReceiverModule_TopLevel_ReceiverModule_State_DataQ;
end
end
always @(posedge BoardSignals_Clock)
begin
if ( BoardSignals_Reset == 1 ) begin
ReceiverModule_TopLevel_ReceiverModule_NextState_DataQ <= ReceiverModule_TopLevel_ReceiverModule_NextState_DataDefault;
end
else if ( ReceiverModule_TopLevel_ReceiverModule_NextState_DataWriteEnable == 1 ) begin
ReceiverModule_TopLevel_ReceiverModule_NextState_DataQ <= ReceiverModule_TopLevel_ReceiverModule_NextState_DataD;
end
else begin
ReceiverModule_TopLevel_ReceiverModule_NextState_DataQ <= ReceiverModule_TopLevel_ReceiverModule_NextState_DataQ;
end
end
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_Expr = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprLhs == ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprRhs ? 1'b1 : 1'b0;
always @*
begin
case (ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_LookupMultiplexerAddress)
    'b0:
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup1;
    'b1:
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup2;
  default:
ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup = 'b00000000;
endcase

end
	assign ReceiverModule_TopLevel_ReceiverModuleIsValid = ReceiverModuleIsValid;
	assign ReceiverModule_TopLevel_ReceiverModuleAck = ReceiverModuleAck;
	assign ReceiverModule_TopLevel_ReceiverModuleBit = ReceiverModuleBit;
// Top-level entity connections
assign ReceiverModule_TopLevel_Clock = Clock;
work_Quokka_Metastability ReceiverModule_TopLevel_Reset_mtsb (BoardSignals_Clock, BoardSignals_Reset, ~Reset, ReceiverModule_TopLevel_Reset); // Inverted
assign ReceiverModuleHasData = ReceiverModule_TopLevel_ReceiverModuleHasData;
assign ReceiverModuleData = ReceiverModule_TopLevel_ReceiverModuleData;
assign ReceiverModulePartialData = ReceiverModule_TopLevel_ReceiverModulePartialData;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_LookupMultiplexerAddress = ReceiverModule_TopLevel_ReceiverModule_Inputs_Bit;
assign ReceiverModule_TopLevel_ReceiverModule_State_FSM = ReceiverModule_TopLevel_ReceiverModule_State_FSMQ;
assign ReceiverModule_TopLevel_ReceiverModule_NextState_FSM = ReceiverModule_TopLevel_ReceiverModule_NextState_FSMQ;
assign ReceiverModule_TopLevel_ReceiverModule_State_Data = ReceiverModule_TopLevel_ReceiverModule_State_DataQ;
assign ReceiverModule_TopLevel_ReceiverModule_NextState_Data = ReceiverModule_TopLevel_ReceiverModule_NextState_DataQ;
assign ReceiverModule_TopLevel_ReceiverModule_Clock = ReceiverModule_TopLevel_Clock;
assign ReceiverModule_TopLevel_ReceiverModule_Reset = ReceiverModule_TopLevel_Reset;
assign ReceiverModule_TopLevel_ReceiverModule_IsValid = ReceiverModule_TopLevel_ReceiverModuleIsValid;
assign ReceiverModule_TopLevel_ReceiverModule_Ack = ReceiverModule_TopLevel_ReceiverModuleAck;
assign ReceiverModule_TopLevel_ReceiverModule_Bit = ReceiverModule_TopLevel_ReceiverModuleBit;
assign ReceiverModule_TopLevel_ReceiverModuleHasData = ReceiverModule_TopLevel_ReceiverModule_HasData;
assign ReceiverModule_TopLevel_ReceiverModuleData = ReceiverModule_TopLevel_ReceiverModule_Data;
assign ReceiverModule_TopLevel_ReceiverModulePartialData = ReceiverModule_TopLevel_ReceiverModule_PartialData;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprLhs = { {1{1'b0}}, ReceiverModule_TopLevel_ReceiverModule_State_FSM }/*expand*/;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_ExprRhs = { {31{1'b0}}, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F46T71_Expr }/*expand*/;
assign ReceiverModule_TopLevel_ReceiverModule_Inputs_IsValid = ReceiverModule_TopLevel_ReceiverModule_IsValid;
assign ReceiverModule_TopLevel_ReceiverModule_Inputs_Ack = ReceiverModule_TopLevel_ReceiverModule_Ack;
assign ReceiverModule_TopLevel_ReceiverModule_Inputs_Bit = ReceiverModule_TopLevel_ReceiverModule_Bit;
assign ReceiverModule_TopLevel_ReceiverModule_HasData = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L8F32T71_Expr;
assign ReceiverModule_TopLevel_ReceiverModule_Data = ReceiverModule_TopLevel_ReceiverModule_State_Data/*cast*/;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F36T65_Expr = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup/*cast*/;
assign ReceiverModule_TopLevel_ReceiverModule_PartialData = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F36T65_Expr/*cast*/;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup1 = { {7{1'b0}}, ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F63T64_Expr }/*expand*/;
assign ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F43T64_Lookup2 = ReceiverModule_TopLevel_ReceiverModule_ReceiverModule_L10F56T60_Expr/*cast*/;
// [BEGIN USER ARCHITECTURE]
// [END USER ARCHITECTURE]
endmodule