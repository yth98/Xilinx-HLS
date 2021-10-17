// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __window_fn_coeff_tcud_H__
#define __window_fn_coeff_tcud_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct window_fn_coeff_tcud_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 15;
  static const unsigned AddressRange = 512;
  static const unsigned AddressWidth = 9;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(window_fn_coeff_tcud_ram) {
        ram[0] = "0b000101000111101";
        ram[1] = "0b000101000111110";
        ram[2] = "0b000101001000001";
        ram[3] = "0b000101001000111";
        ram[4] = "0b000101001001111";
        ram[5] = "0b000101001011001";
        ram[6] = "0b000101001100110";
        ram[7] = "0b000101001110101";
        ram[8] = "0b000101010000110";
        ram[9] = "0b000101010011001";
        ram[10] = "0b000101010101110";
        ram[11] = "0b000101011000110";
        ram[12] = "0b000101011100000";
        ram[13] = "0b000101011111100";
        ram[14] = "0b000101100011011";
        ram[15] = "0b000101100111100";
        ram[16] = "0b000101101011111";
        ram[17] = "0b000101110000100";
        ram[18] = "0b000101110101011";
        ram[19] = "0b000101111010101";
        ram[20] = "0b000110000000001";
        ram[21] = "0b000110000101111";
        ram[22] = "0b000110001011111";
        ram[23] = "0b000110010010001";
        ram[24] = "0b000110011000110";
        ram[25] = "0b000110011111101";
        ram[26] = "0b000110100110110";
        ram[27] = "0b000110101110001";
        ram[28] = "0b000110110101110";
        ram[29] = "0b000110111101101";
        ram[30] = "0b000111000101111";
        ram[31] = "0b000111001110011";
        ram[32] = "0b000111010111000";
        ram[33] = "0b000111100000000";
        ram[34] = "0b000111101001010";
        ram[35] = "0b000111110010110";
        ram[36] = "0b000111111100100";
        ram[37] = "0b001000000110100";
        ram[38] = "0b001000010000110";
        ram[39] = "0b001000011011011";
        ram[40] = "0b001000100110001";
        ram[41] = "0b001000110001001";
        ram[42] = "0b001000111100011";
        ram[43] = "0b001001000111111";
        ram[44] = "0b001001010011101";
        ram[45] = "0b001001011111110";
        ram[46] = "0b001001101100000";
        ram[47] = "0b001001111000011";
        ram[48] = "0b001010000101001";
        ram[49] = "0b001010010010001";
        ram[50] = "0b001010011111011";
        ram[51] = "0b001010101100110";
        ram[52] = "0b001010111010011";
        ram[53] = "0b001011001000010";
        ram[54] = "0b001011010110011";
        ram[55] = "0b001011100100110";
        ram[56] = "0b001011110011010";
        ram[57] = "0b001100000010001";
        ram[58] = "0b001100010001001";
        ram[59] = "0b001100100000010";
        ram[60] = "0b001100101111110";
        ram[61] = "0b001100111111011";
        ram[62] = "0b001101001111001";
        ram[63] = "0b001101011111010";
        ram[64] = "0b001101101111100";
        ram[65] = "0b001101111111111";
        ram[66] = "0b001110010000101";
        ram[67] = "0b001110100001011";
        ram[68] = "0b001110110010100";
        ram[69] = "0b001111000011101";
        ram[70] = "0b001111010101001";
        ram[71] = "0b001111100110110";
        ram[72] = "0b001111111000100";
        ram[73] = "0b010000001010100";
        ram[74] = "0b010000011100101";
        ram[75] = "0b010000101110111";
        ram[76] = "0b010001000001011";
        ram[77] = "0b010001010100000";
        ram[78] = "0b010001100110111";
        ram[79] = "0b010001111001111";
        ram[80] = "0b010010001101000";
        ram[81] = "0b010010100000010";
        ram[82] = "0b010010110011110";
        ram[83] = "0b010011000111011";
        ram[84] = "0b010011011011001";
        ram[85] = "0b010011101111000";
        ram[86] = "0b010100000011001";
        ram[87] = "0b010100010111010";
        ram[88] = "0b010100101011101";
        ram[89] = "0b010101000000000";
        ram[90] = "0b010101010100101";
        ram[91] = "0b010101101001011";
        ram[92] = "0b010101111110010";
        ram[93] = "0b010110010011001";
        ram[94] = "0b010110101000010";
        ram[95] = "0b010110111101011";
        ram[96] = "0b010111010010110";
        ram[97] = "0b010111101000001";
        ram[98] = "0b010111111101101";
        ram[99] = "0b011000010011010";
        ram[100] = "0b011000101001000";
        ram[101] = "0b011000111110111";
        ram[102] = "0b011001010100110";
        ram[103] = "0b011001101010110";
        ram[104] = "0b011010000000111";
        ram[105] = "0b011010010111000";
        ram[106] = "0b011010101101010";
        ram[107] = "0b011011000011101";
        ram[108] = "0b011011011010000";
        ram[109] = "0b011011110000011";
        ram[110] = "0b011100000111000";
        ram[111] = "0b011100011101100";
        ram[112] = "0b011100110100010";
        ram[113] = "0b011101001010111";
        ram[114] = "0b011101100001101";
        ram[115] = "0b011101111000100";
        ram[116] = "0b011110001111011";
        ram[117] = "0b011110100110010";
        ram[118] = "0b011110111101001";
        ram[119] = "0b011111010100001";
        ram[120] = "0b011111101011001";
        ram[121] = "0b100000000010001";
        ram[122] = "0b100000011001001";
        ram[123] = "0b100000110000010";
        ram[124] = "0b100001000111011";
        ram[125] = "0b100001011110011";
        ram[126] = "0b100001110101100";
        ram[127] = "0b100010001100101";
        ram[128] = "0b100010100011110";
        ram[129] = "0b100010111010111";
        ram[130] = "0b100011010010000";
        ram[131] = "0b100011101001001";
        ram[132] = "0b100100000000010";
        ram[133] = "0b100100010111011";
        ram[134] = "0b100100101110011";
        ram[135] = "0b100101000101011";
        ram[136] = "0b100101011100100";
        ram[137] = "0b100101110011100";
        ram[138] = "0b100110001010011";
        ram[139] = "0b100110100001011";
        ram[140] = "0b100110111000010";
        ram[141] = "0b100111001111001";
        ram[142] = "0b100111100101111";
        ram[143] = "0b100111111100101";
        ram[144] = "0b101000010011011";
        ram[145] = "0b101000101010000";
        ram[146] = "0b101001000000101";
        ram[147] = "0b101001010111001";
        ram[148] = "0b101001101101101";
        ram[149] = "0b101010000100000";
        ram[150] = "0b101010011010010";
        ram[151] = "0b101010110000100";
        ram[152] = "0b101011000110110";
        ram[153] = "0b101011011100110";
        ram[154] = "0b101011110010110";
        ram[155] = "0b101100001000110";
        ram[156] = "0b101100011110100";
        ram[157] = "0b101100110100010";
        ram[158] = "0b101101001001111";
        ram[159] = "0b101101011111011";
        ram[160] = "0b101101110100111";
        ram[161] = "0b101110001010001";
        ram[162] = "0b101110011111011";
        ram[163] = "0b101110110100011";
        ram[164] = "0b101111001001011";
        ram[165] = "0b101111011110010";
        ram[166] = "0b101111110010111";
        ram[167] = "0b110000000111100";
        ram[168] = "0b110000011100000";
        ram[169] = "0b110000110000010";
        ram[170] = "0b110001000100100";
        ram[171] = "0b110001011000100";
        ram[172] = "0b110001101100011";
        ram[173] = "0b110010000000010";
        ram[174] = "0b110010010011110";
        ram[175] = "0b110010100111010";
        ram[176] = "0b110010111010100";
        ram[177] = "0b110011001101110";
        ram[178] = "0b110011100000110";
        ram[179] = "0b110011110011100";
        ram[180] = "0b110100000110001";
        ram[181] = "0b110100011000101";
        ram[182] = "0b110100101011000";
        ram[183] = "0b110100111101001";
        ram[184] = "0b110101001111001";
        ram[185] = "0b110101100000111";
        ram[186] = "0b110101110010100";
        ram[187] = "0b110110000011111";
        ram[188] = "0b110110010101001";
        ram[189] = "0b110110100110001";
        ram[190] = "0b110110110111000";
        ram[191] = "0b110111000111101";
        ram[192] = "0b110111011000001";
        ram[193] = "0b110111101000011";
        ram[194] = "0b110111111000011";
        ram[195] = "0b111000001000010";
        ram[196] = "0b111000010111111";
        ram[197] = "0b111000100111010";
        ram[198] = "0b111000110110100";
        ram[199] = "0b111001000101100";
        ram[200] = "0b111001010100010";
        ram[201] = "0b111001100010110";
        ram[202] = "0b111001110001001";
        ram[203] = "0b111001111111010";
        ram[204] = "0b111010001101001";
        ram[205] = "0b111010011010110";
        ram[206] = "0b111010101000010";
        ram[207] = "0b111010110101011";
        ram[208] = "0b111011000010011";
        ram[209] = "0b111011001111001";
        ram[210] = "0b111011011011101";
        ram[211] = "0b111011100111111";
        ram[212] = "0b111011110011111";
        ram[213] = "0b111011111111101";
        ram[214] = "0b111100001011001";
        ram[215] = "0b111100010110011";
        ram[216] = "0b111100100001100";
        ram[217] = "0b111100101100010";
        ram[218] = "0b111100110110110";
        ram[219] = "0b111101000001000";
        ram[220] = "0b111101001011000";
        ram[221] = "0b111101010100110";
        ram[222] = "0b111101011110010";
        ram[223] = "0b111101100111100";
        ram[224] = "0b111101110000100";
        ram[225] = "0b111101111001010";
        ram[226] = "0b111110000001101";
        ram[227] = "0b111110001001111";
        ram[228] = "0b111110010001110";
        ram[229] = "0b111110011001100";
        ram[230] = "0b111110100000111";
        ram[231] = "0b111110101000000";
        ram[232] = "0b111110101110110";
        ram[233] = "0b111110110101011";
        ram[234] = "0b111110111011101";
        ram[235] = "0b111111000001110";
        ram[236] = "0b111111000111100";
        ram[237] = "0b111111001101000";
        ram[238] = "0b111111010010001";
        ram[239] = "0b111111010111001";
        ram[240] = "0b111111011011110";
        ram[241] = "0b111111100000001";
        ram[242] = "0b111111100100010";
        ram[243] = "0b111111101000000";
        ram[244] = "0b111111101011100";
        ram[245] = "0b111111101110110";
        ram[246] = "0b111111110001110";
        ram[247] = "0b111111110100100";
        ram[248] = "0b111111110110111";
        ram[249] = "0b111111111001000";
        ram[250] = "0b111111111010111";
        ram[251] = "0b111111111100011";
        ram[252] = "0b111111111101101";
        ram[253] = "0b111111111110101";
        ram[254] = "0b111111111111011";
        ram[255] = "0b111111111111110";
        ram[256] = "0b111111111111111";
        ram[257] = "0b111111111111110";
        ram[258] = "0b111111111111011";
        ram[259] = "0b111111111110101";
        ram[260] = "0b111111111101101";
        ram[261] = "0b111111111100011";
        ram[262] = "0b111111111010111";
        ram[263] = "0b111111111001000";
        ram[264] = "0b111111110110111";
        ram[265] = "0b111111110100100";
        ram[266] = "0b111111110001110";
        ram[267] = "0b111111101110110";
        ram[268] = "0b111111101011100";
        ram[269] = "0b111111101000000";
        ram[270] = "0b111111100100010";
        ram[271] = "0b111111100000001";
        ram[272] = "0b111111011011110";
        ram[273] = "0b111111010111001";
        ram[274] = "0b111111010010001";
        ram[275] = "0b111111001101000";
        ram[276] = "0b111111000111100";
        ram[277] = "0b111111000001110";
        ram[278] = "0b111110111011101";
        ram[279] = "0b111110110101011";
        ram[280] = "0b111110101110110";
        ram[281] = "0b111110101000000";
        ram[282] = "0b111110100000111";
        ram[283] = "0b111110011001100";
        ram[284] = "0b111110010001110";
        ram[285] = "0b111110001001111";
        ram[286] = "0b111110000001101";
        ram[287] = "0b111101111001010";
        ram[288] = "0b111101110000100";
        ram[289] = "0b111101100111100";
        ram[290] = "0b111101011110010";
        ram[291] = "0b111101010100110";
        ram[292] = "0b111101001011000";
        ram[293] = "0b111101000001000";
        ram[294] = "0b111100110110110";
        ram[295] = "0b111100101100010";
        ram[296] = "0b111100100001100";
        ram[297] = "0b111100010110011";
        ram[298] = "0b111100001011001";
        ram[299] = "0b111011111111101";
        ram[300] = "0b111011110011111";
        ram[301] = "0b111011100111111";
        ram[302] = "0b111011011011101";
        ram[303] = "0b111011001111001";
        ram[304] = "0b111011000010011";
        ram[305] = "0b111010110101011";
        ram[306] = "0b111010101000010";
        ram[307] = "0b111010011010110";
        ram[308] = "0b111010001101001";
        ram[309] = "0b111001111111010";
        ram[310] = "0b111001110001001";
        ram[311] = "0b111001100010110";
        ram[312] = "0b111001010100010";
        ram[313] = "0b111001000101100";
        ram[314] = "0b111000110110100";
        ram[315] = "0b111000100111010";
        ram[316] = "0b111000010111111";
        ram[317] = "0b111000001000010";
        ram[318] = "0b110111111000011";
        ram[319] = "0b110111101000011";
        ram[320] = "0b110111011000001";
        ram[321] = "0b110111000111101";
        ram[322] = "0b110110110111000";
        ram[323] = "0b110110100110001";
        ram[324] = "0b110110010101001";
        ram[325] = "0b110110000011111";
        ram[326] = "0b110101110010100";
        ram[327] = "0b110101100000111";
        ram[328] = "0b110101001111001";
        ram[329] = "0b110100111101001";
        ram[330] = "0b110100101011000";
        ram[331] = "0b110100011000101";
        ram[332] = "0b110100000110001";
        ram[333] = "0b110011110011100";
        ram[334] = "0b110011100000110";
        ram[335] = "0b110011001101110";
        ram[336] = "0b110010111010100";
        ram[337] = "0b110010100111010";
        ram[338] = "0b110010010011110";
        ram[339] = "0b110010000000010";
        ram[340] = "0b110001101100011";
        ram[341] = "0b110001011000100";
        ram[342] = "0b110001000100100";
        ram[343] = "0b110000110000010";
        ram[344] = "0b110000011100000";
        ram[345] = "0b110000000111100";
        ram[346] = "0b101111110010111";
        ram[347] = "0b101111011110010";
        ram[348] = "0b101111001001011";
        ram[349] = "0b101110110100011";
        ram[350] = "0b101110011111011";
        ram[351] = "0b101110001010001";
        ram[352] = "0b101101110100111";
        ram[353] = "0b101101011111011";
        ram[354] = "0b101101001001111";
        ram[355] = "0b101100110100010";
        ram[356] = "0b101100011110100";
        ram[357] = "0b101100001000110";
        ram[358] = "0b101011110010110";
        ram[359] = "0b101011011100110";
        ram[360] = "0b101011000110110";
        ram[361] = "0b101010110000100";
        ram[362] = "0b101010011010010";
        ram[363] = "0b101010000100000";
        ram[364] = "0b101001101101101";
        ram[365] = "0b101001010111001";
        ram[366] = "0b101001000000101";
        ram[367] = "0b101000101010000";
        ram[368] = "0b101000010011011";
        ram[369] = "0b100111111100101";
        ram[370] = "0b100111100101111";
        ram[371] = "0b100111001111001";
        ram[372] = "0b100110111000010";
        ram[373] = "0b100110100001011";
        ram[374] = "0b100110001010011";
        ram[375] = "0b100101110011100";
        ram[376] = "0b100101011100100";
        ram[377] = "0b100101000101011";
        ram[378] = "0b100100101110011";
        ram[379] = "0b100100010111011";
        ram[380] = "0b100100000000010";
        ram[381] = "0b100011101001001";
        ram[382] = "0b100011010010000";
        ram[383] = "0b100010111010111";
        ram[384] = "0b100010100011110";
        ram[385] = "0b100010001100101";
        ram[386] = "0b100001110101100";
        ram[387] = "0b100001011110011";
        ram[388] = "0b100001000111011";
        ram[389] = "0b100000110000010";
        ram[390] = "0b100000011001001";
        ram[391] = "0b100000000010001";
        ram[392] = "0b011111101011001";
        ram[393] = "0b011111010100001";
        ram[394] = "0b011110111101001";
        ram[395] = "0b011110100110010";
        ram[396] = "0b011110001111011";
        ram[397] = "0b011101111000100";
        ram[398] = "0b011101100001101";
        ram[399] = "0b011101001010111";
        ram[400] = "0b011100110100010";
        ram[401] = "0b011100011101100";
        ram[402] = "0b011100000111000";
        ram[403] = "0b011011110000011";
        ram[404] = "0b011011011010000";
        ram[405] = "0b011011000011101";
        ram[406] = "0b011010101101010";
        ram[407] = "0b011010010111000";
        ram[408] = "0b011010000000111";
        ram[409] = "0b011001101010110";
        ram[410] = "0b011001010100110";
        ram[411] = "0b011000111110111";
        ram[412] = "0b011000101001000";
        ram[413] = "0b011000010011010";
        ram[414] = "0b010111111101101";
        ram[415] = "0b010111101000001";
        ram[416] = "0b010111010010110";
        ram[417] = "0b010110111101011";
        ram[418] = "0b010110101000010";
        ram[419] = "0b010110010011001";
        ram[420] = "0b010101111110010";
        ram[421] = "0b010101101001011";
        ram[422] = "0b010101010100101";
        ram[423] = "0b010101000000000";
        ram[424] = "0b010100101011101";
        ram[425] = "0b010100010111010";
        ram[426] = "0b010100000011001";
        ram[427] = "0b010011101111000";
        ram[428] = "0b010011011011001";
        ram[429] = "0b010011000111011";
        ram[430] = "0b010010110011110";
        ram[431] = "0b010010100000010";
        ram[432] = "0b010010001101000";
        ram[433] = "0b010001111001111";
        ram[434] = "0b010001100110111";
        ram[435] = "0b010001010100000";
        ram[436] = "0b010001000001011";
        ram[437] = "0b010000101110111";
        ram[438] = "0b010000011100101";
        ram[439] = "0b010000001010100";
        ram[440] = "0b001111111000100";
        ram[441] = "0b001111100110110";
        ram[442] = "0b001111010101001";
        ram[443] = "0b001111000011101";
        ram[444] = "0b001110110010100";
        ram[445] = "0b001110100001011";
        ram[446] = "0b001110010000101";
        ram[447] = "0b001101111111111";
        ram[448] = "0b001101101111100";
        ram[449] = "0b001101011111010";
        ram[450] = "0b001101001111001";
        ram[451] = "0b001100111111011";
        ram[452] = "0b001100101111110";
        ram[453] = "0b001100100000010";
        ram[454] = "0b001100010001001";
        ram[455] = "0b001100000010001";
        ram[456] = "0b001011110011010";
        ram[457] = "0b001011100100110";
        ram[458] = "0b001011010110011";
        ram[459] = "0b001011001000010";
        ram[460] = "0b001010111010011";
        ram[461] = "0b001010101100110";
        ram[462] = "0b001010011111011";
        ram[463] = "0b001010010010001";
        ram[464] = "0b001010000101001";
        ram[465] = "0b001001111000011";
        ram[466] = "0b001001101100000";
        ram[467] = "0b001001011111110";
        ram[468] = "0b001001010011101";
        ram[469] = "0b001001000111111";
        ram[470] = "0b001000111100011";
        ram[471] = "0b001000110001001";
        ram[472] = "0b001000100110001";
        ram[473] = "0b001000011011011";
        ram[474] = "0b001000010000110";
        ram[475] = "0b001000000110100";
        ram[476] = "0b000111111100100";
        ram[477] = "0b000111110010110";
        ram[478] = "0b000111101001010";
        ram[479] = "0b000111100000000";
        ram[480] = "0b000111010111000";
        ram[481] = "0b000111001110011";
        ram[482] = "0b000111000101111";
        ram[483] = "0b000110111101101";
        ram[484] = "0b000110110101110";
        ram[485] = "0b000110101110001";
        ram[486] = "0b000110100110110";
        ram[487] = "0b000110011111101";
        ram[488] = "0b000110011000110";
        ram[489] = "0b000110010010001";
        ram[490] = "0b000110001011111";
        ram[491] = "0b000110000101111";
        ram[492] = "0b000110000000001";
        ram[493] = "0b000101111010101";
        ram[494] = "0b000101110101011";
        ram[495] = "0b000101110000100";
        ram[496] = "0b000101101011111";
        ram[497] = "0b000101100111100";
        ram[498] = "0b000101100011011";
        ram[499] = "0b000101011111100";
        ram[500] = "0b000101011100000";
        ram[501] = "0b000101011000110";
        ram[502] = "0b000101010101110";
        ram[503] = "0b000101010011001";
        ram[504] = "0b000101010000110";
        ram[505] = "0b000101001110101";
        ram[506] = "0b000101001100110";
        ram[507] = "0b000101001011001";
        ram[508] = "0b000101001001111";
        ram[509] = "0b000101001000111";
        ram[510] = "0b000101001000001";
        ram[511] = "0b000101000111110";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(window_fn_coeff_tcud) {


static const unsigned DataWidth = 15;
static const unsigned AddressRange = 512;
static const unsigned AddressWidth = 9;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


window_fn_coeff_tcud_ram* meminst;


SC_CTOR(window_fn_coeff_tcud) {
meminst = new window_fn_coeff_tcud_ram("window_fn_coeff_tcud_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~window_fn_coeff_tcud() {
    delete meminst;
}


};//endmodule
#endif
