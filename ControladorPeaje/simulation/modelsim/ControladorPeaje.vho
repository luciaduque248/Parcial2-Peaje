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

-- DATE "04/29/2024 10:41:39"

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
-- barreraEntrada	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barreraSalida	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senalAlarma	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledVerde	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledRojo	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsCategoria[0]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsCategoria[1]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsCategoria[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displaySieteSegmentos[0]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displaySieteSegmentos[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displaySieteSegmentos[2]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displaySieteSegmentos[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displaySieteSegmentos[4]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displaySieteSegmentos[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displaySieteSegmentos[6]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforoRojo	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforoVerde	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reiniciar	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaTag[3]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaTag[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaTag[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaTag[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaTag[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensorTrasero	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensorDelantero	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proximoEstado.TagValida~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reiniciar~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \reloj~input_o\ : std_logic;
SIGNAL \reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \reiniciar~input_o\ : std_logic;
SIGNAL \reiniciar~inputclkctrl_outclk\ : std_logic;
SIGNAL \estadoActual.TagInvalida~q\ : std_logic;
SIGNAL \entradaTag[4]~input_o\ : std_logic;
SIGNAL \entradaTag[3]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \contadorIntentos[0]~3_combout\ : std_logic;
SIGNAL \entradaTag[2]~input_o\ : std_logic;
SIGNAL \entradaTag[0]~input_o\ : std_logic;
SIGNAL \entradaTag[1]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \sensorDelantero~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \estadoActual.Alarma~q\ : std_logic;
SIGNAL \sensorTrasero~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \estadoActual.VehiculoDentro~q\ : std_logic;
SIGNAL \proximoEstado.CerrandoBarreraEntrada~0_combout\ : std_logic;
SIGNAL \estadoActual.CerrandoBarreraEntrada~q\ : std_logic;
SIGNAL \estadoActual.AbriendoBarreraSalida~q\ : std_logic;
SIGNAL \estadoActual.CerrandoBarreraSalida~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \estadoActual.Inactivo~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \estadoActual.EsperandoVehiculo~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \estadoActual.LeyendoTag~q\ : std_logic;
SIGNAL \contadorIntentos[1]~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \proximoEstado.TagValida~4_combout\ : std_logic;
SIGNAL \estadoActual.TagValida~feeder_combout\ : std_logic;
SIGNAL \estadoActual.TagValida~q\ : std_logic;
SIGNAL \estadoActual.AbriendoBarreraEntrada~feeder_combout\ : std_logic;
SIGNAL \estadoActual.AbriendoBarreraEntrada~q\ : std_logic;
SIGNAL \ledRojo~0_combout\ : std_logic;
SIGNAL \proximoEstado.TagValida~4clkctrl_outclk\ : std_logic;
SIGNAL \ledsCategoria~0_combout\ : std_logic;
SIGNAL \ledsCategoria~1_combout\ : std_logic;
SIGNAL \ledsCategoria~2_combout\ : std_logic;
SIGNAL \semaforoVerde~0_combout\ : std_logic;
SIGNAL contadorIntentos : std_logic_vector(1 DOWNTO 0);
SIGNAL categoriaVehiculo : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reiniciar~inputclkctrl_outclk\ : std_logic;

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

\reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reloj~input_o\);

\proximoEstado.TagValida~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \proximoEstado.TagValida~4_combout\);

\reiniciar~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reiniciar~input_o\);
\ALT_INV_reiniciar~inputclkctrl_outclk\ <= NOT \reiniciar~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y9_N16
\barreraEntrada~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estadoActual.AbriendoBarreraEntrada~q\,
	devoe => ww_devoe,
	o => \barreraEntrada~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\barreraSalida~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estadoActual.AbriendoBarreraSalida~q\,
	devoe => ww_devoe,
	o => \barreraSalida~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\senalAlarma~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estadoActual.Alarma~q\,
	devoe => ww_devoe,
	o => \senalAlarma~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\ledVerde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estadoActual.TagValida~q\,
	devoe => ww_devoe,
	o => \ledVerde~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\ledRojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledRojo~0_combout\,
	devoe => ww_devoe,
	o => \ledRojo~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\ledsCategoria[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledsCategoria~0_combout\,
	devoe => ww_devoe,
	o => \ledsCategoria[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\ledsCategoria[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledsCategoria~1_combout\,
	devoe => ww_devoe,
	o => \ledsCategoria[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\ledsCategoria[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledsCategoria~2_combout\,
	devoe => ww_devoe,
	o => \ledsCategoria[2]~output_o\);

-- Location: IOOBUF_X41_Y7_N16
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

-- Location: IOOBUF_X14_Y0_N16
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

-- Location: IOOBUF_X39_Y29_N2
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

-- Location: IOOBUF_X3_Y29_N2
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

-- Location: IOOBUF_X41_Y23_N16
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

-- Location: IOOBUF_X14_Y29_N23
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

-- Location: IOOBUF_X28_Y0_N2
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

-- Location: IOOBUF_X0_Y10_N2
\semaforoRojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estadoActual.VehiculoDentro~q\,
	devoe => ww_devoe,
	o => \semaforoRojo~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\semaforoVerde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \semaforoVerde~0_combout\,
	devoe => ww_devoe,
	o => \semaforoVerde~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\reloj~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reloj,
	o => \reloj~input_o\);

-- Location: CLKCTRL_G4
\reloj~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reloj~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reloj~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y14_N8
\reiniciar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reiniciar,
	o => \reiniciar~input_o\);

-- Location: CLKCTRL_G2
\reiniciar~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reiniciar~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reiniciar~inputclkctrl_outclk\);

-- Location: FF_X1_Y13_N27
\estadoActual.TagInvalida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \contadorIntentos[1]~2_combout\,
	clrn => \ALT_INV_reiniciar~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoActual.TagInvalida~q\);

-- Location: IOIBUF_X0_Y13_N8
\entradaTag[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaTag(4),
	o => \entradaTag[4]~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\entradaTag[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaTag(3),
	o => \entradaTag[3]~input_o\);

-- Location: LCCOMB_X1_Y13_N8
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\entradaTag[4]~input_o\ & !\entradaTag[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entradaTag[4]~input_o\,
	datad => \entradaTag[3]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y13_N22
\contadorIntentos[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contadorIntentos[0]~3_combout\ = (\contadorIntentos[0]~3_combout\ & ((contadorIntentos(1)) # ((!\estadoActual.LeyendoTag~q\) # (!\Equal0~0_combout\)))) # (!\contadorIntentos[0]~3_combout\ & (((\Equal0~0_combout\ & \estadoActual.LeyendoTag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorIntentos(1),
	datab => \contadorIntentos[0]~3_combout\,
	datac => \Equal0~0_combout\,
	datad => \estadoActual.LeyendoTag~q\,
	combout => \contadorIntentos[0]~3_combout\);

-- Location: IOIBUF_X0_Y11_N1
\entradaTag[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaTag(2),
	o => \entradaTag[2]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\entradaTag[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaTag(0),
	o => \entradaTag[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\entradaTag[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaTag(1),
	o => \entradaTag[1]~input_o\);

-- Location: LCCOMB_X1_Y13_N4
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\entradaTag[0]~input_o\ & (!\entradaTag[1]~input_o\ & (!\entradaTag[4]~input_o\ & !\entradaTag[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaTag[0]~input_o\,
	datab => \entradaTag[1]~input_o\,
	datac => \entradaTag[4]~input_o\,
	datad => \entradaTag[3]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X0_Y12_N22
\sensorDelantero~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensorDelantero,
	o => \sensorDelantero~input_o\);

-- Location: LCCOMB_X1_Y13_N2
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (contadorIntentos(1) & (\contadorIntentos[0]~3_combout\ & ((\estadoActual.LeyendoTag~q\) # (\estadoActual.TagInvalida~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorIntentos(1),
	datab => \estadoActual.LeyendoTag~q\,
	datac => \estadoActual.TagInvalida~q\,
	datad => \contadorIntentos[0]~3_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X1_Y13_N3
\estadoActual.Alarma\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_reiniciar~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoActual.Alarma~q\);

-- Location: IOIBUF_X0_Y9_N8
\sensorTrasero~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensorTrasero,
	o => \sensorTrasero~input_o\);

-- Location: LCCOMB_X1_Y10_N20
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\estadoActual.AbriendoBarreraEntrada~q\) # ((!\sensorTrasero~input_o\ & \estadoActual.VehiculoDentro~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensorTrasero~input_o\,
	datac => \estadoActual.VehiculoDentro~q\,
	datad => \estadoActual.AbriendoBarreraEntrada~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X1_Y10_N21
\estadoActual.VehiculoDentro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_reiniciar~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoActual.VehiculoDentro~q\);

-- Location: LCCOMB_X1_Y10_N10
\proximoEstado.CerrandoBarreraEntrada~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \proximoEstado.CerrandoBarreraEntrada~0_combout\ = (\sensorTrasero~input_o\ & \estadoActual.VehiculoDentro~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sensorTrasero~input_o\,
	datad => \estadoActual.VehiculoDentro~q\,
	combout => \proximoEstado.CerrandoBarreraEntrada~0_combout\);

-- Location: FF_X1_Y10_N11
\estadoActual.CerrandoBarreraEntrada\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \proximoEstado.CerrandoBarreraEntrada~0_combout\,
	clrn => \ALT_INV_reiniciar~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoActual.CerrandoBarreraEntrada~q\);

-- Location: FF_X1_Y13_N15
\estadoActual.AbriendoBarreraSalida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \estadoActual.CerrandoBarreraEntrada~q\,
	clrn => \ALT_INV_reiniciar~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoActual.AbriendoBarreraSalida~q\);

-- Location: FF_X1_Y13_N19
\estadoActual.CerrandoBarreraSalida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \estadoActual.AbriendoBarreraSalida~q\,
	clrn => \ALT_INV_reiniciar~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoActual.CerrandoBarreraSalida~q\);

-- Location: LCCOMB_X1_Y13_N12
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\estadoActual.Alarma~q\ & (!\estadoActual.CerrandoBarreraSalida~q\ & ((\sensorDelantero~input_o\) # (\estadoActual.Inactivo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensorDelantero~input_o\,
	datab => \estadoActual.Alarma~q\,
	datac => \estadoActual.Inactivo~q\,
	datad => \estadoActual.CerrandoBarreraSalida~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X1_Y13_N13
\estadoActual.Inactivo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_reiniciar~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoActual.Inactivo~q\);

-- Location: LCCOMB_X1_Y13_N18
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\sensorDelantero~input_o\ & !\estadoActual.Inactivo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensorDelantero~input_o\,
	datad => \estadoActual.Inactivo~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X1_Y13_N28
\Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((!\entradaTag[2]~input_o\ & (\estadoActual.EsperandoVehiculo~q\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \entradaTag[2]~input_o\,
	datac => \estadoActual.EsperandoVehiculo~q\,
	datad => \Equal0~1_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X1_Y13_N29
\estadoActual.EsperandoVehiculo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \ALT_INV_reiniciar~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoActual.EsperandoVehiculo~q\);

-- Location: LCCOMB_X1_Y13_N24
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\estadoActual.EsperandoVehiculo~q\ & ((\entradaTag[2]~input_o\) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entradaTag[2]~input_o\,
	datac => \Equal0~1_combout\,
	datad => \estadoActual.EsperandoVehiculo~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X1_Y13_N10
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\estadoActual.TagInvalida~q\ & ((!\contadorIntentos[0]~3_combout\) # (!contadorIntentos(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorIntentos(1),
	datab => \estadoActual.TagInvalida~q\,
	datac => \contadorIntentos[0]~3_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X1_Y13_N11
\estadoActual.LeyendoTag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \Selector2~1_combout\,
	clrn => \ALT_INV_reiniciar~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoActual.LeyendoTag~q\);

-- Location: LCCOMB_X1_Y13_N20
\contadorIntentos[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contadorIntentos[1]~2_combout\ = (\estadoActual.LeyendoTag~q\ & (\Equal0~0_combout\ & ((!\contadorIntentos[0]~3_combout\) # (!contadorIntentos(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorIntentos(1),
	datab => \estadoActual.LeyendoTag~q\,
	datac => \Equal0~0_combout\,
	datad => \contadorIntentos[0]~3_combout\,
	combout => \contadorIntentos[1]~2_combout\);

-- Location: LCCOMB_X1_Y13_N16
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = contadorIntentos(1) $ (\contadorIntentos[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorIntentos(1),
	datac => \contadorIntentos[0]~3_combout\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X1_Y13_N30
\contadorIntentos[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- contadorIntentos(1) = (\contadorIntentos[1]~2_combout\ & ((\Add0~0_combout\))) # (!\contadorIntentos[1]~2_combout\ & (contadorIntentos(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorIntentos(1),
	datac => \contadorIntentos[1]~2_combout\,
	datad => \Add0~0_combout\,
	combout => contadorIntentos(1));

-- Location: LCCOMB_X1_Y13_N0
\proximoEstado.TagValida~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \proximoEstado.TagValida~4_combout\ = (\estadoActual.LeyendoTag~q\ & (!\Equal0~0_combout\ & ((!\contadorIntentos[0]~3_combout\) # (!contadorIntentos(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorIntentos(1),
	datab => \estadoActual.LeyendoTag~q\,
	datac => \Equal0~0_combout\,
	datad => \contadorIntentos[0]~3_combout\,
	combout => \proximoEstado.TagValida~4_combout\);

-- Location: LCCOMB_X1_Y13_N6
\estadoActual.TagValida~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estadoActual.TagValida~feeder_combout\ = \proximoEstado.TagValida~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proximoEstado.TagValida~4_combout\,
	combout => \estadoActual.TagValida~feeder_combout\);

-- Location: FF_X1_Y13_N7
\estadoActual.TagValida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \estadoActual.TagValida~feeder_combout\,
	clrn => \ALT_INV_reiniciar~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoActual.TagValida~q\);

-- Location: LCCOMB_X1_Y10_N16
\estadoActual.AbriendoBarreraEntrada~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estadoActual.AbriendoBarreraEntrada~feeder_combout\ = \estadoActual.TagValida~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estadoActual.TagValida~q\,
	combout => \estadoActual.AbriendoBarreraEntrada~feeder_combout\);

-- Location: FF_X1_Y10_N17
\estadoActual.AbriendoBarreraEntrada\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \estadoActual.AbriendoBarreraEntrada~feeder_combout\,
	clrn => \ALT_INV_reiniciar~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoActual.AbriendoBarreraEntrada~q\);

-- Location: LCCOMB_X1_Y13_N26
\ledRojo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ledRojo~0_combout\ = (\estadoActual.Alarma~q\) # (\estadoActual.TagInvalida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoActual.Alarma~q\,
	datac => \estadoActual.TagInvalida~q\,
	combout => \ledRojo~0_combout\);

-- Location: CLKCTRL_G3
\proximoEstado.TagValida~4clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \proximoEstado.TagValida~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \proximoEstado.TagValida~4clkctrl_outclk\);

-- Location: LCCOMB_X1_Y10_N24
\categoriaVehiculo[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- categoriaVehiculo(0) = (GLOBAL(\proximoEstado.TagValida~4clkctrl_outclk\) & (\entradaTag[0]~input_o\)) # (!GLOBAL(\proximoEstado.TagValida~4clkctrl_outclk\) & ((categoriaVehiculo(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entradaTag[0]~input_o\,
	datac => \proximoEstado.TagValida~4clkctrl_outclk\,
	datad => categoriaVehiculo(0),
	combout => categoriaVehiculo(0));

-- Location: LCCOMB_X1_Y10_N14
\ledsCategoria~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ledsCategoria~0_combout\ = (categoriaVehiculo(0) & \estadoActual.TagValida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => categoriaVehiculo(0),
	datad => \estadoActual.TagValida~q\,
	combout => \ledsCategoria~0_combout\);

-- Location: LCCOMB_X1_Y10_N22
\categoriaVehiculo[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- categoriaVehiculo(1) = (GLOBAL(\proximoEstado.TagValida~4clkctrl_outclk\) & (\entradaTag[1]~input_o\)) # (!GLOBAL(\proximoEstado.TagValida~4clkctrl_outclk\) & ((categoriaVehiculo(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaTag[1]~input_o\,
	datac => categoriaVehiculo(1),
	datad => \proximoEstado.TagValida~4clkctrl_outclk\,
	combout => categoriaVehiculo(1));

-- Location: LCCOMB_X1_Y10_N28
\ledsCategoria~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ledsCategoria~1_combout\ = (categoriaVehiculo(1) & \estadoActual.TagValida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => categoriaVehiculo(1),
	datad => \estadoActual.TagValida~q\,
	combout => \ledsCategoria~1_combout\);

-- Location: LCCOMB_X1_Y10_N12
\categoriaVehiculo[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- categoriaVehiculo(2) = (GLOBAL(\proximoEstado.TagValida~4clkctrl_outclk\) & (\entradaTag[2]~input_o\)) # (!GLOBAL(\proximoEstado.TagValida~4clkctrl_outclk\) & ((categoriaVehiculo(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaTag[2]~input_o\,
	datac => \proximoEstado.TagValida~4clkctrl_outclk\,
	datad => categoriaVehiculo(2),
	combout => categoriaVehiculo(2));

-- Location: LCCOMB_X1_Y10_N18
\ledsCategoria~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ledsCategoria~2_combout\ = (categoriaVehiculo(2) & \estadoActual.TagValida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => categoriaVehiculo(2),
	datad => \estadoActual.TagValida~q\,
	combout => \ledsCategoria~2_combout\);

-- Location: LCCOMB_X1_Y13_N14
\semaforoVerde~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \semaforoVerde~0_combout\ = (\estadoActual.AbriendoBarreraSalida~q\) # (\estadoActual.EsperandoVehiculo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoActual.AbriendoBarreraSalida~q\,
	datad => \estadoActual.EsperandoVehiculo~q\,
	combout => \semaforoVerde~0_combout\);

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


