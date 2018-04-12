-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/27/2018 18:39:44"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	GCD IS
    PORT (
	SAIDA : OUT std_logic_vector(7 DOWNTO 0);
	CLK : IN std_logic;
	RST : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0)
	);
END GCD;

-- Design Ports Information
-- SAIDA[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[6]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[5]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[4]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF GCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SAIDA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|LA~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|LB~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SAIDA[7]~output_o\ : std_logic;
SIGNAL \SAIDA[6]~output_o\ : std_logic;
SIGNAL \SAIDA[5]~output_o\ : std_logic;
SIGNAL \SAIDA[4]~output_o\ : std_logic;
SIGNAL \SAIDA[3]~output_o\ : std_logic;
SIGNAL \SAIDA[2]~output_o\ : std_logic;
SIGNAL \SAIDA[1]~output_o\ : std_logic;
SIGNAL \SAIDA[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst1|LessThan0~1_cout\ : std_logic;
SIGNAL \inst1|LessThan0~3_cout\ : std_logic;
SIGNAL \inst1|LessThan0~5_cout\ : std_logic;
SIGNAL \inst1|LessThan0~7_cout\ : std_logic;
SIGNAL \inst1|LessThan0~9_cout\ : std_logic;
SIGNAL \inst1|LessThan0~11_cout\ : std_logic;
SIGNAL \inst1|LessThan0~13_cout\ : std_logic;
SIGNAL \inst1|LessThan0~14_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~4_combout\ : std_logic;
SIGNAL \inst1|LessThan1~1_cout\ : std_logic;
SIGNAL \inst1|LessThan1~3_cout\ : std_logic;
SIGNAL \inst1|LessThan1~5_cout\ : std_logic;
SIGNAL \inst1|LessThan1~7_cout\ : std_logic;
SIGNAL \inst1|LessThan1~9_cout\ : std_logic;
SIGNAL \inst1|LessThan1~11_cout\ : std_logic;
SIGNAL \inst1|LessThan1~13_cout\ : std_logic;
SIGNAL \inst1|LessThan1~14_combout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|prox_est.pL_B~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|est.pL_B~q\ : std_logic;
SIGNAL \inst|est.L_B~feeder_combout\ : std_logic;
SIGNAL \inst|est.L_B~q\ : std_logic;
SIGNAL \inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst|est.DEC~q\ : std_logic;
SIGNAL \inst|prox_est.L_A~0_combout\ : std_logic;
SIGNAL \inst|est.L_A~q\ : std_logic;
SIGNAL \inst|LA~combout\ : std_logic;
SIGNAL \inst|LA~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|est.DONE~q\ : std_logic;
SIGNAL \inst|prox_est~2_combout\ : std_logic;
SIGNAL \inst|est.INI~q\ : std_logic;
SIGNAL \inst1|Add0~1_combout\ : std_logic;
SIGNAL \inst|LB~combout\ : std_logic;
SIGNAL \inst|LB~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|auxB[7]~0_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|auxB[6]~1_combout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|auxA[5]~2_combout\ : std_logic;
SIGNAL \inst1|Add0~5_combout\ : std_logic;
SIGNAL \inst1|auxA[4]~3_combout\ : std_logic;
SIGNAL \inst1|Add0~7_combout\ : std_logic;
SIGNAL \inst1|auxA[3]~4_combout\ : std_logic;
SIGNAL \inst1|Add0~9_combout\ : std_logic;
SIGNAL \inst1|auxA[2]~5_combout\ : std_logic;
SIGNAL \inst1|Add0~11_combout\ : std_logic;
SIGNAL \inst1|auxA[1]~6_combout\ : std_logic;
SIGNAL \inst1|Add0~13_combout\ : std_logic;
SIGNAL \inst1|auxA[0]~7_combout\ : std_logic;
SIGNAL \inst1|Add0~15_combout\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|auxB[0]~7_combout\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|auxB[1]~6_combout\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|auxB[2]~5_combout\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|auxB[3]~4_combout\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|auxB[4]~3_combout\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|auxB[5]~2_combout\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|auxA[6]~1_combout\ : std_logic;
SIGNAL \inst1|Add0~3_combout\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|auxA[7]~0_combout\ : std_logic;
SIGNAL \inst1|out_regB\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|out_regA\ : std_logic_vector(7 DOWNTO 0);

BEGIN

SAIDA <= ww_SAIDA;
ww_CLK <= CLK;
ww_RST <= RST;
ww_A <= A;
ww_B <= B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\inst|LA~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|LA~combout\);

\inst|LB~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|LB~combout\);

