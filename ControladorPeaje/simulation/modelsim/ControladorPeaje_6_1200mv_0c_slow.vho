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

-- DATE "04/29/2024 10:15:10"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ControladorPeaje IS
    PORT (
	reloj : IN std_logic;
	reiniciar : IN std_logic;
	sensorDelantero : IN std_logic;
	sensorTrasero : IN std_logic;
	entradaTag : IN std_logic_vector(4 DOWNTO 0);
	barreraEntrada : OUT std_logic;
	barreraSalida : OUT std_logic;
	senalAlarma : OUT std_logic;
	ledVerde : OUT std_logic;
	ledRojo : OUT std_logic;
	ledsCategoria : OUT std_logic_vector(2 DOWNTO 0);
	displaySieteSegmentos : OUT std_logic_vector(6 DOWNTO 0);
	semaforoRojo : OUT std_logic;
	semaforoVerde : OUT std_logic
	);
END ControladorPeaje;

-- Design Ports Information
-- sensorTrasero	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaTag[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaTag[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaTag[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaTag[3]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaTag[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barreraEntrada	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barreraSalida	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senalAlarma	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledVerde	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledRojo	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsCategoria[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsCategoria[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsCategoria[2]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displaySieteSegmentos[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displaySieteSegmentos[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displaySieteSegmentos[2]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displaySieteSegmentos[3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displaySieteSegmentos[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displaySieteSegmentos[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displaySieteSegmentos[6]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforoRojo	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforoVerde	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensorDelantero	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reiniciar	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ControladorPeaje IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reloj : std_logic;
SIGNAL ww_reiniciar : std_logic;
SIGNAL ww_sensorDelantero : std_logic;
SIGNAL ww_sensorTrasero : std_logic;
SIGNAL ww_entradaTag : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_barreraEntrada : std_logic;
SIGNAL ww_barreraSalida : std_logic;
SIGNAL ww_senalAlarma : std_logic;
SIGNAL ww_ledVerde : std_logic;
SIGNAL ww_ledRojo : std_logic;
SIGNAL ww_ledsCategoria : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_displaySieteSegmentos : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_semaforoRojo : std_logic;
SIGNAL ww_semaforoVerde : std_logic;
SIGNAL \sensorTrasero~input_o\ : std_logic;
SIGNAL \entradaTag[0]~input_o\ : std_logic;
SIGNAL \entradaTag[1]~input_o\ : std_logic;
SIGNAL \entradaTag[2]~input_o\ : std_logic;
SIGNAL \entradaTag[3]~input_o\ : std_logic;
SIGNAL \entradaTag[4]~input_o\ : std_logic;
SIGNAL \sensorDelantero~input_o\ : std_logic;
SIGNAL \reloj~input_o\ : std_logic;
SIGNAL \reiniciar~input_o\ : std_logic;
SIGNAL \barreraEntrada~output_o\ : std_logic;
SIGNAL \barreraSalida~output_o\ : std_logic;
SIGNAL \senalAlarma~output_o\ : std_logic;
SIGNAL \ledVerde~output_o\ : std_logic;
SIGNAL \ledRojo~output_o\ : std_logic;
SIGNAL \ledsCategoria[0]~output_o\ : std_logic;
SIGNAL \ledsCategoria[1]~output_o\ : std_logic;
SIGNAL \ledsCategoria[2]~output_o\ : std_logic;
SIGNAL \displaySieteSegmentos[0]~output_o\ : std_logic;
SIGNAL \displaySieteSegmentos[1]~output_o\ : std_logic;
SIGNAL \displaySieteSegmentos[2]~output_o\ : std_logic;
SIGNAL \displaySieteSegmentos[3]~output_o\ : std_logic;
SIGNAL \displaySieteSegmentos[4]~output_o\ : std_logic;
SIGNAL \displaySieteSegmentos[5]~output_o\ : std_logic;
SIGNAL \displaySieteSegmentos[6]~output_o\ : std_logic;
SIGNAL \semaforoRojo~output_o\ : std_logic;
SIGNAL \semaforoVerde~output_o\ : std_logic;

BEGIN

ww_reloj <= reloj;
ww_reiniciar <= reiniciar;
ww_sensorDelantero <= sensorDelantero;
ww_sensorTrasero <= sensorTrasero;
ww_entradaTag <= entradaTag;
barreraEntrada <= ww_barreraEntrada;
barreraSalida <= ww_barreraSalida;
senalAlarma <= ww_senalAlarma;
ledVerde <= ww_ledVerde;
ledRojo <= ww_ledRojo;
ledsCategoria <= ww_ledsCategoria;
displaySieteSegmentos <= ww_displaySieteSegmentos;
semaforoRojo <= ww_semaforoRojo;
semaforoVerde <= ww_semaforoVerde;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y6_N2
\barreraEntrada~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \barreraEntrada~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\barreraSalida~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \barreraSalida~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\senalAlarma~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \senalAlarma~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\ledVerde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledVerde~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\ledRojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledRojo~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\ledsCategoria[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledsCategoria[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\ledsCategoria[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledsCategoria[1]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\ledsCategoria[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledsCategoria[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\displaySieteSegmentos[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \displaySieteSegmentos[0]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\displaySieteSegmentos[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \displaySieteSegmentos[1]~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\displaySieteSegmentos[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \displaySieteSegmentos[2]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\displaySieteSegmentos[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \displaySieteSegmentos[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\displaySieteSegmentos[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \displaySieteSegmentos[4]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\displaySieteSegmentos[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \displaySieteSegmentos[5]~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\displaySieteSegmentos[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \displaySieteSegmentos[6]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\semaforoRojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \semaforoRojo~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\semaforoVerde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \semaforoVerde~output_o\);

-- Location: IOIBUF_X14_Y0_N8
\sensorTrasero~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensorTrasero,
	o => \sensorTrasero~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\entradaTag[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaTag(0),
	o => \entradaTag[0]~input_o\);

-- Location: IOIBUF_X41_Y18_N22
\entradaTag[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaTag(1),
	o => \entradaTag[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\entradaTag[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaTag(2),
	o => \entradaTag[2]~input_o\);

-- Location: IOIBUF_X41_Y10_N15
\entradaTag[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaTag(3),
	o => \entradaTag[3]~input_o\);

-- Location: IOIBUF_X7_Y29_N8
\entradaTag[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaTag(4),
	o => \entradaTag[4]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\sensorDelantero~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensorDelantero,
	o => \sensorDelantero~input_o\);

-- Location: IOIBUF_X41_Y3_N15
\reloj~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reloj,
	o => \reloj~input_o\);

-- Location: IOIBUF_X0_Y14_N1
\reiniciar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reiniciar,
	o => \reiniciar~input_o\);

ww_barreraEntrada <= \barreraEntrada~output_o\;

ww_barreraSalida <= \barreraSalida~output_o\;

ww_senalAlarma <= \senalAlarma~output_o\;

ww_ledVerde <= \ledVerde~output_o\;

ww_ledRojo <= \ledRojo~output_o\;

ww_ledsCategoria(0) <= \ledsCategoria[0]~output_o\;

ww_ledsCategoria(1) <= \ledsCategoria[1]~output_o\;

ww_ledsCategoria(2) <= \ledsCategoria[2]~output_o\;

ww_displaySieteSegmentos(0) <= \displaySieteSegmentos[0]~output_o\;

ww_displaySieteSegmentos(1) <= \displaySieteSegmentos[1]~output_o\;

ww_displaySieteSegmentos(2) <= \displaySieteSegmentos[2]~output_o\;

ww_displaySieteSegmentos(3) <= \displaySieteSegmentos[3]~output_o\;

ww_displaySieteSegmentos(4) <= \displaySieteSegmentos[4]~output_o\;

ww_displaySieteSegmentos(5) <= \displaySieteSegmentos[5]~output_o\;

ww_displaySieteSegmentos(6) <= \displaySieteSegmentos[6]~output_o\;

ww_semaforoRojo <= \semaforoRojo~output_o\;

ww_semaforoVerde <= \semaforoVerde~output_o\;
END structure;


