# This script segment is generated automatically by AutoPilot

set id 14
set name hls_real2xfft_muleOg
set corename simcore_mul
set op mul
set stage_num 3
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 1
set in1_width 15
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 31
set exp i0*i1
set arg_lists {i0 {16 1 +} i1 {15 0 +} p {31 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 17
set hasByteEnable 0
set MemName window_fn_coeff_tcud
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 512
set AddrWd 9
set TrueReset 0
set IsROM 1
set ROMData { "000101000111101" "000101000111110" "000101001000001" "000101001000111" "000101001001111" "000101001011001" "000101001100110" "000101001110101" "000101010000110" "000101010011001" "000101010101110" "000101011000110" "000101011100000" "000101011111100" "000101100011011" "000101100111100" "000101101011111" "000101110000100" "000101110101011" "000101111010101" "000110000000001" "000110000101111" "000110001011111" "000110010010001" "000110011000110" "000110011111101" "000110100110110" "000110101110001" "000110110101110" "000110111101101" "000111000101111" "000111001110011" "000111010111000" "000111100000000" "000111101001010" "000111110010110" "000111111100100" "001000000110100" "001000010000110" "001000011011011" "001000100110001" "001000110001001" "001000111100011" "001001000111111" "001001010011101" "001001011111110" "001001101100000" "001001111000011" "001010000101001" "001010010010001" "001010011111011" "001010101100110" "001010111010011" "001011001000010" "001011010110011" "001011100100110" "001011110011010" "001100000010001" "001100010001001" "001100100000010" "001100101111110" "001100111111011" "001101001111001" "001101011111010" "001101101111100" "001101111111111" "001110010000101" "001110100001011" "001110110010100" "001111000011101" "001111010101001" "001111100110110" "001111111000100" "010000001010100" "010000011100101" "010000101110111" "010001000001011" "010001010100000" "010001100110111" "010001111001111" "010010001101000" "010010100000010" "010010110011110" "010011000111011" "010011011011001" "010011101111000" "010100000011001" "010100010111010" "010100101011101" "010101000000000" "010101010100101" "010101101001011" "010101111110010" "010110010011001" "010110101000010" "010110111101011" "010111010010110" "010111101000001" "010111111101101" "011000010011010" "011000101001000" "011000111110111" "011001010100110" "011001101010110" "011010000000111" "011010010111000" "011010101101010" "011011000011101" "011011011010000" "011011110000011" "011100000111000" "011100011101100" "011100110100010" "011101001010111" "011101100001101" "011101111000100" "011110001111011" "011110100110010" "011110111101001" "011111010100001" "011111101011001" "100000000010001" "100000011001001" "100000110000010" "100001000111011" "100001011110011" "100001110101100" "100010001100101" "100010100011110" "100010111010111" "100011010010000" "100011101001001" "100100000000010" "100100010111011" "100100101110011" "100101000101011" "100101011100100" "100101110011100" "100110001010011" "100110100001011" "100110111000010" "100111001111001" "100111100101111" "100111111100101" "101000010011011" "101000101010000" "101001000000101" "101001010111001" "101001101101101" "101010000100000" "101010011010010" "101010110000100" "101011000110110" "101011011100110" "101011110010110" "101100001000110" "101100011110100" "101100110100010" "101101001001111" "101101011111011" "101101110100111" "101110001010001" "101110011111011" "101110110100011" "101111001001011" "101111011110010" "101111110010111" "110000000111100" "110000011100000" "110000110000010" "110001000100100" "110001011000100" "110001101100011" "110010000000010" "110010010011110" "110010100111010" "110010111010100" "110011001101110" "110011100000110" "110011110011100" "110100000110001" "110100011000101" "110100101011000" "110100111101001" "110101001111001" "110101100000111" "110101110010100" "110110000011111" "110110010101001" "110110100110001" "110110110111000" "110111000111101" "110111011000001" "110111101000011" "110111111000011" "111000001000010" "111000010111111" "111000100111010" "111000110110100" "111001000101100" "111001010100010" "111001100010110" "111001110001001" "111001111111010" "111010001101001" "111010011010110" "111010101000010" "111010110101011" "111011000010011" "111011001111001" "111011011011101" "111011100111111" "111011110011111" "111011111111101" "111100001011001" "111100010110011" "111100100001100" "111100101100010" "111100110110110" "111101000001000" "111101001011000" "111101010100110" "111101011110010" "111101100111100" "111101110000100" "111101111001010" "111110000001101" "111110001001111" "111110010001110" "111110011001100" "111110100000111" "111110101000000" "111110101110110" "111110110101011" "111110111011101" "111111000001110" "111111000111100" "111111001101000" "111111010010001" "111111010111001" "111111011011110" "111111100000001" "111111100100010" "111111101000000" "111111101011100" "111111101110110" "111111110001110" "111111110100100" "111111110110111" "111111111001000" "111111111010111" "111111111100011" "111111111101101" "111111111110101" "111111111111011" "111111111111110" "111111111111111" "111111111111110" "111111111111011" "111111111110101" "111111111101101" "111111111100011" "111111111010111" "111111111001000" "111111110110111" "111111110100100" "111111110001110" "111111101110110" "111111101011100" "111111101000000" "111111100100010" "111111100000001" "111111011011110" "111111010111001" "111111010010001" "111111001101000" "111111000111100" "111111000001110" "111110111011101" "111110110101011" "111110101110110" "111110101000000" "111110100000111" "111110011001100" "111110010001110" "111110001001111" "111110000001101" "111101111001010" "111101110000100" "111101100111100" "111101011110010" "111101010100110" "111101001011000" "111101000001000" "111100110110110" "111100101100010" "111100100001100" "111100010110011" "111100001011001" "111011111111101" "111011110011111" "111011100111111" "111011011011101" "111011001111001" "111011000010011" "111010110101011" "111010101000010" "111010011010110" "111010001101001" "111001111111010" "111001110001001" "111001100010110" "111001010100010" "111001000101100" "111000110110100" "111000100111010" "111000010111111" "111000001000010" "110111111000011" "110111101000011" "110111011000001" "110111000111101" "110110110111000" "110110100110001" "110110010101001" "110110000011111" "110101110010100" "110101100000111" "110101001111001" "110100111101001" "110100101011000" "110100011000101" "110100000110001" "110011110011100" "110011100000110" "110011001101110" "110010111010100" "110010100111010" "110010010011110" "110010000000010" "110001101100011" "110001011000100" "110001000100100" "110000110000010" "110000011100000" "110000000111100" "101111110010111" "101111011110010" "101111001001011" "101110110100011" "101110011111011" "101110001010001" "101101110100111" "101101011111011" "101101001001111" "101100110100010" "101100011110100" "101100001000110" "101011110010110" "101011011100110" "101011000110110" "101010110000100" "101010011010010" "101010000100000" "101001101101101" "101001010111001" "101001000000101" "101000101010000" "101000010011011" "100111111100101" "100111100101111" "100111001111001" "100110111000010" "100110100001011" "100110001010011" "100101110011100" "100101011100100" "100101000101011" "100100101110011" "100100010111011" "100100000000010" "100011101001001" "100011010010000" "100010111010111" "100010100011110" "100010001100101" "100001110101100" "100001011110011" "100001000111011" "100000110000010" "100000011001001" "100000000010001" "011111101011001" "011111010100001" "011110111101001" "011110100110010" "011110001111011" "011101111000100" "011101100001101" "011101001010111" "011100110100010" "011100011101100" "011100000111000" "011011110000011" "011011011010000" "011011000011101" "011010101101010" "011010010111000" "011010000000111" "011001101010110" "011001010100110" "011000111110111" "011000101001000" "011000010011010" "010111111101101" "010111101000001" "010111010010110" "010110111101011" "010110101000010" "010110010011001" "010101111110010" "010101101001011" "010101010100101" "010101000000000" "010100101011101" "010100010111010" "010100000011001" "010011101111000" "010011011011001" "010011000111011" "010010110011110" "010010100000010" "010010001101000" "010001111001111" "010001100110111" "010001010100000" "010001000001011" "010000101110111" "010000011100101" "010000001010100" "001111111000100" "001111100110110" "001111010101001" "001111000011101" "001110110010100" "001110100001011" "001110010000101" "001101111111111" "001101101111100" "001101011111010" "001101001111001" "001100111111011" "001100101111110" "001100100000010" "001100010001001" "001100000010001" "001011110011010" "001011100100110" "001011010110011" "001011001000010" "001010111010011" "001010101100110" "001010011111011" "001010010010001" "001010000101001" "001001111000011" "001001101100000" "001001011111110" "001001010011101" "001001000111111" "001000111100011" "001000110001001" "001000100110001" "001000011011011" "001000010000110" "001000000110100" "000111111100100" "000111110010110" "000111101001010" "000111100000000" "000111010111000" "000111001110011" "000111000101111" "000110111101101" "000110110101110" "000110101110001" "000110100110110" "000110011111101" "000110011000110" "000110010010001" "000110001011111" "000110000101111" "000110000000001" "000101111010101" "000101110101011" "000101110000100" "000101101011111" "000101100111100" "000101100011011" "000101011111100" "000101011100000" "000101011000110" "000101010101110" "000101010011001" "000101010000110" "000101001110101" "000101001100110" "000101001011001" "000101001001111" "000101001000111" "000101001000001" "000101000111110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 18
set hasByteEnable 0
set MemName window_fn_coeff_tdEe
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 512
set AddrWd 9
set TrueReset 0
set IsROM 1
set ROMData { "000101000111101" "000101000111111" "000101001000100" "000101001001011" "000101001010100" "000101001011111" "000101001101101" "000101001111101" "000101010001111" "000101010100011" "000101010111010" "000101011010011" "000101011101110" "000101100001011" "000101100101011" "000101101001101" "000101101110001" "000101110010111" "000101111000000" "000101111101010" "000110000010111" "000110001000111" "000110001111000" "000110010101011" "000110011100001" "000110100011001" "000110101010011" "000110110001111" "000110111001101" "000111000001110" "000111001010001" "000111010010101" "000111011011100" "000111100100101" "000111101110000" "000111110111101" "001000000001100" "001000001011101" "001000010110000" "001000100000101" "001000101011101" "001000110110110" "001001000010001" "001001001101110" "001001011001101" "001001100101110" "001001110010001" "001001111110110" "001010001011101" "001010011000110" "001010100110000" "001010110011100" "001011000001011" "001011001111011" "001011011101100" "001011101100000" "001011111010101" "001100001001100" "001100011000101" "001100101000000" "001100110111100" "001101000111010" "001101010111001" "001101100111011" "001101110111101" "001110001000010" "001110011001000" "001110101001111" "001110111011000" "001111001100011" "001111011101111" "001111101111101" "010000000001100" "010000010011100" "010000100101110" "010000111000001" "010001001010110" "010001011101011" "010001110000011" "010010000011011" "010010010110101" "010010101010000" "010010111101100" "010011010001010" "010011100101000" "010011111001000" "010100001101001" "010100100001011" "010100110101110" "010101001010011" "010101011111000" "010101110011110" "010110001000101" "010110011101101" "010110110010111" "010111001000001" "010111011101011" "010111110010111" "011000001000100" "011000011110001" "011000110011111" "011001001001110" "011001011111110" "011001110101110" "011010001011111" "011010100010001" "011010111000011" "011011001110110" "011011100101001" "011011111011101" "011100010010010" "011100101000111" "011100111111100" "011101010110010" "011101101101000" "011110000011111" "011110011010110" "011110110001101" "011111001000101" "011111011111101" "011111110110101" "100000001101101" "100000100100110" "100000111011110" "100001010010111" "100001101010000" "100010000001001" "100010011000010" "100010101111011" "100011000110100" "100011011101101" "100011110100101" "100100001011110" "100100100010111" "100100111001111" "100101010001000" "100101101000000" "100101111111000" "100110010101111" "100110101100110" "100111000011101" "100111011010100" "100111110001010" "101000001000000" "101000011110110" "101000110101010" "101001001011111" "101001100010011" "101001111000110" "101010001111001" "101010100101100" "101010111011101" "101011010001110" "101011100111111" "101011111101110" "101100010011101" "101100101001011" "101100111111001" "101101010100101" "101101101010001" "101101111111100" "101110010100110" "101110101001111" "101110111110111" "101111010011110" "101111101000101" "101111111101010" "110000010001110" "110000100110001" "110000111010011" "110001001110100" "110001100010100" "110001110110011" "110010001010000" "110010011101100" "110010110000111" "110011000100001" "110011010111010" "110011101010001" "110011111100111" "110100001111011" "110100100001111" "110100110100001" "110101000110001" "110101011000000" "110101101001101" "110101111011010" "110110001100100" "110110011101101" "110110101110101" "110110111111011" "110111001111111" "110111100000010" "110111110000011" "111000000000011" "111000010000000" "111000011111101" "111000101110111" "111000111110000" "111001001100111" "111001011011100" "111001101010000" "111001111000010" "111010000110010" "111010010100000" "111010100001100" "111010101110111" "111010111100000" "111011001000110" "111011010101011" "111011100001110" "111011101101111" "111011111001110" "111100000101011" "111100010000111" "111100011100000" "111100100110111" "111100110001100" "111100111011111" "111101000110001" "111101010000000" "111101011001101" "111101100011000" "111101101100000" "111101110100111" "111101111101100" "111110000101111" "111110001101111" "111110010101101" "111110011101001" "111110100100011" "111110101011011" "111110110010001" "111110111000101" "111110111110110" "111111000100101" "111111001010010" "111111001111101" "111111010100101" "111111011001100" "111111011110000" "111111100010001" "111111100110001" "111111101001111" "111111101101010" "111111110000011" "111111110011001" "111111110101110" "111111111000000" "111111111010000" "111111111011101" "111111111101001" "111111111110010" "111111111111000" "111111111111101" "111111111111111" "111111111111111" "111111111111101" "111111111111000" "111111111110010" "111111111101001" "111111111011101" "111111111010000" "111111111000000" "111111110101110" "111111110011001" "111111110000011" "111111101101010" "111111101001111" "111111100110001" "111111100010001" "111111011110000" "111111011001100" "111111010100101" "111111001111101" "111111001010010" "111111000100101" "111110111110110" "111110111000101" "111110110010001" "111110101011011" "111110100100011" "111110011101001" "111110010101101" "111110001101111" "111110000101111" "111101111101100" "111101110100111" "111101101100000" "111101100011000" "111101011001101" "111101010000000" "111101000110001" "111100111011111" "111100110001100" "111100100110111" "111100011100000" "111100010000111" "111100000101011" "111011111001110" "111011101101111" "111011100001110" "111011010101011" "111011001000110" "111010111100000" "111010101110111" "111010100001100" "111010010100000" "111010000110010" "111001111000010" "111001101010000" "111001011011100" "111001001100111" "111000111110000" "111000101110111" "111000011111101" "111000010000000" "111000000000011" "110111110000011" "110111100000010" "110111001111111" "110110111111011" "110110101110101" "110110011101101" "110110001100100" "110101111011010" "110101101001101" "110101011000000" "110101000110001" "110100110100001" "110100100001111" "110100001111011" "110011111100111" "110011101010001" "110011010111010" "110011000100001" "110010110000111" "110010011101100" "110010001010000" "110001110110011" "110001100010100" "110001001110100" "110000111010011" "110000100110001" "110000010001110" "101111111101010" "101111101000101" "101111010011110" "101110111110111" "101110101001111" "101110010100110" "101101111111100" "101101101010001" "101101010100101" "101100111111001" "101100101001011" "101100010011101" "101011111101110" "101011100111111" "101011010001110" "101010111011101" "101010100101100" "101010001111001" "101001111000110" "101001100010011" "101001001011111" "101000110101010" "101000011110110" "101000001000000" "100111110001010" "100111011010100" "100111000011101" "100110101100110" "100110010101111" "100101111111000" "100101101000000" "100101010001000" "100100111001111" "100100100010111" "100100001011110" "100011110100101" "100011011101101" "100011000110100" "100010101111011" "100010011000010" "100010000001001" "100001101010000" "100001010010111" "100000111011110" "100000100100110" "100000001101101" "011111110110101" "011111011111101" "011111001000101" "011110110001101" "011110011010110" "011110000011111" "011101101101000" "011101010110010" "011100111111100" "011100101000111" "011100010010010" "011011111011101" "011011100101001" "011011001110110" "011010111000011" "011010100010001" "011010001011111" "011001110101110" "011001011111110" "011001001001110" "011000110011111" "011000011110001" "011000001000100" "010111110010111" "010111011101011" "010111001000001" "010110110010111" "010110011101101" "010110001000101" "010101110011110" "010101011111000" "010101001010011" "010100110101110" "010100100001011" "010100001101001" "010011111001000" "010011100101000" "010011010001010" "010010111101100" "010010101010000" "010010010110101" "010010000011011" "010001110000011" "010001011101011" "010001001010110" "010000111000001" "010000100101110" "010000010011100" "010000000001100" "001111101111101" "001111011101111" "001111001100011" "001110111011000" "001110101001111" "001110011001000" "001110001000010" "001101110111101" "001101100111011" "001101010111001" "001101000111010" "001100110111100" "001100101000000" "001100011000101" "001100001001100" "001011111010101" "001011101100000" "001011011101100" "001011001111011" "001011000001011" "001010110011100" "001010100110000" "001010011000110" "001010001011101" "001001111110110" "001001110010001" "001001100101110" "001001011001101" "001001001101110" "001001000010001" "001000110110110" "001000101011101" "001000100000101" "001000010110000" "001000001011101" "001000000001100" "000111110111101" "000111101110000" "000111100100101" "000111011011100" "000111010010101" "000111001010001" "000111000001110" "000110111001101" "000110110001111" "000110101010011" "000110100011001" "000110011100001" "000110010101011" "000110001111000" "000110001000111" "000110000010111" "000101111101010" "000101111000000" "000101110010111" "000101101110001" "000101101001101" "000101100101011" "000101100001011" "000101011101110" "000101011010011" "000101010111010" "000101010100011" "000101010001111" "000101001111101" "000101001101101" "000101001011111" "000101001010100" "000101001001011" "000101001000100" "000101000111111" "000101000111101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name indata_0_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_indata_0_V \
    op interface \
    ports { indata_0_V_dout { I 16 vector } indata_0_V_empty_n { I 1 bit } indata_0_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name indata_1_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_indata_1_V \
    op interface \
    ports { indata_1_V_dout { I 16 vector } indata_1_V_empty_n { I 1 bit } indata_1_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name outdata_0_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outdata_0_V \
    op interface \
    ports { outdata_0_V_din { O 16 vector } outdata_0_V_full_n { I 1 bit } outdata_0_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name outdata_1_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outdata_1_V \
    op interface \
    ports { outdata_1_V_din { O 16 vector } outdata_1_V_full_n { I 1 bit } outdata_1_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


