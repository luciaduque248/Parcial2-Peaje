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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/08/2024 14:18:49"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	Maq_estados IS
    PORT (
	clk : IN std_logic;
	front_sensor : IN std_logic;
	back_sensor : IN std_logic;
	cobrar : IN std_logic;
	reset : IN std_logic;
	cat : IN std_logic_vector(1 DOWNTO 0);
	id : IN std_logic_vector(2 DOWNTO 0);
	tala_ini : OUT std_logic;
	tala_fin : OUT std_logic;
	alar_son : OUT std_logic;
	led : OUT std_logic;
	sema_ini : OUT std_logic;
	sema_fin : OUT std_logic;
	cont_vehiculo : OUT std_logic;
	contador : BUFFER STD.STANDARD.integer range 0 TO 2
	);
END Maq_estados;

-- Design Ports Information
-- id[0]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tala_ini	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tala_fin	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alar_son	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sema_ini	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sema_fin	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont_vehiculo	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador[0]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador[1]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- back_sensor	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- front_sensor	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cobrar	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Maq_estados IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_front_sensor : std_logic;
SIGNAL ww_back_sensor : std_logic;
SIGNAL ww_cobrar : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_cat : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_id : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tala_ini : std_logic;
SIGNAL ww_tala_fin : std_logic;
SIGNAL ww_alar_son : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL ww_sema_ini : std_logic;
SIGNAL ww_sema_fin : std_logic;
SIGNAL ww_cont_vehiculo : std_logic;
SIGNAL ww_contador : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \id[0]~input_o\ : std_logic;
SIGNAL \id[1]~input_o\ : std_logic;
SIGNAL \id[2]~input_o\ : std_logic;
SIGNAL \tala_ini~output_o\ : std_logic;
SIGNAL \tala_fin~output_o\ : std_logic;
SIGNAL \alar_son~output_o\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \sema_ini~output_o\ : std_logic;
SIGNAL \sema_fin~output_o\ : std_logic;
SIGNAL \cont_vehiculo~output_o\ : std_logic;
SIGNAL \contador[0]~output_o\ : std_logic;
SIGNAL \contador[1]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \front_sensor~input_o\ : std_logic;
SIGNAL \back_sensor~input_o\ : std_logic;
SIGNAL \cat[0]~input_o\ : std_logic;
SIGNAL \cat[1]~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \current_state.identificador~q\ : std_logic;
SIGNAL \contador[1]~0_combout\ : std_logic;
SIGNAL \contador[0]$latch~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \current_state.incorrecto~q\ : std_logic;
SIGNAL \contador[1]~1_combout\ : std_logic;
SIGNAL \contador[1]$latch~combout\ : std_logic;
SIGNAL \cobrar~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \current_state.cobro~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \current_state.salida~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \current_state.inicio~q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_current_state.inicio~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_front_sensor <= front_sensor;
ww_back_sensor <= back_sensor;
ww_cobrar <= cobrar;
ww_reset <= reset;
ww_cat <= cat;
ww_id <= id;
tala_ini <= ww_tala_ini;
tala_fin <= ww_tala_fin;
alar_son <= ww_alar_son;
led <= ww_led;
sema_ini <= ww_sema_ini;
sema_fin <= ww_sema_fin;
cont_vehiculo <= ww_cont_vehiculo;
contador <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_contador));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_current_state.inicio~q\ <= NOT \current_state.inicio~q\;

