-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity window_fn is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    indata_0_V_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    indata_0_V_empty_n : IN STD_LOGIC;
    indata_0_V_read : OUT STD_LOGIC;
    indata_1_V_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    indata_1_V_empty_n : IN STD_LOGIC;
    indata_1_V_read : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    outdata_0_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    outdata_0_V_full_n : IN STD_LOGIC;
    outdata_0_V_write : OUT STD_LOGIC;
    outdata_1_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    outdata_1_V_full_n : IN STD_LOGIC;
    outdata_1_V_write : OUT STD_LOGIC );
end;


architecture behav of window_fn is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv11_2 : STD_LOGIC_VECTOR (10 downto 0) := "00000000010";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv11_400 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal icmp_ln102_fu_241_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_block_state4_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state6_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_state8_pp0_stage1_iter2 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal coeff_tab1_0_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal coeff_tab1_0_ce0 : STD_LOGIC;
    signal coeff_tab1_0_q0 : STD_LOGIC_VECTOR (14 downto 0);
    signal coeff_tab1_1_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal coeff_tab1_1_ce0 : STD_LOGIC;
    signal coeff_tab1_1_q0 : STD_LOGIC_VECTOR (14 downto 0);
    signal indata_0_V_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal indata_1_V_blk_n : STD_LOGIC;
    signal outdata_0_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal outdata_1_V_blk_n : STD_LOGIC;
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state7_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_0_017_reg_185 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln102_fu_219_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln102_reg_289 : STD_LOGIC_VECTOR (10 downto 0);
    signal empty_7_fu_225_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal empty_7_reg_294 : STD_LOGIC_VECTOR (9 downto 0);
    signal coeff_tab1_0_load_reg_299 : STD_LOGIC_VECTOR (14 downto 0);
    signal indata_0_V_read_reg_304 : STD_LOGIC_VECTOR (15 downto 0);
    signal coeff_tab1_1_load_reg_309 : STD_LOGIC_VECTOR (14 downto 0);
    signal indata_1_V_read_reg_314 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_ln102_reg_319 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln102_reg_319_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln102_reg_319_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_267_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal mul_ln1118_reg_343 : STD_LOGIC_VECTOR (30 downto 0);
    signal trunc_ln_reg_348 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_273_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal mul_ln1118_1_reg_353 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_block_state1 : BOOLEAN;
    signal ap_phi_mux_i_0_017_phi_fu_189_p6 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln1116_fu_213_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_1_fu_203_p4 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln102_fu_199_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal grp_fu_267_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_fu_273_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_fu_267_ce : STD_LOGIC;
    signal grp_fu_273_ce : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0_0to2 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal grp_fu_267_p10 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_fu_273_p10 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_condition_191 : BOOLEAN;

    component hls_real2xfft_muleOg IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (14 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (30 downto 0) );
    end component;


    component window_fn_coeff_tcud IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (8 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (14 downto 0) );
    end component;


    component window_fn_coeff_tdEe IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (8 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (14 downto 0) );
    end component;



