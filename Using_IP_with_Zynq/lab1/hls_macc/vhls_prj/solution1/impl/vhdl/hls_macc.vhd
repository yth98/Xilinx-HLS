-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity hls_macc is
generic (
    C_S_AXI_HLS_MACC_PERIPH_BUS_ADDR_WIDTH : INTEGER := 6;
    C_S_AXI_HLS_MACC_PERIPH_BUS_DATA_WIDTH : INTEGER := 32 );
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    s_axi_HLS_MACC_PERIPH_BUS_AWVALID : IN STD_LOGIC;
    s_axi_HLS_MACC_PERIPH_BUS_AWREADY : OUT STD_LOGIC;
    s_axi_HLS_MACC_PERIPH_BUS_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_HLS_MACC_PERIPH_BUS_ADDR_WIDTH-1 downto 0);
    s_axi_HLS_MACC_PERIPH_BUS_WVALID : IN STD_LOGIC;
    s_axi_HLS_MACC_PERIPH_BUS_WREADY : OUT STD_LOGIC;
    s_axi_HLS_MACC_PERIPH_BUS_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_HLS_MACC_PERIPH_BUS_DATA_WIDTH-1 downto 0);
    s_axi_HLS_MACC_PERIPH_BUS_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_HLS_MACC_PERIPH_BUS_DATA_WIDTH/8-1 downto 0);
    s_axi_HLS_MACC_PERIPH_BUS_ARVALID : IN STD_LOGIC;
    s_axi_HLS_MACC_PERIPH_BUS_ARREADY : OUT STD_LOGIC;
    s_axi_HLS_MACC_PERIPH_BUS_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_HLS_MACC_PERIPH_BUS_ADDR_WIDTH-1 downto 0);
    s_axi_HLS_MACC_PERIPH_BUS_RVALID : OUT STD_LOGIC;
    s_axi_HLS_MACC_PERIPH_BUS_RREADY : IN STD_LOGIC;
    s_axi_HLS_MACC_PERIPH_BUS_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_HLS_MACC_PERIPH_BUS_DATA_WIDTH-1 downto 0);
    s_axi_HLS_MACC_PERIPH_BUS_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_HLS_MACC_PERIPH_BUS_BVALID : OUT STD_LOGIC;
    s_axi_HLS_MACC_PERIPH_BUS_BREADY : IN STD_LOGIC;
    s_axi_HLS_MACC_PERIPH_BUS_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    interrupt : OUT STD_LOGIC );
end;


architecture behav of hls_macc is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "hls_macc_hls_macc,hls_ip_2020_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.552000,HLS_SYN_LAT=9,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=575,HLS_SYN_LUT=383,HLS_VERSION=2020_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_start : STD_LOGIC;
    signal ap_done : STD_LOGIC;
    signal ap_idle : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_ready : STD_LOGIC;
    signal a : STD_LOGIC_VECTOR (31 downto 0);
    signal b : STD_LOGIC_VECTOR (31 downto 0);
    signal accum_ap_vld : STD_LOGIC;
    signal accum_clr : STD_LOGIC_VECTOR (0 downto 0);
    signal acc_reg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal accum_clr_read_reg_93 : STD_LOGIC_VECTOR (0 downto 0);
    signal b_read_reg_98 : STD_LOGIC_VECTOR (31 downto 0);
    signal a_read_reg_103 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_67_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln59_reg_108 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal add_ln59_fu_82_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln59_reg_113 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal select_ln57_fu_75_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component hls_macc_mul_32s_32s_32_7_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component hls_macc_HLS_MACC_PERIPH_BUS_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        a : OUT STD_LOGIC_VECTOR (31 downto 0);
        b : OUT STD_LOGIC_VECTOR (31 downto 0);
        accum : IN STD_LOGIC_VECTOR (31 downto 0);
        accum_ap_vld : IN STD_LOGIC;
        accum_clr : OUT STD_LOGIC_VECTOR (0 downto 0);
        ap_start : OUT STD_LOGIC;
        interrupt : OUT STD_LOGIC;
        ap_ready : IN STD_LOGIC;
        ap_done : IN STD_LOGIC;
        ap_idle : IN STD_LOGIC );
    end component;



begin
    HLS_MACC_PERIPH_BUS_s_axi_U : component hls_macc_HLS_MACC_PERIPH_BUS_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_HLS_MACC_PERIPH_BUS_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_HLS_MACC_PERIPH_BUS_DATA_WIDTH)
    port map (
        AWVALID => s_axi_HLS_MACC_PERIPH_BUS_AWVALID,
        AWREADY => s_axi_HLS_MACC_PERIPH_BUS_AWREADY,
        AWADDR => s_axi_HLS_MACC_PERIPH_BUS_AWADDR,
        WVALID => s_axi_HLS_MACC_PERIPH_BUS_WVALID,
        WREADY => s_axi_HLS_MACC_PERIPH_BUS_WREADY,
        WDATA => s_axi_HLS_MACC_PERIPH_BUS_WDATA,
        WSTRB => s_axi_HLS_MACC_PERIPH_BUS_WSTRB,
        ARVALID => s_axi_HLS_MACC_PERIPH_BUS_ARVALID,
        ARREADY => s_axi_HLS_MACC_PERIPH_BUS_ARREADY,
        ARADDR => s_axi_HLS_MACC_PERIPH_BUS_ARADDR,
        RVALID => s_axi_HLS_MACC_PERIPH_BUS_RVALID,
        RREADY => s_axi_HLS_MACC_PERIPH_BUS_RREADY,
        RDATA => s_axi_HLS_MACC_PERIPH_BUS_RDATA,
        RRESP => s_axi_HLS_MACC_PERIPH_BUS_RRESP,
        BVALID => s_axi_HLS_MACC_PERIPH_BUS_BVALID,
        BREADY => s_axi_HLS_MACC_PERIPH_BUS_BREADY,
        BRESP => s_axi_HLS_MACC_PERIPH_BUS_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        a => a,
        b => b,
        accum => add_ln59_reg_113,
        accum_ap_vld => accum_ap_vld,
        accum_clr => accum_clr,
        ap_start => ap_start,
        interrupt => interrupt,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_idle => ap_idle);

    mul_32s_32s_32_7_1_U1 : component hls_macc_mul_32s_32s_32_7_1
    generic map (
        ID => 1,
        NUM_STAGE => 7,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        din0 => b_read_reg_98,
        din1 => a_read_reg_103,
        ce => ap_const_logic_1,
        dout => grp_fu_67_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                a_read_reg_103 <= a;
                accum_clr_read_reg_93 <= accum_clr;
                b_read_reg_98 <= b;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                acc_reg <= add_ln59_fu_82_p2;
                add_ln59_reg_113 <= add_ln59_fu_82_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                mul_ln59_reg_108 <= grp_fu_67_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;

    accum_ap_vld_assign_proc : process(ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            accum_ap_vld <= ap_const_logic_1;
        else 
            accum_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    add_ln59_fu_82_p2 <= std_logic_vector(unsigned(select_ln57_fu_75_p3) + unsigned(mul_ln59_reg_108));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    select_ln57_fu_75_p3 <= 
        ap_const_lv32_0 when (accum_clr_read_reg_93(0) = '1') else 
        acc_reg;
end behav;