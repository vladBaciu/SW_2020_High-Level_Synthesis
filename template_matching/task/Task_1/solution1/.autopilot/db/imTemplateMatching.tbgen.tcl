set C_TypeInfoList {{ 
"imTemplateMatching" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"imINPUT": [[], {"array": [ {"array": [ {"scalar": "int"}, [1200]]}, [1200]]}] }, {"imOUTPUT": [[], {"array": [ {"array": [ {"scalar": "int"}, [1200]]}, [1200]]}] }, {"imHeight": [[], {"scalar": "int"}] }, {"imWidth": [[], {"scalar": "int"}] }, {"tplINPUT": [[], {"array": [ {"array": [ {"scalar": "int"}, [1200]]}, [1200]]}] }, {"tplOUTPUT": [[], {"array": [ {"array": [ {"scalar": "int"}, [1200]]}, [1200]]}] }, {"tplHeight": [[], {"scalar": "int"}] }, {"tplWidth": [[], {"scalar": "int"}] }],[],""]
}}
set moduleName imTemplateMatching
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {imTemplateMatching}
set C_modelType { void 0 }
set C_modelArgList {
	{ imINPUT int 32 regular {fifo 0 volatile }  }
	{ imOUTPUT int 32 regular {array 1440000 { 2 3 } 3 1 }  }
	{ imHeight int 32 regular  }
	{ imWidth int 32 regular  }
	{ tplINPUT int 32 regular {array 1440000 { 1 3 } 3 1 }  }
	{ tplOUTPUT int 32 regular {array 1440000 { 2 3 } 3 1 }  }
	{ tplHeight int 32 regular  }
	{ tplWidth int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imINPUT", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "imINPUT","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1199,"step" : 1},{"low" : 0,"up" : 1199,"step" : 1}]}]}]} , 
 	{ "Name" : "imOUTPUT", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "imOUTPUT","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1199,"step" : 1},{"low" : 0,"up" : 1199,"step" : 1}]}]}]} , 
 	{ "Name" : "imHeight", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "imHeight","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "imWidth", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "imWidth","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tplINPUT", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tplINPUT","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1199,"step" : 1},{"low" : 0,"up" : 1199,"step" : 1}]}]}]} , 
 	{ "Name" : "tplOUTPUT", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tplOUTPUT","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1199,"step" : 1},{"low" : 0,"up" : 1199,"step" : 1}]}]}]} , 
 	{ "Name" : "tplHeight", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tplHeight","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tplWidth", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tplWidth","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imINPUT_dout sc_in sc_lv 32 signal 0 } 
	{ imINPUT_empty_n sc_in sc_logic 1 signal 0 } 
	{ imINPUT_read sc_out sc_logic 1 signal 0 } 
	{ imOUTPUT_address0 sc_out sc_lv 21 signal 1 } 
	{ imOUTPUT_ce0 sc_out sc_logic 1 signal 1 } 
	{ imOUTPUT_we0 sc_out sc_logic 1 signal 1 } 
	{ imOUTPUT_d0 sc_out sc_lv 32 signal 1 } 
	{ imOUTPUT_q0 sc_in sc_lv 32 signal 1 } 
	{ imHeight sc_in sc_lv 32 signal 2 } 
	{ imWidth sc_in sc_lv 32 signal 3 } 
	{ tplINPUT_address0 sc_out sc_lv 21 signal 4 } 
	{ tplINPUT_ce0 sc_out sc_logic 1 signal 4 } 
	{ tplINPUT_q0 sc_in sc_lv 32 signal 4 } 
	{ tplOUTPUT_address0 sc_out sc_lv 21 signal 5 } 
	{ tplOUTPUT_ce0 sc_out sc_logic 1 signal 5 } 
	{ tplOUTPUT_we0 sc_out sc_logic 1 signal 5 } 
	{ tplOUTPUT_d0 sc_out sc_lv 32 signal 5 } 
	{ tplOUTPUT_q0 sc_in sc_lv 32 signal 5 } 
	{ tplHeight sc_in sc_lv 32 signal 6 } 
	{ tplWidth sc_in sc_lv 32 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imINPUT_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imINPUT", "role": "dout" }} , 
 	{ "name": "imINPUT_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imINPUT", "role": "empty_n" }} , 
 	{ "name": "imINPUT_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imINPUT", "role": "read" }} , 
 	{ "name": "imOUTPUT_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "imOUTPUT", "role": "address0" }} , 
 	{ "name": "imOUTPUT_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imOUTPUT", "role": "ce0" }} , 
 	{ "name": "imOUTPUT_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imOUTPUT", "role": "we0" }} , 
 	{ "name": "imOUTPUT_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imOUTPUT", "role": "d0" }} , 
 	{ "name": "imOUTPUT_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imOUTPUT", "role": "q0" }} , 
 	{ "name": "imHeight", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imHeight", "role": "default" }} , 
 	{ "name": "imWidth", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imWidth", "role": "default" }} , 
 	{ "name": "tplINPUT_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "tplINPUT", "role": "address0" }} , 
 	{ "name": "tplINPUT_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tplINPUT", "role": "ce0" }} , 
 	{ "name": "tplINPUT_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tplINPUT", "role": "q0" }} , 
 	{ "name": "tplOUTPUT_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "tplOUTPUT", "role": "address0" }} , 
 	{ "name": "tplOUTPUT_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tplOUTPUT", "role": "ce0" }} , 
 	{ "name": "tplOUTPUT_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tplOUTPUT", "role": "we0" }} , 
 	{ "name": "tplOUTPUT_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tplOUTPUT", "role": "d0" }} , 
 	{ "name": "tplOUTPUT_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tplOUTPUT", "role": "q0" }} , 
 	{ "name": "tplHeight", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tplHeight", "role": "default" }} , 
 	{ "name": "tplWidth", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tplWidth", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "5", "9", "15", "21", "24"],
		"CDFG" : "imTemplateMatching",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "imINPUT", "Type" : "Fifo", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "15", "SubInstance" : "grp_imGrayScale26_fu_196", "Port" : "imINPUT"}]},
		{"Name" : "imOUTPUT", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "1", "SubInstance" : "grp_imGreyNormalization_fu_168", "Port" : "imINPUT"},
			{"ID" : "15", "SubInstance" : "grp_imGrayScale26_fu_196", "Port" : "imOUTPUT"},
			{"ID" : "21", "SubInstance" : "grp_imDiff_fu_208", "Port" : "imINPUT"}]},
		{"Name" : "imHeight", "Type" : "None", "Direction" : "I"},
		{"Name" : "imWidth", "Type" : "None", "Direction" : "I"},
		{"Name" : "tplINPUT", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "9", "SubInstance" : "grp_imGrayScale_fu_184", "Port" : "imINPUT"}]},
		{"Name" : "tplOUTPUT", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "5", "SubInstance" : "grp_imGreyNormalization_fu_176", "Port" : "imINPUT"},
			{"ID" : "9", "SubInstance" : "grp_imGrayScale_fu_184", "Port" : "imOUTPUT"},
			{"ID" : "21", "SubInstance" : "grp_imDiff_fu_208", "Port" : "tplINPUT"}]},
		{"Name" : "tplHeight", "Type" : "None", "Direction" : "I"},
		{"Name" : "tplWidth", "Type" : "None", "Direction" : "I"}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_imGreyNormalization_fu_168"},
		{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_imGreyNormalization_fu_176"},
		{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_imGrayScale_fu_184"},
		{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_imGrayScale26_fu_196"},
		{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_imDiff_fu_208"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_imGreyNormalization_fu_168", "Parent" : "0", "Child" : ["2", "3", "4"],
		"CDFG" : "imGreyNormalization",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "imINPUT", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "imHeight", "Type" : "None", "Direction" : "I"},
		{"Name" : "imWidth", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_imGreyNormalization_fu_168.imTemplateMatchinbkb_x_U19", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_imGreyNormalization_fu_168.imTemplateMatchineOg_U20", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_imGreyNormalization_fu_168.imTemplateMatchinfYi_U21", "Parent" : "1"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_imGreyNormalization_fu_176", "Parent" : "0", "Child" : ["6", "7", "8"],
		"CDFG" : "imGreyNormalization",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "imINPUT", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "imHeight", "Type" : "None", "Direction" : "I"},
		{"Name" : "imWidth", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_imGreyNormalization_fu_176.imTemplateMatchinbkb_x_U19", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_imGreyNormalization_fu_176.imTemplateMatchineOg_U20", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_imGreyNormalization_fu_176.imTemplateMatchinfYi_U21", "Parent" : "5"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_imGrayScale_fu_184", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14"],
		"CDFG" : "imGrayScale",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "imINPUT", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "imOUTPUT", "Type" : "Memory", "Direction" : "O"},
		{"Name" : "imHeight", "Type" : "None", "Direction" : "I"},
		{"Name" : "imWidth", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_imGrayScale_fu_184.imTemplateMatchinbkb_x_U10", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_imGrayScale_fu_184.imTemplateMatchincud_x_U11", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_imGrayScale_fu_184.imTemplateMatchincud_x_U12", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_imGrayScale_fu_184.imTemplateMatchindEe_x_U13", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_imGrayScale_fu_184.imTemplateMatchindEe_x_U14", "Parent" : "9"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_imGrayScale26_fu_196", "Parent" : "0", "Child" : ["16", "17", "18", "19", "20"],
		"CDFG" : "imGrayScale26",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "imINPUT", "Type" : "Fifo", "Direction" : "I",
			"BlockSignal" : [
			{"Name" : "imINPUT_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "imOUTPUT", "Type" : "Memory", "Direction" : "O"},
		{"Name" : "imHeight", "Type" : "None", "Direction" : "I"},
		{"Name" : "imWidth", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_imGrayScale26_fu_196.imTemplateMatchinbkb_U1", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_imGrayScale26_fu_196.imTemplateMatchincud_U2", "Parent" : "15"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_imGrayScale26_fu_196.imTemplateMatchincud_U3", "Parent" : "15"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_imGrayScale26_fu_196.imTemplateMatchindEe_U4", "Parent" : "15"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_imGrayScale26_fu_196.imTemplateMatchindEe_U5", "Parent" : "15"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_imDiff_fu_208", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "imDiff",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "1",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "imINPUT", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "22", "SubInstance" : "imDiff_Loop_L66_proc_U0", "Port" : "imINPUT"}]},
		{"Name" : "imHeight", "Type" : "None", "Direction" : "I"},
		{"Name" : "imWidth", "Type" : "None", "Direction" : "I"},
		{"Name" : "tplINPUT", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "22", "SubInstance" : "imDiff_Loop_L66_proc_U0", "Port" : "tplINPUT"}]},
		{"Name" : "tplHeight", "Type" : "None", "Direction" : "I"},
		{"Name" : "tplWidth", "Type" : "None", "Direction" : "I"},
		{"Name" : "output_struct_x", "Type" : "Vld", "Direction" : "O",
			"SubConnect" : [
			{"ID" : "22", "SubInstance" : "imDiff_Loop_L66_proc_U0", "Port" : "output_struct_x"}]},
		{"Name" : "output_struct_y", "Type" : "Vld", "Direction" : "O",
			"SubConnect" : [
			{"ID" : "22", "SubInstance" : "imDiff_Loop_L66_proc_U0", "Port" : "output_struct_y"}]},
		{"Name" : "output_struct_SAD", "Type" : "Vld", "Direction" : "O",
			"SubConnect" : [
			{"ID" : "22", "SubInstance" : "imDiff_Loop_L66_proc_U0", "Port" : "output_struct_SAD"}]}],
		"InputProcess" : [
			{"ID" : "22", "Name" : "imDiff_Loop_L66_proc_U0", "ReadyCount" : "imDiff_Loop_L66_proc_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "22", "Name" : "imDiff_Loop_L66_proc_U0"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_imDiff_fu_208.imDiff_Loop_L66_proc_U0", "Parent" : "21", "Child" : ["23"],
		"CDFG" : "imDiff_Loop_L66_proc",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "imHeight", "Type" : "None", "Direction" : "I"},
		{"Name" : "tplHeight", "Type" : "None", "Direction" : "I"},
		{"Name" : "imWidth", "Type" : "None", "Direction" : "I"},
		{"Name" : "tplWidth", "Type" : "None", "Direction" : "I"},
		{"Name" : "imINPUT", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "tplINPUT", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "output_struct_y", "Type" : "Vld", "Direction" : "O"},
		{"Name" : "output_struct_x", "Type" : "Vld", "Direction" : "O"},
		{"Name" : "output_struct_SAD", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_imDiff_fu_208.imDiff_Loop_L66_proc_U0.imTemplateMatching8j_U25", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imTemplateMatching8j_x_U44", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19", "Max" : "1321067379"}
	, {"Name" : "Interval", "Min" : "20", "Max" : "1321067380"}
]}

set Spec2ImplPortList { 
	imINPUT { ap_fifo {  { imINPUT_dout fifo_data 0 32 }  { imINPUT_empty_n fifo_status 0 1 }  { imINPUT_read fifo_update 1 1 } } }
	imOUTPUT { ap_memory {  { imOUTPUT_address0 mem_address 1 21 }  { imOUTPUT_ce0 mem_ce 1 1 }  { imOUTPUT_we0 mem_we 1 1 }  { imOUTPUT_d0 mem_din 1 32 }  { imOUTPUT_q0 mem_dout 0 32 } } }
	imHeight { ap_none {  { imHeight in_data 0 32 } } }
	imWidth { ap_none {  { imWidth in_data 0 32 } } }
	tplINPUT { ap_memory {  { tplINPUT_address0 mem_address 1 21 }  { tplINPUT_ce0 mem_ce 1 1 }  { tplINPUT_q0 mem_dout 0 32 } } }
	tplOUTPUT { ap_memory {  { tplOUTPUT_address0 mem_address 1 21 }  { tplOUTPUT_ce0 mem_ce 1 1 }  { tplOUTPUT_we0 mem_we 1 1 }  { tplOUTPUT_d0 mem_din 1 32 }  { tplOUTPUT_q0 mem_dout 0 32 } } }
	tplHeight { ap_none {  { tplHeight in_data 0 32 } } }
	tplWidth { ap_none {  { tplWidth in_data 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	imINPUT { fifo_read 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
	{ imOUTPUT 3 }
	{ tplINPUT 3 }
	{ tplOUTPUT 3 }
}