begin
    coeff_tab1_0_U : component window_fn_coeff_tcud
    generic map (
        DataWidth => 15,
        AddressRange => 512,
        AddressWidth => 9)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => coeff_tab1_0_address0,
        ce0 => coeff_tab1_0_ce0,
        q0 => coeff_tab1_0_q0);

    coeff_tab1_1_U : component window_fn_coeff_tdEe
    generic map (
        DataWidth => 15,
        AddressRange => 512,
        AddressWidth => 9)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => coeff_tab1_1_address0,
        ce0 => coeff_tab1_1_ce0,
        q0 => coeff_tab1_1_q0);

    hls_real2xfft_muleOg_U14 : component hls_real2xfft_muleOg
    generic map (
        ID => 1,
        NUM_STAGE => 3,
        din0_WIDTH => 16,
        din1_WIDTH => 15,
        dout_WIDTH => 31)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => indata_0_V_read_reg_304,
        din1 => grp_fu_267_p1,
        ce => grp_fu_267_ce,
        dout => grp_fu_267_p2);

    hls_real2xfft_muleOg_U15 : component hls_real2xfft_muleOg
    generic map (
        ID => 1,
        NUM_STAGE => 3,
        din0_WIDTH => 16,
        din1_WIDTH => 15,
        dout_WIDTH => 31)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => indata_1_V_read_reg_314,
        din1 => grp_fu_273_p1,
        ce => grp_fu_273_ce,
        dout => grp_fu_273_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((icmp_ln102_reg_319_pp0_iter2_reg = ap_const_lv1_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= real_start;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) or ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_017_reg_185_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln102_reg_319 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                i_0_017_reg_185 <= empty_7_reg_294;
            elsif (((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((icmp_ln102_reg_319 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
                i_0_017_reg_185 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                add_ln102_reg_289 <= add_ln102_fu_219_p2;
                mul_ln1118_reg_343 <= grp_fu_267_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                coeff_tab1_0_load_reg_299 <= coeff_tab1_0_q0;
                coeff_tab1_1_load_reg_309 <= coeff_tab1_1_q0;
                icmp_ln102_reg_319 <= icmp_ln102_fu_241_p2;
                icmp_ln102_reg_319_pp0_iter1_reg <= icmp_ln102_reg_319;
                icmp_ln102_reg_319_pp0_iter2_reg <= icmp_ln102_reg_319_pp0_iter1_reg;
                indata_0_V_read_reg_304 <= indata_0_V_dout;
                indata_1_V_read_reg_314 <= indata_1_V_dout;
                mul_ln1118_1_reg_353 <= grp_fu_273_p2;
                trunc_ln_reg_348 <= mul_ln1118_reg_343(30 downto 15);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                empty_7_reg_294 <= empty_7_fu_225_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_block_pp0_stage1_subdone, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (((ap_reset_idle_pp0 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                elsif (((ap_reset_idle_pp0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add_ln102_fu_219_p2 <= std_logic_vector(unsigned(ap_const_lv11_2) + unsigned(zext_ln102_fu_199_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(outdata_0_V_full_n, outdata_1_V_full_n, ap_enable_reg_pp0_iter3)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and ((outdata_1_V_full_n = ap_const_logic_0) or (outdata_0_V_full_n = ap_const_logic_0)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(outdata_0_V_full_n, outdata_1_V_full_n, ap_enable_reg_pp0_iter3)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and ((outdata_1_V_full_n = ap_const_logic_0) or (outdata_0_V_full_n = ap_const_logic_0)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(outdata_0_V_full_n, outdata_1_V_full_n, ap_enable_reg_pp0_iter3)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and ((outdata_1_V_full_n = ap_const_logic_0) or (outdata_0_V_full_n = ap_const_logic_0)));
    end process;

        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage1_11001_assign_proc : process(ap_done_reg, ap_enable_reg_pp0_iter0, indata_0_V_empty_n, indata_1_V_empty_n)
    begin
                ap_block_pp0_stage1_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and ((indata_1_V_empty_n = ap_const_logic_0) or (indata_0_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage1_subdone_assign_proc : process(ap_done_reg, ap_enable_reg_pp0_iter0, indata_0_V_empty_n, indata_1_V_empty_n)
    begin
                ap_block_pp0_stage1_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and ((indata_1_V_empty_n = ap_const_logic_0) or (indata_0_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter3_assign_proc : process(outdata_0_V_full_n, outdata_1_V_full_n)
    begin
                ap_block_state3_pp0_stage0_iter3 <= ((outdata_1_V_full_n = ap_const_logic_0) or (outdata_0_V_full_n = ap_const_logic_0));
    end process;


    ap_block_state4_pp0_stage1_iter0_assign_proc : process(indata_0_V_empty_n, indata_1_V_empty_n)
    begin
                ap_block_state4_pp0_stage1_iter0 <= ((indata_1_V_empty_n = ap_const_logic_0) or (indata_0_V_empty_n = ap_const_logic_0));
    end process;

        ap_block_state5_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage1_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state8_pp0_stage1_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_191_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter1)
    begin
                ap_condition_191 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001, icmp_ln102_reg_319_pp0_iter2_reg)
    begin
        if (((icmp_ln102_reg_319_pp0_iter2_reg = ap_const_lv1_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_enable_reg_pp0_iter0_assign_proc : process(real_start, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= real_start;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to2_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0_0to2 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_i_0_017_phi_fu_189_p6_assign_proc : process(i_0_017_reg_185, empty_7_reg_294, icmp_ln102_reg_319, ap_condition_191)
    begin
        if ((ap_const_boolean_1 = ap_condition_191)) then
            if ((icmp_ln102_reg_319 = ap_const_lv1_1)) then 
                ap_phi_mux_i_0_017_phi_fu_189_p6 <= ap_const_lv10_0;
            elsif ((icmp_ln102_reg_319 = ap_const_lv1_0)) then 
                ap_phi_mux_i_0_017_phi_fu_189_p6 <= empty_7_reg_294;
            else 
                ap_phi_mux_i_0_017_phi_fu_189_p6 <= i_0_017_reg_185;
            end if;
        else 
            ap_phi_mux_i_0_017_phi_fu_189_p6 <= i_0_017_reg_185;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;

    ap_reset_idle_pp0_assign_proc : process(real_start, ap_idle_pp0_0to2)
    begin
        if (((real_start = ap_const_logic_0) and (ap_idle_pp0_0to2 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    coeff_tab1_0_address0 <= zext_ln1116_fu_213_p1(9 - 1 downto 0);

    coeff_tab1_0_ce0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            coeff_tab1_0_ce0 <= ap_const_logic_1;
        else 
            coeff_tab1_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    coeff_tab1_1_address0 <= zext_ln1116_fu_213_p1(9 - 1 downto 0);

    coeff_tab1_1_ce0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            coeff_tab1_1_ce0 <= ap_const_logic_1;
        else 
            coeff_tab1_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    empty_7_fu_225_p1 <= add_ln102_fu_219_p2(10 - 1 downto 0);

    grp_fu_267_ce_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
            grp_fu_267_ce <= ap_const_logic_1;
        else 
            grp_fu_267_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_267_p1 <= grp_fu_267_p10(15 - 1 downto 0);
    grp_fu_267_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(coeff_tab1_0_load_reg_299),31));

    grp_fu_273_ce_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
            grp_fu_273_ce <= ap_const_logic_1;
        else 
            grp_fu_273_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_273_p1 <= grp_fu_273_p10(15 - 1 downto 0);
    grp_fu_273_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(coeff_tab1_1_load_reg_309),31));
    icmp_ln102_fu_241_p2 <= "1" when (add_ln102_reg_289 = ap_const_lv11_400) else "0";

    indata_0_V_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, indata_0_V_empty_n, ap_block_pp0_stage1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            indata_0_V_blk_n <= indata_0_V_empty_n;
        else 
            indata_0_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    indata_0_V_read_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage1_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            indata_0_V_read <= ap_const_logic_1;
        else 
            indata_0_V_read <= ap_const_logic_0;
        end if; 
    end process;


    indata_1_V_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, indata_1_V_empty_n, ap_block_pp0_stage1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            indata_1_V_blk_n <= indata_1_V_empty_n;
        else 
            indata_1_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    indata_1_V_read_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage1_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            indata_1_V_read <= ap_const_logic_1;
        else 
            indata_1_V_read <= ap_const_logic_0;
        end if; 
    end process;


    internal_ap_ready_assign_proc : process(icmp_ln102_fu_241_p2, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage1_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (icmp_ln102_fu_241_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    outdata_0_V_blk_n_assign_proc : process(outdata_0_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter3, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            outdata_0_V_blk_n <= outdata_0_V_full_n;
        else 
            outdata_0_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    outdata_0_V_din <= trunc_ln_reg_348;

    outdata_0_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            outdata_0_V_write <= ap_const_logic_1;
        else 
            outdata_0_V_write <= ap_const_logic_0;
        end if; 
    end process;


    outdata_1_V_blk_n_assign_proc : process(outdata_1_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter3, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            outdata_1_V_blk_n <= outdata_1_V_full_n;
        else 
            outdata_1_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    outdata_1_V_din <= mul_ln1118_1_reg_353(30 downto 15);

    outdata_1_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            outdata_1_V_write <= ap_const_logic_1;
        else 
            outdata_1_V_write <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_fu_203_p4 <= ap_phi_mux_i_0_017_phi_fu_189_p6(9 downto 1);
    zext_ln102_fu_199_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_phi_mux_i_0_017_phi_fu_189_p6),11));
    zext_ln1116_fu_213_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_203_p4),64));
end behav;
