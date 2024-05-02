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

-- DATE "04/30/2024 17:05:36"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LCDArduino IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	estado : IN std_logic_vector(3 DOWNTO 0);
	categoria_vehiculo : IN std_logic_vector(2 DOWNTO 0);
	tiempo_vehiculo : IN std_logic_vector(15 DOWNTO 0);
	tarifa_peaje : IN std_logic_vector(7 DOWNTO 0);
	datos_lcd : BUFFER std_logic_vector(7 DOWNTO 0);
	habilitador_lcd : IN std_logic
	);
END LCDArduino;

-- Design Ports Information
-- tiempo_vehiculo[0]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_vehiculo[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_vehiculo[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_vehiculo[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_vehiculo[4]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_vehiculo[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_vehiculo[6]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_vehiculo[7]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_vehiculo[8]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_vehiculo[9]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_vehiculo[10]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_vehiculo[11]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_vehiculo[12]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_vehiculo[13]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_vehiculo[14]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_vehiculo[15]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tarifa_peaje[0]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tarifa_peaje[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tarifa_peaje[2]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tarifa_peaje[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tarifa_peaje[4]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tarifa_peaje[5]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tarifa_peaje[6]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tarifa_peaje[7]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_lcd[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_lcd[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_lcd[2]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_lcd[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_lcd[4]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_lcd[5]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_lcd[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_lcd[7]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitador_lcd	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[1]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[2]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria_vehiculo[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria_vehiculo[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria_vehiculo[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LCDArduino IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_estado : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_categoria_vehiculo : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tiempo_vehiculo : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_tarifa_peaje : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_datos_lcd : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_habilitador_lcd : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tiempo_vehiculo[0]~input_o\ : std_logic;
SIGNAL \tiempo_vehiculo[1]~input_o\ : std_logic;
SIGNAL \tiempo_vehiculo[2]~input_o\ : std_logic;
SIGNAL \tiempo_vehiculo[3]~input_o\ : std_logic;
SIGNAL \tiempo_vehiculo[4]~input_o\ : std_logic;
SIGNAL \tiempo_vehiculo[5]~input_o\ : std_logic;
SIGNAL \tiempo_vehiculo[6]~input_o\ : std_logic;
SIGNAL \tiempo_vehiculo[7]~input_o\ : std_logic;
SIGNAL \tiempo_vehiculo[8]~input_o\ : std_logic;
SIGNAL \tiempo_vehiculo[9]~input_o\ : std_logic;
SIGNAL \tiempo_vehiculo[10]~input_o\ : std_logic;
SIGNAL \tiempo_vehiculo[11]~input_o\ : std_logic;
SIGNAL \tiempo_vehiculo[12]~input_o\ : std_logic;
SIGNAL \tiempo_vehiculo[13]~input_o\ : std_logic;
SIGNAL \tiempo_vehiculo[14]~input_o\ : std_logic;
SIGNAL \tiempo_vehiculo[15]~input_o\ : std_logic;
SIGNAL \tarifa_peaje[0]~input_o\ : std_logic;
SIGNAL \tarifa_peaje[1]~input_o\ : std_logic;
SIGNAL \tarifa_peaje[2]~input_o\ : std_logic;
SIGNAL \tarifa_peaje[3]~input_o\ : std_logic;
SIGNAL \tarifa_peaje[4]~input_o\ : std_logic;
SIGNAL \tarifa_peaje[5]~input_o\ : std_logic;
SIGNAL \tarifa_peaje[6]~input_o\ : std_logic;
SIGNAL \tarifa_peaje[7]~input_o\ : std_logic;
SIGNAL \datos_lcd[0]~output_o\ : std_logic;
SIGNAL \datos_lcd[1]~output_o\ : std_logic;
SIGNAL \datos_lcd[2]~output_o\ : std_logic;
SIGNAL \datos_lcd[3]~output_o\ : std_logic;
SIGNAL \datos_lcd[4]~output_o\ : std_logic;
SIGNAL \datos_lcd[5]~output_o\ : std_logic;
SIGNAL \datos_lcd[6]~output_o\ : std_logic;
SIGNAL \datos_lcd[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \habilitador_lcd~input_o\ : std_logic;
SIGNAL \categoria_vehiculo[0]~input_o\ : std_logic;
SIGNAL \estado[2]~input_o\ : std_logic;
SIGNAL \estado[0]~input_o\ : std_logic;
SIGNAL \estado[1]~input_o\ : std_logic;
SIGNAL \estado[3]~input_o\ : std_logic;
SIGNAL \datos_lcd~0_combout\ : std_logic;
SIGNAL \datos_lcd[0]~1_combout\ : std_logic;
SIGNAL \datos_lcd~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \datos_lcd[0]~reg0_q\ : std_logic;
SIGNAL \categoria_vehiculo[1]~input_o\ : std_logic;
SIGNAL \datos_lcd~3_combout\ : std_logic;
SIGNAL \datos_lcd~4_combout\ : std_logic;
SIGNAL \datos_lcd[1]~reg0_q\ : std_logic;
SIGNAL \datos_lcd~5_combout\ : std_logic;
SIGNAL \categoria_vehiculo[2]~input_o\ : std_logic;
SIGNAL \datos_lcd~6_combout\ : std_logic;
SIGNAL \datos_lcd[2]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \datos_lcd~7_combout\ : std_logic;
SIGNAL \datos_lcd[3]~reg0_q\ : std_logic;
SIGNAL \datos_lcd~8_combout\ : std_logic;
SIGNAL \datos_lcd~9_combout\ : std_logic;
SIGNAL \datos_lcd[4]~reg0_q\ : std_logic;
SIGNAL \datos_lcd[5]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \datos_lcd~10_combout\ : std_logic;
SIGNAL \datos_lcd[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_estado <= estado;
ww_categoria_vehiculo <= categoria_vehiculo;
ww_tiempo_vehiculo <= tiempo_vehiculo;
ww_tarifa_peaje <= tarifa_peaje;
datos_lcd <= ww_datos_lcd;
ww_habilitador_lcd <= habilitador_lcd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y6_N9
\datos_lcd[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datos_lcd[0]~reg0_q\,
	devoe => ww_devoe,
	o => \datos_lcd[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\datos_lcd[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datos_lcd[1]~reg0_q\,
	devoe => ww_devoe,
	o => \datos_lcd[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\datos_lcd[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datos_lcd[2]~reg0_q\,
	devoe => ww_devoe,
	o => \datos_lcd[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\datos_lcd[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datos_lcd[3]~reg0_q\,
	devoe => ww_devoe,
	o => \datos_lcd[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\datos_lcd[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datos_lcd[4]~reg0_q\,
	devoe => ww_devoe,
	o => \datos_lcd[4]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\datos_lcd[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datos_lcd[5]~reg0_q\,
	devoe => ww_devoe,
	o => \datos_lcd[5]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\datos_lcd[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datos_lcd[6]~reg0_q\,
	devoe => ww_devoe,
	o => \datos_lcd[6]~output_o\);

-- Location: IOOBUF_X5_Y29_N30
\datos_lcd[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \datos_lcd[7]~output_o\);

-- Location: IOIBUF_X21_Y0_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
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

-- Location: IOIBUF_X21_Y0_N1
\habilitador_lcd~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_habilitador_lcd,
	o => \habilitador_lcd~input_o\);

-- Location: IOIBUF_X0_Y2_N8
\categoria_vehiculo[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_categoria_vehiculo(0),
	o => \categoria_vehiculo[0]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\estado[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado(2),
	o => \estado[2]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\estado[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado(0),
	o => \estado[0]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\estado[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado(1),
	o => \estado[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\estado[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado(3),
	o => \estado[3]~input_o\);

-- Location: LCCOMB_X1_Y2_N22
\datos_lcd~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_lcd~0_combout\ = (\estado[2]~input_o\ & (!\estado[3]~input_o\ & (\estado[0]~input_o\ $ (!\estado[1]~input_o\)))) # (!\estado[2]~input_o\ & (\estado[0]~input_o\ $ (((\estado[1]~input_o\ & \estado[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado[2]~input_o\,
	datab => \estado[0]~input_o\,
	datac => \estado[1]~input_o\,
	datad => \estado[3]~input_o\,
	combout => \datos_lcd~0_combout\);

-- Location: LCCOMB_X1_Y2_N0
\datos_lcd[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_lcd[0]~1_combout\ = (\estado[2]~input_o\) # (((\estado[3]~input_o\) # (!\estado[1]~input_o\)) # (!\estado[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado[2]~input_o\,
	datab => \estado[0]~input_o\,
	datac => \estado[1]~input_o\,
	datad => \estado[3]~input_o\,
	combout => \datos_lcd[0]~1_combout\);

-- Location: LCCOMB_X1_Y2_N8
\datos_lcd~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_lcd~2_combout\ = (\habilitador_lcd~input_o\ & ((\datos_lcd[0]~1_combout\ & ((\datos_lcd~0_combout\))) # (!\datos_lcd[0]~1_combout\ & (\categoria_vehiculo[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habilitador_lcd~input_o\,
	datab => \categoria_vehiculo[0]~input_o\,
	datac => \datos_lcd~0_combout\,
	datad => \datos_lcd[0]~1_combout\,
	combout => \datos_lcd~2_combout\);

-- Location: IOIBUF_X0_Y14_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X1_Y2_N9
\datos_lcd[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_lcd~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos_lcd[0]~reg0_q\);

-- Location: IOIBUF_X0_Y2_N15
\categoria_vehiculo[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_categoria_vehiculo(1),
	o => \categoria_vehiculo[1]~input_o\);

-- Location: LCCOMB_X1_Y2_N2
\datos_lcd~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_lcd~3_combout\ = (\estado[2]~input_o\ & (\estado[0]~input_o\ & ((!\estado[3]~input_o\)))) # (!\estado[2]~input_o\ & (((!\estado[1]~input_o\ & \estado[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado[2]~input_o\,
	datab => \estado[0]~input_o\,
	datac => \estado[1]~input_o\,
	datad => \estado[3]~input_o\,
	combout => \datos_lcd~3_combout\);

-- Location: LCCOMB_X1_Y2_N10
\datos_lcd~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_lcd~4_combout\ = (\habilitador_lcd~input_o\ & ((\datos_lcd~3_combout\) # ((\categoria_vehiculo[1]~input_o\ & !\datos_lcd[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \categoria_vehiculo[1]~input_o\,
	datab => \datos_lcd~3_combout\,
	datac => \datos_lcd[0]~1_combout\,
	datad => \habilitador_lcd~input_o\,
	combout => \datos_lcd~4_combout\);

-- Location: FF_X1_Y2_N11
\datos_lcd[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_lcd~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos_lcd[1]~reg0_q\);

-- Location: LCCOMB_X1_Y2_N28
\datos_lcd~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_lcd~5_combout\ = (!\estado[3]~input_o\ & (\estado[0]~input_o\ $ (((\estado[2]~input_o\) # (\estado[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado[2]~input_o\,
	datab => \estado[0]~input_o\,
	datac => \estado[1]~input_o\,
	datad => \estado[3]~input_o\,
	combout => \datos_lcd~5_combout\);

-- Location: IOIBUF_X0_Y5_N22
\categoria_vehiculo[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_categoria_vehiculo(2),
	o => \categoria_vehiculo[2]~input_o\);

-- Location: LCCOMB_X1_Y2_N12
\datos_lcd~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_lcd~6_combout\ = (\habilitador_lcd~input_o\ & ((\datos_lcd[0]~1_combout\ & (\datos_lcd~5_combout\)) # (!\datos_lcd[0]~1_combout\ & ((\categoria_vehiculo[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habilitador_lcd~input_o\,
	datab => \datos_lcd~5_combout\,
	datac => \categoria_vehiculo[2]~input_o\,
	datad => \datos_lcd[0]~1_combout\,
	combout => \datos_lcd~6_combout\);

-- Location: FF_X1_Y2_N13
\datos_lcd[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_lcd~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos_lcd[2]~reg0_q\);

-- Location: LCCOMB_X1_Y2_N6
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\estado[0]~input_o\ & (!\estado[3]~input_o\ & ((\estado[2]~input_o\) # (\estado[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado[2]~input_o\,
	datab => \estado[0]~input_o\,
	datac => \estado[1]~input_o\,
	datad => \estado[3]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y2_N30
\datos_lcd~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_lcd~7_combout\ = (\Mux2~0_combout\ & \habilitador_lcd~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datad => \habilitador_lcd~input_o\,
	combout => \datos_lcd~7_combout\);

-- Location: FF_X1_Y2_N31
\datos_lcd[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_lcd~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos_lcd[3]~reg0_q\);

-- Location: LCCOMB_X1_Y2_N24
\datos_lcd~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_lcd~8_combout\ = (\estado[2]~input_o\ & (!\estado[0]~input_o\ & (\estado[1]~input_o\ & !\estado[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado[2]~input_o\,
	datab => \estado[0]~input_o\,
	datac => \estado[1]~input_o\,
	datad => \estado[3]~input_o\,
	combout => \datos_lcd~8_combout\);

-- Location: LCCOMB_X1_Y2_N26
\datos_lcd~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_lcd~9_combout\ = (\datos_lcd~8_combout\ & \habilitador_lcd~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datos_lcd~8_combout\,
	datad => \habilitador_lcd~input_o\,
	combout => \datos_lcd~9_combout\);

-- Location: FF_X1_Y2_N17
\datos_lcd[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \datos_lcd~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos_lcd[4]~reg0_q\);

-- Location: FF_X1_Y2_N27
\datos_lcd[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_lcd~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos_lcd[5]~reg0_q\);

-- Location: LCCOMB_X1_Y2_N18
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\estado[0]~input_o\ & ((\estado[2]~input_o\ & ((!\estado[3]~input_o\))) # (!\estado[2]~input_o\ & (!\estado[1]~input_o\)))) # (!\estado[0]~input_o\ & (\estado[2]~input_o\ $ (((\estado[1]~input_o\) # (\estado[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado[2]~input_o\,
	datab => \estado[0]~input_o\,
	datac => \estado[1]~input_o\,
	datad => \estado[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X1_Y2_N20
\datos_lcd~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_lcd~10_combout\ = (\Mux0~0_combout\ & \habilitador_lcd~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~0_combout\,
	datad => \habilitador_lcd~input_o\,
	combout => \datos_lcd~10_combout\);

-- Location: FF_X1_Y2_N21
\datos_lcd[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_lcd~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos_lcd[6]~reg0_q\);

-- Location: IOIBUF_X5_Y0_N1
\tiempo_vehiculo[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_vehiculo(0),
	o => \tiempo_vehiculo[0]~input_o\);

-- Location: IOIBUF_X9_Y29_N29
\tiempo_vehiculo[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_vehiculo(1),
	o => \tiempo_vehiculo[1]~input_o\);

-- Location: IOIBUF_X11_Y29_N15
\tiempo_vehiculo[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_vehiculo(2),
	o => \tiempo_vehiculo[2]~input_o\);

-- Location: IOIBUF_X0_Y2_N1
\tiempo_vehiculo[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_vehiculo(3),
	o => \tiempo_vehiculo[3]~input_o\);

-- Location: IOIBUF_X19_Y0_N29
\tiempo_vehiculo[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_vehiculo(4),
	o => \tiempo_vehiculo[4]~input_o\);

-- Location: IOIBUF_X35_Y0_N29
\tiempo_vehiculo[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_vehiculo(5),
	o => \tiempo_vehiculo[5]~input_o\);

-- Location: IOIBUF_X30_Y29_N29
\tiempo_vehiculo[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_vehiculo(6),
	o => \tiempo_vehiculo[6]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\tiempo_vehiculo[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_vehiculo(7),
	o => \tiempo_vehiculo[7]~input_o\);

-- Location: IOIBUF_X1_Y29_N15
\tiempo_vehiculo[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_vehiculo(8),
	o => \tiempo_vehiculo[8]~input_o\);

-- Location: IOIBUF_X41_Y5_N8
\tiempo_vehiculo[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_vehiculo(9),
	o => \tiempo_vehiculo[9]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\tiempo_vehiculo[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_vehiculo(10),
	o => \tiempo_vehiculo[10]~input_o\);

-- Location: IOIBUF_X3_Y29_N22
\tiempo_vehiculo[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_vehiculo(11),
	o => \tiempo_vehiculo[11]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\tiempo_vehiculo[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_vehiculo(12),
	o => \tiempo_vehiculo[12]~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\tiempo_vehiculo[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_vehiculo(13),
	o => \tiempo_vehiculo[13]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\tiempo_vehiculo[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_vehiculo(14),
	o => \tiempo_vehiculo[14]~input_o\);

-- Location: IOIBUF_X32_Y0_N29
\tiempo_vehiculo[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_vehiculo(15),
	o => \tiempo_vehiculo[15]~input_o\);

-- Location: IOIBUF_X9_Y29_N22
\tarifa_peaje[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tarifa_peaje(0),
	o => \tarifa_peaje[0]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\tarifa_peaje[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tarifa_peaje(1),
	o => \tarifa_peaje[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\tarifa_peaje[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tarifa_peaje(2),
	o => \tarifa_peaje[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\tarifa_peaje[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tarifa_peaje(3),
	o => \tarifa_peaje[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\tarifa_peaje[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tarifa_peaje(4),
	o => \tarifa_peaje[4]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\tarifa_peaje[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tarifa_peaje(5),
	o => \tarifa_peaje[5]~input_o\);

-- Location: IOIBUF_X41_Y13_N22
\tarifa_peaje[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tarifa_peaje(6),
	o => \tarifa_peaje[6]~input_o\);

-- Location: IOIBUF_X41_Y26_N8
\tarifa_peaje[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tarifa_peaje(7),
	o => \tarifa_peaje[7]~input_o\);

ww_datos_lcd(0) <= \datos_lcd[0]~output_o\;

ww_datos_lcd(1) <= \datos_lcd[1]~output_o\;

ww_datos_lcd(2) <= \datos_lcd[2]~output_o\;

ww_datos_lcd(3) <= \datos_lcd[3]~output_o\;

ww_datos_lcd(4) <= \datos_lcd[4]~output_o\;

ww_datos_lcd(5) <= \datos_lcd[5]~output_o\;

ww_datos_lcd(6) <= \datos_lcd[6]~output_o\;

ww_datos_lcd(7) <= \datos_lcd[7]~output_o\;
END structure;