-- Location: IOOBUF_X10_Y31_N2
\SAIDA[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|out_regA\(7),
	devoe => ww_devoe,
	o => \SAIDA[7]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\SAIDA[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|out_regA\(6),
	devoe => ww_devoe,
	o => \SAIDA[6]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\SAIDA[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|out_regA\(5),
	devoe => ww_devoe,
	o => \SAIDA[5]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\SAIDA[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|out_regA\(4),
	devoe => ww_devoe,
	o => \SAIDA[4]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\SAIDA[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|out_regA\(3),
	devoe => ww_devoe,
	o => \SAIDA[3]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\SAIDA[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|out_regA\(2),
	devoe => ww_devoe,
	o => \SAIDA[2]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\SAIDA[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|out_regA\(1),
	devoe => ww_devoe,
	o => \SAIDA[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\SAIDA[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|out_regA\(0),
	devoe => ww_devoe,
	o => \SAIDA[0]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G17
\CLK~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X20_Y0_N1
\B[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\A[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\B[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\A[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X33_Y16_N15
\A[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\B[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\B[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\A[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X13_Y7_N16
\inst1|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_cout\ = CARRY((!\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cout => \inst1|LessThan0~1_cout\);

-- Location: LCCOMB_X13_Y7_N18
\inst1|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_cout\ = CARRY((\A[1]~input_o\ & (\B[1]~input_o\ & !\inst1|LessThan0~1_cout\)) # (!\A[1]~input_o\ & ((\B[1]~input_o\) # (!\inst1|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst1|LessThan0~1_cout\,
	cout => \inst1|LessThan0~3_cout\);

-- Location: LCCOMB_X13_Y7_N20
\inst1|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~5_cout\ = CARRY((\A[2]~input_o\ & ((!\inst1|LessThan0~3_cout\) # (!\B[2]~input_o\))) # (!\A[2]~input_o\ & (!\B[2]~input_o\ & !\inst1|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst1|LessThan0~3_cout\,
	cout => \inst1|LessThan0~5_cout\);

-- Location: LCCOMB_X13_Y7_N22
\inst1|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~7_cout\ = CARRY((\B[3]~input_o\ & ((!\inst1|LessThan0~5_cout\) # (!\A[3]~input_o\))) # (!\B[3]~input_o\ & (!\A[3]~input_o\ & !\inst1|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \inst1|LessThan0~5_cout\,
	cout => \inst1|LessThan0~7_cout\);

-- Location: LCCOMB_X13_Y7_N24
\inst1|LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~9_cout\ = CARRY((\B[4]~input_o\ & (\A[4]~input_o\ & !\inst1|LessThan0~7_cout\)) # (!\B[4]~input_o\ & ((\A[4]~input_o\) # (!\inst1|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \inst1|LessThan0~7_cout\,
	cout => \inst1|LessThan0~9_cout\);

-- Location: LCCOMB_X13_Y7_N26
\inst1|LessThan0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~11_cout\ = CARRY((\A[5]~input_o\ & (\B[5]~input_o\ & !\inst1|LessThan0~9_cout\)) # (!\A[5]~input_o\ & ((\B[5]~input_o\) # (!\inst1|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \inst1|LessThan0~9_cout\,
	cout => \inst1|LessThan0~11_cout\);

-- Location: LCCOMB_X13_Y7_N28
\inst1|LessThan0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~13_cout\ = CARRY((\B[6]~input_o\ & (\A[6]~input_o\ & !\inst1|LessThan0~11_cout\)) # (!\B[6]~input_o\ & ((\A[6]~input_o\) # (!\inst1|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \inst1|LessThan0~11_cout\,
	cout => \inst1|LessThan0~13_cout\);

-- Location: LCCOMB_X13_Y7_N30
\inst1|LessThan0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~14_combout\ = (\B[7]~input_o\ & (\inst1|LessThan0~13_cout\ & \A[7]~input_o\)) # (!\B[7]~input_o\ & ((\inst1|LessThan0~13_cout\) # (\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	cin => \inst1|LessThan0~13_cout\,
	combout => \inst1|LessThan0~14_combout\);

-- Location: LCCOMB_X14_Y8_N4
\inst1|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (\B[4]~input_o\ & (\A[4]~input_o\ & (\B[5]~input_o\ $ (!\A[5]~input_o\)))) # (!\B[4]~input_o\ & (!\A[4]~input_o\ & (\B[5]~input_o\ $ (!\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[5]~input_o\,
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X14_Y8_N18
\inst1|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (\A[2]~input_o\ & (\B[2]~input_o\ & (\A[3]~input_o\ $ (!\B[3]~input_o\)))) # (!\A[2]~input_o\ & (!\B[2]~input_o\ & (\A[3]~input_o\ $ (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y8_N26
\inst1|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = (\A[7]~input_o\ & (\B[7]~input_o\ & (\B[6]~input_o\ $ (!\A[6]~input_o\)))) # (!\A[7]~input_o\ & (!\B[7]~input_o\ & (\B[6]~input_o\ $ (!\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \inst1|Equal0~3_combout\);

-- Location: LCCOMB_X14_Y8_N0
\inst1|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ & (\A[1]~input_o\ $ (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (!\A[0]~input_o\ & (\A[1]~input_o\ $ (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y8_N20
\inst1|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Equal0~4_combout\ = (\inst1|Equal0~2_combout\ & (\inst1|Equal0~1_combout\ & (\inst1|Equal0~3_combout\ & \inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~2_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|Equal0~3_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|Equal0~4_combout\);

-- Location: LCCOMB_X13_Y7_N0
\inst1|LessThan1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~1_cout\ = CARRY((\B[0]~input_o\ & !\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cout => \inst1|LessThan1~1_cout\);

-- Location: LCCOMB_X13_Y7_N2
\inst1|LessThan1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~3_cout\ = CARRY((\A[1]~input_o\ & ((!\inst1|LessThan1~1_cout\) # (!\B[1]~input_o\))) # (!\A[1]~input_o\ & (!\B[1]~input_o\ & !\inst1|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst1|LessThan1~1_cout\,
	cout => \inst1|LessThan1~3_cout\);

-- Location: LCCOMB_X13_Y7_N4
\inst1|LessThan1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~5_cout\ = CARRY((\A[2]~input_o\ & (\B[2]~input_o\ & !\inst1|LessThan1~3_cout\)) # (!\A[2]~input_o\ & ((\B[2]~input_o\) # (!\inst1|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst1|LessThan1~3_cout\,
	cout => \inst1|LessThan1~5_cout\);

-- Location: LCCOMB_X13_Y7_N6
\inst1|LessThan1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~7_cout\ = CARRY((\B[3]~input_o\ & (\A[3]~input_o\ & !\inst1|LessThan1~5_cout\)) # (!\B[3]~input_o\ & ((\A[3]~input_o\) # (!\inst1|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \inst1|LessThan1~5_cout\,
	cout => \inst1|LessThan1~7_cout\);

-- Location: LCCOMB_X13_Y7_N8
\inst1|LessThan1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~9_cout\ = CARRY((\B[4]~input_o\ & ((!\inst1|LessThan1~7_cout\) # (!\A[4]~input_o\))) # (!\B[4]~input_o\ & (!\A[4]~input_o\ & !\inst1|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \inst1|LessThan1~7_cout\,
	cout => \inst1|LessThan1~9_cout\);

-- Location: LCCOMB_X13_Y7_N10
\inst1|LessThan1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~11_cout\ = CARRY((\A[5]~input_o\ & ((!\inst1|LessThan1~9_cout\) # (!\B[5]~input_o\))) # (!\A[5]~input_o\ & (!\B[5]~input_o\ & !\inst1|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \inst1|LessThan1~9_cout\,
	cout => \inst1|LessThan1~11_cout\);

-- Location: LCCOMB_X13_Y7_N12
\inst1|LessThan1~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~13_cout\ = CARRY((\B[6]~input_o\ & ((!\inst1|LessThan1~11_cout\) # (!\A[6]~input_o\))) # (!\B[6]~input_o\ & (!\A[6]~input_o\ & !\inst1|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \inst1|LessThan1~11_cout\,
	cout => \inst1|LessThan1~13_cout\);

-- Location: LCCOMB_X13_Y7_N14
\inst1|LessThan1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~14_combout\ = (\B[7]~input_o\ & ((\inst1|LessThan1~13_cout\) # (!\A[7]~input_o\))) # (!\B[7]~input_o\ & (\inst1|LessThan1~13_cout\ & !\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	cin => \inst1|LessThan1~13_cout\,
	combout => \inst1|LessThan1~14_combout\);

-- Location: LCCOMB_X14_Y8_N2
\inst|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (!\inst1|Equal0~4_combout\ & (!\inst1|LessThan0~14_combout\ & !\inst1|LessThan1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~4_combout\,
	datab => \inst1|LessThan0~14_combout\,
	datac => \inst1|LessThan1~14_combout\,
	combout => \inst|Selector0~0_combout\);

-- Location: LCCOMB_X14_Y8_N24
\inst|prox_est.pL_B~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|prox_est.pL_B~0_combout\ = (!\inst1|Equal0~4_combout\ & (!\inst1|LessThan0~14_combout\ & (\inst1|LessThan1~14_combout\ & \inst|est.DEC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~4_combout\,
	datab => \inst1|LessThan0~14_combout\,
	datac => \inst1|LessThan1~14_combout\,
	datad => \inst|est.DEC~q\,
	combout => \inst|prox_est.pL_B~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\RST~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G19
\RST~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: FF_X14_Y8_N25
\inst|est.pL_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|prox_est.pL_B~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|est.pL_B~q\);

-- Location: LCCOMB_X15_Y8_N18
\inst|est.L_B~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|est.L_B~feeder_combout\ = \inst|est.pL_B~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|est.pL_B~q\,
	combout => \inst|est.L_B~feeder_combout\);

-- Location: FF_X15_Y8_N19
\inst|est.L_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|est.L_B~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|est.L_B~q\);

-- Location: LCCOMB_X13_Y8_N26
\inst|Selector0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector0~1_combout\ = (\inst|est.L_B~q\) # ((\inst|est.L_A~q\) # ((\inst|Selector0~0_combout\ & \inst|est.DEC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector0~0_combout\,
	datab => \inst|est.L_B~q\,
	datac => \inst|est.L_A~q\,
	datad => \inst|est.DEC~q\,
	combout => \inst|Selector0~1_combout\);

-- Location: FF_X13_Y8_N21
\inst|est.DEC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Selector0~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|est.DEC~q\);

-- Location: LCCOMB_X13_Y8_N2
\inst|prox_est.L_A~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|prox_est.L_A~0_combout\ = (\inst1|LessThan0~14_combout\ & (!\inst1|Equal0~4_combout\ & \inst|est.DEC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~14_combout\,
	datab => \inst1|Equal0~4_combout\,
	datad => \inst|est.DEC~q\,
	combout => \inst|prox_est.L_A~0_combout\);

-- Location: FF_X13_Y8_N3
\inst|est.L_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|prox_est.L_A~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|est.L_A~q\);

-- Location: LCCOMB_X15_Y4_N16
\inst|LA\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LA~combout\ = LCELL(\inst|est.L_A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|est.L_A~q\,
	combout => \inst|LA~combout\);

-- Location: CLKCTRL_G15
\inst|LA~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|LA~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|LA~clkctrl_outclk\);

-- Location: LCCOMB_X11_Y8_N30
\inst|Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\inst1|Equal0~4_combout\ & \inst|est.DEC~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal0~4_combout\,
	datad => \inst|est.DEC~q\,
	combout => \inst|Selector1~0_combout\);

-- Location: FF_X11_Y8_N31
\inst|est.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector1~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|est.DONE~q\);

-- Location: LCCOMB_X11_Y8_N28
\inst|prox_est~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|prox_est~2_combout\ = (!\inst|est.DONE~q\ & \inst|est.INI~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|est.DONE~q\,
	datac => \inst|est.INI~q\,
	combout => \inst|prox_est~2_combout\);

-- Location: FF_X11_Y8_N29
\inst|est.INI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|prox_est~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|est.INI~q\);

-- Location: LCCOMB_X11_Y8_N16
\inst1|Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_combout\ = \inst1|out_regA\(7) $ (((\inst|est.L_A~q\) # (\inst|est.DEC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|out_regA\(7),
	datac => \inst|est.L_A~q\,
	datad => \inst|est.DEC~q\,
	combout => \inst1|Add0~1_combout\);

-- Location: LCCOMB_X15_Y8_N20
\inst|LB\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LB~combout\ = LCELL(\inst|est.L_B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|est.L_B~q\,
	combout => \inst|LB~combout\);

-- Location: CLKCTRL_G16
\inst|LB~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|LB~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|LB~clkctrl_outclk\);

-- Location: LCCOMB_X12_Y8_N2
\inst1|auxB[7]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|auxB[7]~0_combout\ = (\inst|est.INI~q\ & ((\inst1|Add0~30_combout\))) # (!\inst|est.INI~q\ & (\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datac => \inst|est.INI~q\,
	datad => \inst1|Add0~30_combout\,
	combout => \inst1|auxB[7]~0_combout\);

-- Location: FF_X12_Y8_N3
\inst1|out_regB[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|LB~clkctrl_outclk\,
	d => \inst1|auxB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|out_regB\(7));

-- Location: LCCOMB_X11_Y8_N18
\inst1|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|out_regB\(7) $ (((\inst|est.L_A~q\) # (\inst|est.DEC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|out_regB\(7),
	datac => \inst|est.L_A~q\,
	datad => \inst|est.DEC~q\,
	combout => \inst1|Add0~0_combout\);

-- Location: LCCOMB_X12_Y8_N12
\inst1|auxB[6]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|auxB[6]~1_combout\ = (\inst|est.INI~q\ & (\inst1|Add0~28_combout\)) # (!\inst|est.INI~q\ & ((\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|est.INI~q\,
	datac => \inst1|Add0~28_combout\,
	datad => \B[6]~input_o\,
	combout => \inst1|auxB[6]~1_combout\);

-- Location: FF_X12_Y8_N13
\inst1|out_regB[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|LB~clkctrl_outclk\,
	d => \inst1|auxB[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|out_regB\(6));

-- Location: LCCOMB_X11_Y8_N22
\inst1|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = \inst1|out_regB\(6) $ (((\inst|est.L_A~q\) # (\inst|est.DEC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|out_regB\(6),
	datac => \inst|est.L_A~q\,
	datad => \inst|est.DEC~q\,
	combout => \inst1|Add0~2_combout\);

-- Location: LCCOMB_X11_Y8_N26
\inst1|auxA[5]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|auxA[5]~2_combout\ = (\inst|est.INI~q\ & ((\inst1|Add0~26_combout\))) # (!\inst|est.INI~q\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|est.INI~q\,
	datac => \A[5]~input_o\,
	datad => \inst1|Add0~26_combout\,
	combout => \inst1|auxA[5]~2_combout\);

-- Location: FF_X11_Y8_N27
\inst1|out_regA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|LA~clkctrl_outclk\,
	d => \inst1|auxA[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|out_regA\(5));

-- Location: LCCOMB_X11_Y8_N6
\inst1|Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~5_combout\ = \inst1|out_regA\(5) $ (((\inst|est.L_A~q\) # (\inst|est.DEC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|out_regA\(5),
	datac => \inst|est.L_A~q\,
	datad => \inst|est.DEC~q\,
	combout => \inst1|Add0~5_combout\);

-- Location: LCCOMB_X13_Y8_N8
\inst1|auxA[4]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|auxA[4]~3_combout\ = (\inst|est.INI~q\ & ((\inst1|Add0~24_combout\))) # (!\inst|est.INI~q\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|est.INI~q\,
	datac => \A[4]~input_o\,
	datad => \inst1|Add0~24_combout\,
	combout => \inst1|auxA[4]~3_combout\);

-- Location: FF_X13_Y8_N9
\inst1|out_regA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|LA~clkctrl_outclk\,
	d => \inst1|auxA[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|out_regA\(4));

-- Location: LCCOMB_X13_Y8_N28
\inst1|Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~7_combout\ = \inst1|out_regA\(4) $ (((\inst|est.L_A~q\) # (\inst|est.DEC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|est.L_A~q\,
	datac => \inst1|out_regA\(4),
	datad => \inst|est.DEC~q\,
	combout => \inst1|Add0~7_combout\);

-- Location: LCCOMB_X13_Y8_N0
\inst1|auxA[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|auxA[3]~4_combout\ = (\inst|est.INI~q\ & ((\inst1|Add0~22_combout\))) # (!\inst|est.INI~q\ & (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|est.INI~q\,
	datac => \A[3]~input_o\,
	datad => \inst1|Add0~22_combout\,
	combout => \inst1|auxA[3]~4_combout\);

-- Location: FF_X13_Y8_N1
\inst1|out_regA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|LA~clkctrl_outclk\,
	d => \inst1|auxA[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|out_regA\(3));

-- Location: LCCOMB_X13_Y8_N24
\inst1|Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~9_combout\ = \inst1|out_regA\(3) $ (((\inst|est.L_A~q\) # (\inst|est.DEC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|est.L_A~q\,
	datac => \inst|est.DEC~q\,
	datad => \inst1|out_regA\(3),
	combout => \inst1|Add0~9_combout\);

-- Location: LCCOMB_X11_Y8_N20
\inst1|auxA[2]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|auxA[2]~5_combout\ = (\inst|est.INI~q\ & (\inst1|Add0~20_combout\)) # (!\inst|est.INI~q\ & ((\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|est.INI~q\,
	datab => \inst1|Add0~20_combout\,
	datac => \A[2]~input_o\,
	combout => \inst1|auxA[2]~5_combout\);

-- Location: FF_X11_Y8_N21
\inst1|out_regA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|LA~clkctrl_outclk\,
	d => \inst1|auxA[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|out_regA\(2));

-- Location: LCCOMB_X13_Y8_N12
\inst1|Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~11_combout\ = \inst1|out_regA\(2) $ (((\inst|est.L_A~q\) # (\inst|est.DEC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|est.L_A~q\,
	datac => \inst1|out_regA\(2),
	datad => \inst|est.DEC~q\,
	combout => \inst1|Add0~11_combout\);

-- Location: LCCOMB_X13_Y8_N22
\inst1|auxA[1]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|auxA[1]~6_combout\ = (\inst|est.INI~q\ & (\inst1|Add0~18_combout\)) # (!\inst|est.INI~q\ & ((\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~18_combout\,
	datac => \A[1]~input_o\,
	datad => \inst|est.INI~q\,
	combout => \inst1|auxA[1]~6_combout\);

-- Location: FF_X13_Y8_N23
\inst1|out_regA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|LA~clkctrl_outclk\,
	d => \inst1|auxA[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|out_regA\(1));

-- Location: LCCOMB_X13_Y8_N14
\inst1|Add0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~13_combout\ = \inst1|out_regA\(1) $ (((\inst|est.L_A~q\) # (\inst|est.DEC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|est.L_A~q\,
	datac => \inst1|out_regA\(1),
	datad => \inst|est.DEC~q\,
	combout => \inst1|Add0~13_combout\);

-- Location: LCCOMB_X13_Y8_N4
\inst1|auxA[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|auxA[0]~7_combout\ = (\inst|est.INI~q\ & (\inst1|Add0~16_combout\)) # (!\inst|est.INI~q\ & ((\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~16_combout\,
	datab => \inst|est.INI~q\,
	datac => \A[0]~input_o\,
	combout => \inst1|auxA[0]~7_combout\);

-- Location: FF_X13_Y8_N5
\inst1|out_regA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|LA~clkctrl_outclk\,
	d => \inst1|auxA[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|out_regA\(0));

-- Location: LCCOMB_X13_Y8_N10
\inst1|Add0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~15_combout\ = \inst1|out_regA\(0) $ (((\inst|est.L_A~q\) # (\inst|est.DEC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|est.L_A~q\,
	datac => \inst1|out_regA\(0),
	datad => \inst|est.DEC~q\,
	combout => \inst1|Add0~15_combout\);

-- Location: LCCOMB_X12_Y8_N14
\inst1|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|Add0~14_combout\ & ((GND) # (!\inst1|Add0~15_combout\))) # (!\inst1|Add0~14_combout\ & (\inst1|Add0~15_combout\ $ (GND)))
-- \inst1|Add0~17\ = CARRY((\inst1|Add0~14_combout\) # (!\inst1|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~14_combout\,
	datab => \inst1|Add0~15_combout\,
	datad => VCC,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X14_Y8_N10
\inst1|auxB[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|auxB[0]~7_combout\ = (\inst|est.INI~q\ & (\inst1|Add0~16_combout\)) # (!\inst|est.INI~q\ & ((\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~16_combout\,
	datac => \B[0]~input_o\,
	datad => \inst|est.INI~q\,
	combout => \inst1|auxB[0]~7_combout\);

-- Location: FF_X14_Y8_N11
\inst1|out_regB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|LB~clkctrl_outclk\,
	d => \inst1|auxB[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|out_regB\(0));

-- Location: LCCOMB_X13_Y8_N30
\inst1|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = \inst1|out_regB\(0) $ (((\inst|est.L_A~q\) # (\inst|est.DEC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|est.L_A~q\,
	datac => \inst1|out_regB\(0),
	datad => \inst|est.DEC~q\,
	combout => \inst1|Add0~14_combout\);

-- Location: LCCOMB_X12_Y8_N16
\inst1|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|Add0~12_combout\ & ((\inst1|Add0~13_combout\ & (!\inst1|Add0~17\)) # (!\inst1|Add0~13_combout\ & (\inst1|Add0~17\ & VCC)))) # (!\inst1|Add0~12_combout\ & ((\inst1|Add0~13_combout\ & ((\inst1|Add0~17\) # (GND))) # 
-- (!\inst1|Add0~13_combout\ & (!\inst1|Add0~17\))))
-- \inst1|Add0~19\ = CARRY((\inst1|Add0~12_combout\ & (\inst1|Add0~13_combout\ & !\inst1|Add0~17\)) # (!\inst1|Add0~12_combout\ & ((\inst1|Add0~13_combout\) # (!\inst1|Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~12_combout\,
	datab => \inst1|Add0~13_combout\,
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X12_Y8_N4
\inst1|auxB[1]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|auxB[1]~6_combout\ = (\inst|est.INI~q\ & (\inst1|Add0~18_combout\)) # (!\inst|est.INI~q\ & ((\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|est.INI~q\,
	datac => \inst1|Add0~18_combout\,
	datad => \B[1]~input_o\,
	combout => \inst1|auxB[1]~6_combout\);

-- Location: FF_X12_Y8_N5
\inst1|out_regB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|LB~clkctrl_outclk\,
	d => \inst1|auxB[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|out_regB\(1));

-- Location: LCCOMB_X12_Y8_N30
\inst1|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = \inst1|out_regB\(1) $ (((\inst|est.L_A~q\) # (\inst|est.DEC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|est.L_A~q\,
	datac => \inst|est.DEC~q\,
	datad => \inst1|out_regB\(1),
	combout => \inst1|Add0~12_combout\);

-- Location: LCCOMB_X12_Y8_N18
\inst1|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = ((\inst1|Add0~10_combout\ $ (\inst1|Add0~11_combout\ $ (\inst1|Add0~19\)))) # (GND)
-- \inst1|Add0~21\ = CARRY((\inst1|Add0~10_combout\ & ((!\inst1|Add0~19\) # (!\inst1|Add0~11_combout\))) # (!\inst1|Add0~10_combout\ & (!\inst1|Add0~11_combout\ & !\inst1|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~10_combout\,
	datab => \inst1|Add0~11_combout\,
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: LCCOMB_X14_Y8_N12
\inst1|auxB[2]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|auxB[2]~5_combout\ = (\inst|est.INI~q\ & ((\inst1|Add0~20_combout\))) # (!\inst|est.INI~q\ & (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \inst|est.INI~q\,
	datad => \inst1|Add0~20_combout\,
	combout => \inst1|auxB[2]~5_combout\);

-- Location: FF_X14_Y8_N13
\inst1|out_regB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|LB~clkctrl_outclk\,
	d => \inst1|auxB[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|out_regB\(2));

-- Location: LCCOMB_X13_Y8_N6
\inst1|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = \inst1|out_regB\(2) $ (((\inst|est.L_A~q\) # (\inst|est.DEC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|est.L_A~q\,
	datac => \inst1|out_regB\(2),
	datad => \inst|est.DEC~q\,
	combout => \inst1|Add0~10_combout\);

-- Location: LCCOMB_X12_Y8_N20
\inst1|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|Add0~8_combout\ & ((\inst1|Add0~9_combout\ & (!\inst1|Add0~21\)) # (!\inst1|Add0~9_combout\ & (\inst1|Add0~21\ & VCC)))) # (!\inst1|Add0~8_combout\ & ((\inst1|Add0~9_combout\ & ((\inst1|Add0~21\) # (GND))) # 
-- (!\inst1|Add0~9_combout\ & (!\inst1|Add0~21\))))
-- \inst1|Add0~23\ = CARRY((\inst1|Add0~8_combout\ & (\inst1|Add0~9_combout\ & !\inst1|Add0~21\)) # (!\inst1|Add0~8_combout\ & ((\inst1|Add0~9_combout\) # (!\inst1|Add0~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~8_combout\,
	datab => \inst1|Add0~9_combout\,
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: LCCOMB_X12_Y8_N6
\inst1|auxB[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|auxB[3]~4_combout\ = (\inst|est.INI~q\ & (\inst1|Add0~22_combout\)) # (!\inst|est.INI~q\ & ((\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~22_combout\,
	datac => \inst|est.INI~q\,
	datad => \B[3]~input_o\,
	combout => \inst1|auxB[3]~4_combout\);

-- Location: FF_X12_Y8_N7
\inst1|out_regB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|LB~clkctrl_outclk\,
	d => \inst1|auxB[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|out_regB\(3));

-- Location: LCCOMB_X13_Y8_N18
\inst1|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = \inst1|out_regB\(3) $ (((\inst|est.L_A~q\) # (\inst|est.DEC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|est.L_A~q\,
	datac => \inst1|out_regB\(3),
	datad => \inst|est.DEC~q\,
	combout => \inst1|Add0~8_combout\);

-- Location: LCCOMB_X12_Y8_N22
\inst1|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = ((\inst1|Add0~6_combout\ $ (\inst1|Add0~7_combout\ $ (\inst1|Add0~23\)))) # (GND)
-- \inst1|Add0~25\ = CARRY((\inst1|Add0~6_combout\ & ((!\inst1|Add0~23\) # (!\inst1|Add0~7_combout\))) # (!\inst1|Add0~6_combout\ & (!\inst1|Add0~7_combout\ & !\inst1|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~6_combout\,
	datab => \inst1|Add0~7_combout\,
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: LCCOMB_X12_Y8_N8
\inst1|auxB[4]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|auxB[4]~3_combout\ = (\inst|est.INI~q\ & (\inst1|Add0~24_combout\)) # (!\inst|est.INI~q\ & ((\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~24_combout\,
	datac => \B[4]~input_o\,
	datad => \inst|est.INI~q\,
	combout => \inst1|auxB[4]~3_combout\);

-- Location: FF_X12_Y8_N9
\inst1|out_regB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|LB~clkctrl_outclk\,
	d => \inst1|auxB[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|out_regB\(4));

-- Location: LCCOMB_X13_Y8_N20
\inst1|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = \inst1|out_regB\(4) $ (((\inst|est.L_A~q\) # (\inst|est.DEC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|est.L_A~q\,
	datac => \inst|est.DEC~q\,
	datad => \inst1|out_regB\(4),
	combout => \inst1|Add0~6_combout\);

-- Location: LCCOMB_X12_Y8_N24
\inst1|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (\inst1|Add0~4_combout\ & ((\inst1|Add0~5_combout\ & (!\inst1|Add0~25\)) # (!\inst1|Add0~5_combout\ & (\inst1|Add0~25\ & VCC)))) # (!\inst1|Add0~4_combout\ & ((\inst1|Add0~5_combout\ & ((\inst1|Add0~25\) # (GND))) # 
-- (!\inst1|Add0~5_combout\ & (!\inst1|Add0~25\))))
-- \inst1|Add0~27\ = CARRY((\inst1|Add0~4_combout\ & (\inst1|Add0~5_combout\ & !\inst1|Add0~25\)) # (!\inst1|Add0~4_combout\ & ((\inst1|Add0~5_combout\) # (!\inst1|Add0~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~4_combout\,
	datab => \inst1|Add0~5_combout\,
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: LCCOMB_X12_Y8_N10
\inst1|auxB[5]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|auxB[5]~2_combout\ = (\inst|est.INI~q\ & ((\inst1|Add0~26_combout\))) # (!\inst|est.INI~q\ & (\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \inst|est.INI~q\,
	datad => \inst1|Add0~26_combout\,
	combout => \inst1|auxB[5]~2_combout\);

-- Location: FF_X12_Y8_N11
\inst1|out_regB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|LB~clkctrl_outclk\,
	d => \inst1|auxB[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|out_regB\(5));

-- Location: LCCOMB_X13_Y8_N16
\inst1|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = \inst1|out_regB\(5) $ (((\inst|est.L_A~q\) # (\inst|est.DEC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|est.L_A~q\,
	datac => \inst|est.DEC~q\,
	datad => \inst1|out_regB\(5),
	combout => \inst1|Add0~4_combout\);

-- Location: LCCOMB_X12_Y8_N26
\inst1|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = ((\inst1|Add0~3_combout\ $ (\inst1|Add0~2_combout\ $ (\inst1|Add0~27\)))) # (GND)
-- \inst1|Add0~29\ = CARRY((\inst1|Add0~3_combout\ & (\inst1|Add0~2_combout\ & !\inst1|Add0~27\)) # (!\inst1|Add0~3_combout\ & ((\inst1|Add0~2_combout\) # (!\inst1|Add0~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~3_combout\,
	datab => \inst1|Add0~2_combout\,
	datad => VCC,
	cin => \inst1|Add0~27\,
	combout => \inst1|Add0~28_combout\,
	cout => \inst1|Add0~29\);

-- Location: LCCOMB_X11_Y8_N8
\inst1|auxA[6]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|auxA[6]~1_combout\ = (\inst|est.INI~q\ & ((\inst1|Add0~28_combout\))) # (!\inst|est.INI~q\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|est.INI~q\,
	datab => \A[6]~input_o\,
	datad => \inst1|Add0~28_combout\,
	combout => \inst1|auxA[6]~1_combout\);

-- Location: FF_X11_Y8_N9
\inst1|out_regA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|LA~clkctrl_outclk\,
	d => \inst1|auxA[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|out_regA\(6));

-- Location: LCCOMB_X11_Y8_N12
\inst1|Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~3_combout\ = \inst1|out_regA\(6) $ (((\inst|est.DEC~q\) # (\inst|est.L_A~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|out_regA\(6),
	datac => \inst|est.DEC~q\,
	datad => \inst|est.L_A~q\,
	combout => \inst1|Add0~3_combout\);

-- Location: LCCOMB_X12_Y8_N28
\inst1|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = \inst1|Add0~1_combout\ $ (\inst1|Add0~0_combout\ $ (!\inst1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~1_combout\,
	datab => \inst1|Add0~0_combout\,
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\);

-- Location: LCCOMB_X12_Y8_N0
\inst1|auxA[7]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|auxA[7]~0_combout\ = (\inst|est.INI~q\ & ((\inst1|Add0~30_combout\))) # (!\inst|est.INI~q\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|est.INI~q\,
	datac => \A[7]~input_o\,
	datad => \inst1|Add0~30_combout\,
	combout => \inst1|auxA[7]~0_combout\);

-- Location: FF_X12_Y8_N1
\inst1|out_regA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|LA~clkctrl_outclk\,
	d => \inst1|auxA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|out_regA\(7));

ww_SAIDA(7) <= \SAIDA[7]~output_o\;

ww_SAIDA(6) <= \SAIDA[6]~output_o\;

ww_SAIDA(5) <= \SAIDA[5]~output_o\;

ww_SAIDA(4) <= \SAIDA[4]~output_o\;

ww_SAIDA(3) <= \SAIDA[3]~output_o\;

ww_SAIDA(2) <= \SAIDA[2]~output_o\;

ww_SAIDA(1) <= \SAIDA[1]~output_o\;

ww_SAIDA(0) <= \SAIDA[0]~output_o\;
END structure;