-- Location: IOOBUF_X0_Y20_N9
\tala_ini~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_current_state.inicio~q\,
	devoe => ww_devoe,
	o => \tala_ini~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\tala_fin~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.salida~q\,
	devoe => ww_devoe,
	o => \tala_fin~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\alar_son~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.incorrecto~q\,
	devoe => ww_devoe,
	o => \alar_son~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\sema_ini~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_current_state.inicio~q\,
	devoe => ww_devoe,
	o => \sema_ini~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\sema_fin~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.salida~q\,
	devoe => ww_devoe,
	o => \sema_fin~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\cont_vehiculo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.salida~q\,
	devoe => ww_devoe,
	o => \cont_vehiculo~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\contador[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contador[0]$latch~0_combout\,
	devoe => ww_devoe,
	o => \contador[0]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\contador[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contador[1]$latch~combout\,
	devoe => ww_devoe,
	o => \contador[1]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y27_N1
\front_sensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_front_sensor,
	o => \front_sensor~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\back_sensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_back_sensor,
	o => \back_sensor~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\cat[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cat(0),
	o => \cat[0]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\cat[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cat(1),
	o => \cat[1]~input_o\);

-- Location: LCCOMB_X1_Y27_N28
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\front_sensor~input_o\ & !\current_state.inicio~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \front_sensor~input_o\,
	datad => \current_state.inicio~q\,
	combout => \Selector1~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X1_Y27_N29
\current_state.identificador\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.identificador~q\);

-- Location: LCCOMB_X1_Y27_N10
\contador[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[1]~0_combout\ = (!\cat[1]~input_o\ & (!\cat[0]~input_o\ & \current_state.incorrecto~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cat[1]~input_o\,
	datac => \cat[0]~input_o\,
	datad => \current_state.incorrecto~q\,
	combout => \contador[1]~0_combout\);

-- Location: LCCOMB_X1_Y27_N6
\contador[0]$latch~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[0]$latch~0_combout\ = \contador[0]$latch~0_combout\ $ (((!\contador[1]$latch~combout\ & \contador[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador[0]$latch~0_combout\,
	datac => \contador[1]$latch~combout\,
	datad => \contador[1]~0_combout\,
	combout => \contador[0]$latch~0_combout\);

-- Location: LCCOMB_X1_Y27_N4
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\current_state.identificador~q\) # ((\current_state.incorrecto~q\ & ((\contador[0]$latch~0_combout\) # (!\contador[1]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador[1]$latch~combout\,
	datab => \current_state.incorrecto~q\,
	datac => \current_state.identificador~q\,
	datad => \contador[0]$latch~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X1_Y27_N12
\Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (!\cat[1]~input_o\ & (\Selector4~0_combout\ & !\cat[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cat[1]~input_o\,
	datac => \Selector4~0_combout\,
	datad => \cat[0]~input_o\,
	combout => \Selector4~1_combout\);

-- Location: FF_X1_Y27_N13
\current_state.incorrecto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector4~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.incorrecto~q\);

-- Location: LCCOMB_X1_Y27_N8
\contador[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[1]~1_combout\ = (!\cat[0]~input_o\ & (!\contador[1]$latch~combout\ & (!\cat[1]~input_o\ & \current_state.incorrecto~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cat[0]~input_o\,
	datab => \contador[1]$latch~combout\,
	datac => \cat[1]~input_o\,
	datad => \current_state.incorrecto~q\,
	combout => \contador[1]~1_combout\);

-- Location: LCCOMB_X1_Y27_N26
\contador[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[1]$latch~combout\ = (\contador[1]~1_combout\ & ((\contador[0]$latch~0_combout\))) # (!\contador[1]~1_combout\ & (\contador[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador[1]$latch~combout\,
	datac => \contador[1]~1_combout\,
	datad => \contador[0]$latch~0_combout\,
	combout => \contador[1]$latch~combout\);

-- Location: IOIBUF_X0_Y23_N8
\cobrar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cobrar,
	o => \cobrar~input_o\);

-- Location: LCCOMB_X1_Y27_N24
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\current_state.incorrecto~q\ & (((\cat[1]~input_o\) # (\cat[0]~input_o\)))) # (!\current_state.incorrecto~q\ & (\current_state.identificador~q\ & ((\cat[1]~input_o\) # (\cat[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.incorrecto~q\,
	datab => \current_state.identificador~q\,
	datac => \cat[1]~input_o\,
	datad => \cat[0]~input_o\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X1_Y27_N30
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((!\cobrar~input_o\ & \current_state.cobro~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cobrar~input_o\,
	datac => \current_state.cobro~q\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X1_Y27_N31
\current_state.cobro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.cobro~q\);

-- Location: LCCOMB_X1_Y27_N14
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\cobrar~input_o\ & ((\current_state.cobro~q\) # ((!\back_sensor~input_o\ & \current_state.salida~q\)))) # (!\cobrar~input_o\ & (!\back_sensor~input_o\ & ((\current_state.salida~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cobrar~input_o\,
	datab => \back_sensor~input_o\,
	datac => \current_state.cobro~q\,
	datad => \current_state.salida~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X1_Y27_N16
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\contador[1]$latch~combout\ & (\contador[1]~0_combout\ & !\contador[0]$latch~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador[1]$latch~combout\,
	datab => \contador[1]~0_combout\,
	datac => \Selector3~0_combout\,
	datad => \contador[0]$latch~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X1_Y27_N17
\current_state.salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.salida~q\);

-- Location: LCCOMB_X1_Y27_N20
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\front_sensor~input_o\ & (((!\current_state.salida~q\)) # (!\back_sensor~input_o\))) # (!\front_sensor~input_o\ & (\current_state.inicio~q\ & ((!\current_state.salida~q\) # (!\back_sensor~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \front_sensor~input_o\,
	datab => \back_sensor~input_o\,
	datac => \current_state.inicio~q\,
	datad => \current_state.salida~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X1_Y27_N21
\current_state.inicio\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.inicio~q\);

-- Location: IOIBUF_X0_Y25_N15
\id[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_id(0),
	o => \id[0]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\id[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_id(1),
	o => \id[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\id[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_id(2),
	o => \id[2]~input_o\);

ww_tala_ini <= \tala_ini~output_o\;

ww_tala_fin <= \tala_fin~output_o\;

ww_alar_son <= \alar_son~output_o\;

ww_led <= \led~output_o\;

ww_sema_ini <= \sema_ini~output_o\;

ww_sema_fin <= \sema_fin~output_o\;

ww_cont_vehiculo <= \cont_vehiculo~output_o\;

ww_contador(0) <= \contador[0]~output_o\;

ww_contador(1) <= \contador[1]~output_o\;
END structure;


