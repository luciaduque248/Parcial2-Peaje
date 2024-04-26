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

-- DATE "04/26/2024 15:37:20"

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

ENTITY 	LIB_LCD_INTESC_REVC IS
    PORT (
	CLK : IN std_logic;
	RS : BUFFER std_logic;
	RW : BUFFER std_logic;
	ENA : BUFFER std_logic;
	CORD : IN std_logic;
	CORI : IN std_logic;
	DATA_LCD : BUFFER std_logic_vector(7 DOWNTO 0);
	BLCD : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END LIB_LCD_INTESC_REVC;

-- Design Ports Information
-- RS	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RW	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENA	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_LCD[0]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_LCD[1]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_LCD[2]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_LCD[3]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_LCD[4]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_LCD[5]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_LCD[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_LCD[7]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLCD[0]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLCD[1]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLCD[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLCD[3]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLCD[4]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLCD[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLCD[6]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLCD[7]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CORD	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CORI	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LIB_LCD_INTESC_REVC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RS : std_logic;
SIGNAL ww_RW : std_logic;
SIGNAL ww_ENA : std_logic;
SIGNAL ww_CORD : std_logic;
SIGNAL ww_CORI : std_logic;
SIGNAL ww_DATA_LCD : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_BLCD : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|DATA_A[6]~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RS~output_o\ : std_logic;
SIGNAL \RW~output_o\ : std_logic;
SIGNAL \ENA~output_o\ : std_logic;
SIGNAL \DATA_LCD[0]~output_o\ : std_logic;
SIGNAL \DATA_LCD[1]~output_o\ : std_logic;
SIGNAL \DATA_LCD[2]~output_o\ : std_logic;
SIGNAL \DATA_LCD[3]~output_o\ : std_logic;
SIGNAL \DATA_LCD[4]~output_o\ : std_logic;
SIGNAL \DATA_LCD[5]~output_o\ : std_logic;
SIGNAL \DATA_LCD[6]~output_o\ : std_logic;
SIGNAL \DATA_LCD[7]~output_o\ : std_logic;
SIGNAL \BLCD[0]~output_o\ : std_logic;
SIGNAL \BLCD[1]~output_o\ : std_logic;
SIGNAL \BLCD[2]~output_o\ : std_logic;
SIGNAL \BLCD[3]~output_o\ : std_logic;
SIGNAL \BLCD[4]~output_o\ : std_logic;
SIGNAL \BLCD[5]~output_o\ : std_logic;
SIGNAL \BLCD[6]~output_o\ : std_logic;
SIGNAL \BLCD[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|INC_DIR_S[0]~6_combout\ : std_logic;
SIGNAL \U1|DIR_BI[0]~feeder_combout\ : std_logic;
SIGNAL \U1|INC_DIR_S[1]~9\ : std_logic;
SIGNAL \U1|INC_DIR_S[2]~10_combout\ : std_logic;
SIGNAL \U1|DIR_BI[2]~feeder_combout\ : std_logic;
SIGNAL \U1|INC_DIR_S[4]~15\ : std_logic;
SIGNAL \U1|INC_DIR_S[5]~17_combout\ : std_logic;
SIGNAL \U1|DIR_BI[5]~feeder_combout\ : std_logic;
SIGNAL \U1|process_0~28_combout\ : std_logic;
SIGNAL \U1|process_0~39_combout\ : std_logic;
SIGNAL \U1|Selector34~0_combout\ : std_logic;
SIGNAL \U1|Add7~34\ : std_logic;
SIGNAL \U1|Add7~35_combout\ : std_logic;
SIGNAL \U1|Add7~107_combout\ : std_logic;
SIGNAL \CORD~input_o\ : std_logic;
SIGNAL \U1|Equal26~11_combout\ : std_logic;
SIGNAL \U1|Selector22~2_combout\ : std_logic;
SIGNAL \U1|Selector22~3_combout\ : std_logic;
SIGNAL \U1|Selector22~4_combout\ : std_logic;
SIGNAL \U1|ESTADO.CORRIMIENTO_DERECHA~q\ : std_logic;
SIGNAL \U1|WideOr39~0_combout\ : std_logic;
SIGNAL \U1|Add7~36\ : std_logic;
SIGNAL \U1|Add7~37_combout\ : std_logic;
SIGNAL \U1|Add7~106_combout\ : std_logic;
SIGNAL \U1|Add7~38\ : std_logic;
SIGNAL \U1|Add7~39_combout\ : std_logic;
SIGNAL \U1|Add7~41_combout\ : std_logic;
SIGNAL \U1|Add7~40\ : std_logic;
SIGNAL \U1|Add7~42_combout\ : std_logic;
SIGNAL \U1|Add7~44_combout\ : std_logic;
SIGNAL \U1|Add7~43\ : std_logic;
SIGNAL \U1|Add7~45_combout\ : std_logic;
SIGNAL \U1|Add7~47_combout\ : std_logic;
SIGNAL \U1|Add7~46\ : std_logic;
SIGNAL \U1|Add7~48_combout\ : std_logic;
SIGNAL \U1|Add7~105_combout\ : std_logic;
SIGNAL \U1|Add7~49\ : std_logic;
SIGNAL \U1|Add7~50_combout\ : std_logic;
SIGNAL \U1|Add7~104_combout\ : std_logic;
SIGNAL \U1|Add7~51\ : std_logic;
SIGNAL \U1|Add7~52_combout\ : std_logic;
SIGNAL \U1|Add7~103_combout\ : std_logic;
SIGNAL \U1|Add7~53\ : std_logic;
SIGNAL \U1|Add7~54_combout\ : std_logic;
SIGNAL \U1|Add7~102_combout\ : std_logic;
SIGNAL \U1|Add7~55\ : std_logic;
SIGNAL \U1|Add7~56_combout\ : std_logic;
SIGNAL \U1|Add7~58_combout\ : std_logic;
SIGNAL \U1|Add7~57\ : std_logic;
SIGNAL \U1|Add7~59_combout\ : std_logic;
SIGNAL \U1|Add7~61_combout\ : std_logic;
SIGNAL \U1|Add7~60\ : std_logic;
SIGNAL \U1|Add7~62_combout\ : std_logic;
SIGNAL \U1|Add7~64_combout\ : std_logic;
SIGNAL \U1|Add7~63\ : std_logic;
SIGNAL \U1|Add7~65_combout\ : std_logic;
SIGNAL \U1|Add7~101_combout\ : std_logic;
SIGNAL \U1|Add7~66\ : std_logic;
SIGNAL \U1|Add7~67_combout\ : std_logic;
SIGNAL \U1|Add7~100_combout\ : std_logic;
SIGNAL \U1|Add7~68\ : std_logic;
SIGNAL \U1|Add7~69_combout\ : std_logic;
SIGNAL \U1|Add7~71_combout\ : std_logic;
SIGNAL \U1|Add7~70\ : std_logic;
SIGNAL \U1|Add7~72_combout\ : std_logic;
SIGNAL \U1|Add7~119_combout\ : std_logic;
SIGNAL \U1|Add7~73\ : std_logic;
SIGNAL \U1|Add7~74_combout\ : std_logic;
SIGNAL \U1|Add7~118_combout\ : std_logic;
SIGNAL \U1|Add7~75\ : std_logic;
SIGNAL \U1|Add7~76_combout\ : std_logic;
SIGNAL \U1|Add7~108_combout\ : std_logic;
SIGNAL \U1|Add7~77\ : std_logic;
SIGNAL \U1|Add7~79\ : std_logic;
SIGNAL \U1|Add7~80_combout\ : std_logic;
SIGNAL \U1|Add7~110_combout\ : std_logic;
SIGNAL \U1|Add7~81\ : std_logic;
SIGNAL \U1|Add7~82_combout\ : std_logic;
SIGNAL \U1|Add7~117_combout\ : std_logic;
SIGNAL \U1|Add7~83\ : std_logic;
SIGNAL \U1|Add7~84_combout\ : std_logic;
SIGNAL \U1|Add7~116_combout\ : std_logic;
SIGNAL \U1|Equal26~7_combout\ : std_logic;
SIGNAL \U1|Equal26~9_combout\ : std_logic;
SIGNAL \U1|Equal26~8_combout\ : std_logic;
SIGNAL \U1|Add7~85\ : std_logic;
SIGNAL \U1|Add7~86_combout\ : std_logic;
SIGNAL \U1|Add7~115_combout\ : std_logic;
SIGNAL \U1|Add7~87\ : std_logic;
SIGNAL \U1|Add7~88_combout\ : std_logic;
SIGNAL \U1|Add7~114_combout\ : std_logic;
SIGNAL \U1|Add7~89\ : std_logic;
SIGNAL \U1|Add7~90_combout\ : std_logic;
SIGNAL \U1|Add7~113_combout\ : std_logic;
SIGNAL \U1|Add7~91\ : std_logic;
SIGNAL \U1|Add7~92_combout\ : std_logic;
SIGNAL \U1|Add7~112_combout\ : std_logic;
SIGNAL \U1|Equal26~6_combout\ : std_logic;
SIGNAL \U1|Equal26~10_combout\ : std_logic;
SIGNAL \U1|Add7~78_combout\ : std_logic;
SIGNAL \U1|Add7~109_combout\ : std_logic;
SIGNAL \U1|DELAY_COR2[31]~feeder_combout\ : std_logic;
SIGNAL \U1|Add7~93\ : std_logic;
SIGNAL \U1|Add7~94_combout\ : std_logic;
SIGNAL \U1|Add7~111_combout\ : std_logic;
SIGNAL \U1|Equal26~3_combout\ : std_logic;
SIGNAL \U1|Equal26~2_combout\ : std_logic;
SIGNAL \U1|Add7~24_combout\ : std_logic;
SIGNAL \U1|Add7~26_combout\ : std_logic;
SIGNAL \U1|Equal26~0_combout\ : std_logic;
SIGNAL \U1|Equal26~1_combout\ : std_logic;
SIGNAL \U1|Equal26~4_combout\ : std_logic;
SIGNAL \U1|Add7~25\ : std_logic;
SIGNAL \U1|Add7~27_combout\ : std_logic;
SIGNAL \U1|Add7~97_combout\ : std_logic;
SIGNAL \U1|Add7~28\ : std_logic;
SIGNAL \U1|Add7~29_combout\ : std_logic;
SIGNAL \U1|Add7~98_combout\ : std_logic;
SIGNAL \U1|Add7~30\ : std_logic;
SIGNAL \U1|Add7~31_combout\ : std_logic;
SIGNAL \U1|Add7~99_combout\ : std_logic;
SIGNAL \U1|Add7~32\ : std_logic;
SIGNAL \U1|Add7~33_combout\ : std_logic;
SIGNAL \U1|Add7~96_combout\ : std_logic;
SIGNAL \U1|Equal26~5_combout\ : std_logic;
SIGNAL \U1|Selector23~0_combout\ : std_logic;
SIGNAL \CORI~input_o\ : std_logic;
SIGNAL \U1|Selector23~1_combout\ : std_logic;
SIGNAL \U1|Selector23~2_combout\ : std_logic;
SIGNAL \U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\ : std_logic;
SIGNAL \U1|Selector25~0_combout\ : std_logic;
SIGNAL \U1|Selector25~1_combout\ : std_logic;
SIGNAL \U1|ESTADO.ENA_I~q\ : std_logic;
SIGNAL \U1|Selector24~0_combout\ : std_logic;
SIGNAL \U1|Selector24~1_combout\ : std_logic;
SIGNAL \U1|ESTADO.ENA_D~q\ : std_logic;
SIGNAL \U1|Selector8~0_combout\ : std_logic;
SIGNAL \U1|Selector8~1_combout\ : std_logic;
SIGNAL \U1|ESTADO.CHECAR~q\ : std_logic;
SIGNAL \U1|Selector9~0_combout\ : std_logic;
SIGNAL \U1|Selector15~0_combout\ : std_logic;
SIGNAL \U1|Selector15~1_combout\ : std_logic;
SIGNAL \U1|ESTADO.ESCRIBIR_LCD~q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \U1|Equal18~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \U1|Equal18~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \U1|Selector37~2_combout\ : std_logic;
SIGNAL \U1|Selector37~3_combout\ : std_logic;
SIGNAL \U1|ESTADO.LIMPIAR_PANTALLA~q\ : std_logic;
SIGNAL \U1|process_0~15_combout\ : std_logic;
SIGNAL \U1|process_0~38_combout\ : std_logic;
SIGNAL \U1|Selector9~1_combout\ : std_logic;
SIGNAL \U1|Selector9~2_combout\ : std_logic;
SIGNAL \U1|ESTADO.INI_LCD~q\ : std_logic;
SIGNAL \U1|Selector13~0_combout\ : std_logic;
SIGNAL \U1|ESTADO.CLEAR_DISPLAY~q\ : std_logic;
SIGNAL \U1|Selector11~0_combout\ : std_logic;
SIGNAL \U1|ESTADO.CURSOR_HOME~q\ : std_logic;
SIGNAL \U1|Selector10~0_combout\ : std_logic;
SIGNAL \U1|ESTADO.CURSOR_LCD~q\ : std_logic;
SIGNAL \U1|Selector31~0_combout\ : std_logic;
SIGNAL \U1|ESTADO.CREAR_CHAR5~q\ : std_logic;
SIGNAL \U1|Selector32~0_combout\ : std_logic;
SIGNAL \U1|ESTADO.CREAR_CHAR6~q\ : std_logic;
SIGNAL \U1|Selector33~0_combout\ : std_logic;
SIGNAL \U1|ESTADO.CREAR_CHAR7~q\ : std_logic;
SIGNAL \U1|Selector34~1_combout\ : std_logic;
SIGNAL \U1|ESTADO.CREAR_CHAR8~q\ : std_logic;
SIGNAL \U1|Selector12~0_combout\ : std_logic;
SIGNAL \U1|ESTADO.CURSOR_HOME2~q\ : std_logic;
SIGNAL \U1|Selector39~0_combout\ : std_logic;
SIGNAL \U1|Selector39~1_combout\ : std_logic;
SIGNAL \U1|ESTADO.NADA~q\ : std_logic;
SIGNAL \U1|WideOr38~1_combout\ : std_logic;
SIGNAL \U1|Selector19~0_combout\ : std_logic;
SIGNAL \U1|Selector19~1_combout\ : std_logic;
SIGNAL \U1|ESTADO.CHAR_ASCII~q\ : std_logic;
SIGNAL \U1|WideOr38~2_combout\ : std_logic;
SIGNAL \U1|WideOr38~3_combout\ : std_logic;
SIGNAL \U1|INC_DIR_S[8]~16_combout\ : std_logic;
SIGNAL \U1|INC_DIR_S[2]~11\ : std_logic;
SIGNAL \U1|INC_DIR_S[3]~12_combout\ : std_logic;
SIGNAL \U1|DIR_BI[3]~feeder_combout\ : std_logic;
SIGNAL \U1|INC_DIR_S[3]~13\ : std_logic;
SIGNAL \U1|INC_DIR_S[4]~14_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \U1|ESTADO~68_combout\ : std_logic;
SIGNAL \U1|ESTADO~69_combout\ : std_logic;
SIGNAL \U1|Selector37~0_combout\ : std_logic;
SIGNAL \U1|Selector37~1_combout\ : std_logic;
SIGNAL \U1|Selector21~0_combout\ : std_logic;
SIGNAL \U1|ESTADO.BUCLE_FIN~q\ : std_logic;
SIGNAL \U1|Selector20~0_combout\ : std_logic;
SIGNAL \U1|ESTADO.BUCLE_INI~q\ : std_logic;
SIGNAL \U1|INC_DIR_S[0]~7\ : std_logic;
SIGNAL \U1|INC_DIR_S[1]~8_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \U1|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|LessThan5~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \U1|process_0~33_combout\ : std_logic;
SIGNAL \U1|Selector22~0_combout\ : std_logic;
SIGNAL \U1|Selector22~1_combout\ : std_logic;
SIGNAL \U1|Selector40~0_combout\ : std_logic;
SIGNAL \U1|Selector40~1_combout\ : std_logic;
SIGNAL \U1|ESTADO.FIN~q\ : std_logic;
SIGNAL \U1|WideOr36~0_combout\ : std_logic;
SIGNAL \U1|Add0~1\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U1|Add0~3\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \U1|Add0~5\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \U1|Add0~7\ : std_logic;
SIGNAL \U1|Add0~8_combout\ : std_logic;
SIGNAL \U1|Selector53~0_combout\ : std_logic;
SIGNAL \U1|Add0~9\ : std_logic;
SIGNAL \U1|Add0~10_combout\ : std_logic;
SIGNAL \U1|Add0~11\ : std_logic;
SIGNAL \U1|Add0~12_combout\ : std_logic;
SIGNAL \U1|Selector51~0_combout\ : std_logic;
SIGNAL \U1|Add0~13\ : std_logic;
SIGNAL \U1|Add0~14_combout\ : std_logic;
SIGNAL \U1|Add0~15\ : std_logic;
SIGNAL \U1|Add0~16_combout\ : std_logic;
SIGNAL \U1|Selector49~0_combout\ : std_logic;
SIGNAL \U1|Add0~17\ : std_logic;
SIGNAL \U1|Add0~18_combout\ : std_logic;
SIGNAL \U1|Selector48~0_combout\ : std_logic;
SIGNAL \U1|Add0~19\ : std_logic;
SIGNAL \U1|Add0~20_combout\ : std_logic;
SIGNAL \U1|Add0~21\ : std_logic;
SIGNAL \U1|Add0~22_combout\ : std_logic;
SIGNAL \U1|Add0~23\ : std_logic;
SIGNAL \U1|Add0~24_combout\ : std_logic;
SIGNAL \U1|Add0~25\ : std_logic;
SIGNAL \U1|Add0~26_combout\ : std_logic;
SIGNAL \U1|Add0~27\ : std_logic;
SIGNAL \U1|Add0~28_combout\ : std_logic;
SIGNAL \U1|Selector43~0_combout\ : std_logic;
SIGNAL \U1|Equal21~1_combout\ : std_logic;
SIGNAL \U1|Add0~29\ : std_logic;
SIGNAL \U1|Add0~30_combout\ : std_logic;
SIGNAL \U1|Selector42~0_combout\ : std_logic;
SIGNAL \U1|Equal21~2_combout\ : std_logic;
SIGNAL \U1|Equal21~0_combout\ : std_logic;
SIGNAL \U1|Equal21~3_combout\ : std_logic;
SIGNAL \U1|Equal21~4_combout\ : std_logic;
SIGNAL \U1|Selector26~0_combout\ : std_logic;
SIGNAL \U1|ESTADO.POS_RAM~q\ : std_logic;
SIGNAL \U1|Selector27~0_combout\ : std_logic;
SIGNAL \U1|ESTADO.CREAR_CHAR1~q\ : std_logic;
SIGNAL \U1|Selector28~0_combout\ : std_logic;
SIGNAL \U1|ESTADO.CREAR_CHAR2~q\ : std_logic;
SIGNAL \U1|Selector29~0_combout\ : std_logic;
SIGNAL \U1|ESTADO.CREAR_CHAR3~q\ : std_logic;
SIGNAL \U1|Selector30~0_combout\ : std_logic;
SIGNAL \U1|ESTADO.CREAR_CHAR4~q\ : std_logic;
SIGNAL \U1|Selector41~2_combout\ : std_logic;
SIGNAL \U1|Selector41~1_combout\ : std_logic;
SIGNAL \U1|Selector41~0_combout\ : std_logic;
SIGNAL \U1|Selector41~3_combout\ : std_logic;
SIGNAL \U1|Selector41~4_combout\ : std_logic;
SIGNAL \U1|RS~q\ : std_logic;
SIGNAL \U1|WideOr37~combout\ : std_logic;
SIGNAL \U1|ENA~3_combout\ : std_logic;
SIGNAL \U1|ENA~4_combout\ : std_logic;
SIGNAL \U1|ENA~5_combout\ : std_logic;
SIGNAL \U1|ENA~6_combout\ : std_logic;
SIGNAL \U1|ENA~1_combout\ : std_logic;
SIGNAL \U1|ENA~0_combout\ : std_logic;
SIGNAL \U1|ENA~2_combout\ : std_logic;
SIGNAL \U1|ENA~7_combout\ : std_logic;
SIGNAL \U1|ENA~8_combout\ : std_logic;
SIGNAL \U1|ENA~q\ : std_logic;
SIGNAL \U1|DATA[2]~21_combout\ : std_logic;
SIGNAL \U1|DATA_A[6]~3_combout\ : std_logic;
SIGNAL \U1|DATA_A[6]~3clkctrl_outclk\ : std_logic;
SIGNAL \U1|DATA[1]~10_combout\ : std_logic;
SIGNAL \U1|process_0~3_combout\ : std_logic;
SIGNAL \U1|process_0~36_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \U1|process_0~34_combout\ : std_logic;
SIGNAL \U1|process_0~35_combout\ : std_logic;
SIGNAL \U1|Add4~0_combout\ : std_logic;
SIGNAL \U1|VEC_CHAR~7_combout\ : std_logic;
SIGNAL \U1|VEC_ASCII[0]~feeder_combout\ : std_logic;
SIGNAL \U1|DATA_A[5]~0_combout\ : std_logic;
SIGNAL \U1|DATA_A[0]~1_combout\ : std_logic;
SIGNAL \U1|DATA_A[0]~2_combout\ : std_logic;
SIGNAL \U1|DATA~9_combout\ : std_logic;
SIGNAL \U1|DATA~40_combout\ : std_logic;
SIGNAL \U1|DATA[0]~11_combout\ : std_logic;
SIGNAL \U1|process_0~37_combout\ : std_logic;
SIGNAL \U1|Equal27~0_combout\ : std_logic;
SIGNAL \U1|DATA[0]~8_combout\ : std_logic;
SIGNAL \U1|DATA[0]~41_combout\ : std_logic;
SIGNAL \U1|DATA[1]~13_combout\ : std_logic;
SIGNAL \U1|DATA[1]~12_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \U1|Add3~0_combout\ : std_logic;
SIGNAL \U1|Add4~1\ : std_logic;
SIGNAL \U1|Add4~2_combout\ : std_logic;
SIGNAL \U1|VEC_CHAR[1]~0_combout\ : std_logic;
SIGNAL \U1|DATA~15_combout\ : std_logic;
SIGNAL \U1|DATA_A[1]~4_combout\ : std_logic;
SIGNAL \U1|DATA_A[1]~5_combout\ : std_logic;
SIGNAL \U1|DATA~14_combout\ : std_logic;
SIGNAL \U1|DATA~42_combout\ : std_logic;
SIGNAL \U1|DATA[1]~16_combout\ : std_logic;
SIGNAL \U1|DATA[2]~18_combout\ : std_logic;
SIGNAL \U1|WideOr38~0_combout\ : std_logic;
SIGNAL \U1|DATA[5]~25_combout\ : std_logic;
SIGNAL \U1|DATA[2]~22_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \U1|Add4~3\ : std_logic;
SIGNAL \U1|Add4~4_combout\ : std_logic;
SIGNAL \U1|Add3~1\ : std_logic;
SIGNAL \U1|Add3~2_combout\ : std_logic;
SIGNAL \U1|VEC_CHAR[2]~1_combout\ : std_logic;
SIGNAL \U1|DATA_A[2]~6_combout\ : std_logic;
SIGNAL \U1|DATA_A[2]~7_combout\ : std_logic;
SIGNAL \U1|DATA[2]~17_combout\ : std_logic;
SIGNAL \U1|DATA[2]~19_combout\ : std_logic;
SIGNAL \U1|DATA[2]~20_combout\ : std_logic;
SIGNAL \U1|DATA[2]~23_combout\ : std_logic;
SIGNAL \U1|DATA_A[3]~8_combout\ : std_logic;
SIGNAL \U1|DATA_A[3]~9_combout\ : std_logic;
SIGNAL \U1|VEC_ASCII[3]~feeder_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \U1|Add4~5\ : std_logic;
SIGNAL \U1|Add4~6_combout\ : std_logic;
SIGNAL \U1|Add3~3\ : std_logic;
SIGNAL \U1|Add3~4_combout\ : std_logic;
SIGNAL \U1|VEC_CHAR[3]~2_combout\ : std_logic;
SIGNAL \Mux5~1_wirecell_combout\ : std_logic;
SIGNAL \U1|DATA[3]~24_combout\ : std_logic;
SIGNAL \U1|DATA_A[3]~10_combout\ : std_logic;
SIGNAL \U1|DATA_A[3]~11_combout\ : std_logic;
SIGNAL \U1|DATA[4]~26_combout\ : std_logic;
SIGNAL \U1|DATA[3]~27_combout\ : std_logic;
SIGNAL \U1|DATA[3]~43_combout\ : std_logic;
SIGNAL \U1|Add3~5\ : std_logic;
SIGNAL \U1|Add3~6_combout\ : std_logic;
SIGNAL \U1|Add4~7\ : std_logic;
SIGNAL \U1|Add4~8_combout\ : std_logic;
SIGNAL \U1|VEC_CHAR[4]~3_combout\ : std_logic;
SIGNAL \U1|Add2~4_combout\ : std_logic;
SIGNAL \U1|DATA[4]~28_combout\ : std_logic;
SIGNAL \U1|DATA_A[4]~12_combout\ : std_logic;
SIGNAL \U1|DATA[4]~29_combout\ : std_logic;
SIGNAL \U1|DATA[4]~30_combout\ : std_logic;
SIGNAL \U1|DATA[5]~31_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \U1|Add3~7\ : std_logic;
SIGNAL \U1|Add3~8_combout\ : std_logic;
SIGNAL \U1|Add4~9\ : std_logic;
SIGNAL \U1|Add4~10_combout\ : std_logic;
SIGNAL \U1|VEC_CHAR[5]~4_combout\ : std_logic;
SIGNAL \U1|Add2~5_combout\ : std_logic;
SIGNAL \U1|VEC_ASCII[5]~feeder_combout\ : std_logic;
SIGNAL \U1|DATA_A[5]~13_combout\ : std_logic;
SIGNAL \U1|DATA_A[5]~14_combout\ : std_logic;
SIGNAL \U1|DATA[5]~32_combout\ : std_logic;
SIGNAL \U1|DATA[5]~33_combout\ : std_logic;
SIGNAL \U1|DATA[5]~34_combout\ : std_logic;
SIGNAL \U1|DATA[6]~35_combout\ : std_logic;
SIGNAL \U1|DATA_A[6]~15_combout\ : std_logic;
SIGNAL \U1|Add3~9\ : std_logic;
SIGNAL \U1|Add3~10_combout\ : std_logic;
SIGNAL \U1|Add4~11\ : std_logic;
SIGNAL \U1|Add4~12_combout\ : std_logic;
SIGNAL \U1|VEC_CHAR[6]~5_combout\ : std_logic;
SIGNAL \U1|Add2~6_combout\ : std_logic;
SIGNAL \U1|Add2~7_combout\ : std_logic;
SIGNAL \U1|DATA_A[6]~16_combout\ : std_logic;
SIGNAL \U1|DATA_A[6]~17_combout\ : std_logic;
SIGNAL \U1|DATA[6]~36_combout\ : std_logic;
SIGNAL \U1|DATA[6]~37_combout\ : std_logic;
SIGNAL \U1|Add4~13\ : std_logic;
SIGNAL \U1|Add4~14_combout\ : std_logic;
SIGNAL \U1|Add3~11\ : std_logic;
SIGNAL \U1|Add3~12_combout\ : std_logic;
SIGNAL \U1|VEC_CHAR[7]~6_combout\ : std_logic;
SIGNAL \U1|Add2~8_combout\ : std_logic;
SIGNAL \U1|DATA[7]~38_combout\ : std_logic;
SIGNAL \U1|DATA_A[6]~18_combout\ : std_logic;
SIGNAL \U1|DATA_A[7]~19_combout\ : std_logic;
SIGNAL \U1|DATA[7]~39_combout\ : std_logic;
SIGNAL \U1|Selector7~2_combout\ : std_logic;
SIGNAL \U1|Selector7~0_combout\ : std_logic;
SIGNAL \U1|WideOr2~0_combout\ : std_logic;
SIGNAL \U1|Selector7~1_combout\ : std_logic;
SIGNAL \U1|Selector7~3_combout\ : std_logic;
SIGNAL \U1|Selector6~0_combout\ : std_logic;
SIGNAL \U1|Selector6~1_combout\ : std_logic;
SIGNAL \U1|Selector6~2_combout\ : std_logic;
SIGNAL \U1|Selector5~1_combout\ : std_logic;
SIGNAL \U1|Selector5~0_combout\ : std_logic;
SIGNAL \U1|Selector5~2_combout\ : std_logic;
SIGNAL \U1|Selector4~2_combout\ : std_logic;
SIGNAL \U1|Selector4~0_combout\ : std_logic;
SIGNAL \U1|Selector4~1_combout\ : std_logic;
SIGNAL \U1|Selector4~3_combout\ : std_logic;
SIGNAL \U1|VEC_CHAR\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U1|VEC_ASCII\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U1|INC_DIR_S\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U1|DIR_BI\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U1|DELAY_COR2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|DATA_A\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|CONTA_DELAY_COR\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|CONTA_DELAY\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|BD_LCD\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|ALT_INV_process_0~35_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
RS <= ww_RS;
RW <= ww_RW;
ENA <= ww_ENA;
ww_CORD <= CORD;
ww_CORI <= CORI;
DATA_LCD <= ww_DATA_LCD;
BLCD <= ww_BLCD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U1|DATA_A[6]~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|DATA_A[6]~3_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\U1|ALT_INV_process_0~35_combout\ <= NOT \U1|process_0~35_combout\;

-- Location: IOOBUF_X19_Y0_N23
\RS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|RS~q\,
	devoe => ww_devoe,
	o => \RS~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\RW~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RW~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\ENA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ENA~q\,
	devoe => ww_devoe,
	o => \ENA~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\DATA_LCD[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|DATA[0]~41_combout\,
	devoe => ww_devoe,
	o => \DATA_LCD[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\DATA_LCD[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|DATA[1]~16_combout\,
	devoe => ww_devoe,
	o => \DATA_LCD[1]~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\DATA_LCD[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|DATA[2]~23_combout\,
	devoe => ww_devoe,
	o => \DATA_LCD[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\DATA_LCD[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|DATA[3]~43_combout\,
	devoe => ww_devoe,
	o => \DATA_LCD[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\DATA_LCD[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|DATA[4]~30_combout\,
	devoe => ww_devoe,
	o => \DATA_LCD[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\DATA_LCD[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|DATA[5]~34_combout\,
	devoe => ww_devoe,
	o => \DATA_LCD[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\DATA_LCD[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|DATA[6]~37_combout\,
	devoe => ww_devoe,
	o => \DATA_LCD[6]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\DATA_LCD[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|DATA[7]~39_combout\,
	devoe => ww_devoe,
	o => \DATA_LCD[7]~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\BLCD[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|BD_LCD\(0),
	devoe => ww_devoe,
	o => \BLCD[0]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\BLCD[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|BD_LCD\(1),
	devoe => ww_devoe,
	o => \BLCD[1]~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\BLCD[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|BD_LCD\(2),
	devoe => ww_devoe,
	o => \BLCD[2]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\BLCD[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|BD_LCD\(3),
	devoe => ww_devoe,
	o => \BLCD[3]~output_o\);

-- Location: IOOBUF_X41_Y26_N23
\BLCD[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BLCD[4]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\BLCD[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BLCD[5]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\BLCD[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BLCD[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\BLCD[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BLCD[7]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G9
\CLK~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: LCCOMB_X40_Y16_N0
\U1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = \U1|CONTA_DELAY\(0) $ (VCC)
-- \U1|Add0~1\ = CARRY(\U1|CONTA_DELAY\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY\(0),
	datad => VCC,
	combout => \U1|Add0~0_combout\,
	cout => \U1|Add0~1\);

-- Location: LCCOMB_X37_Y17_N14
\U1|INC_DIR_S[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|INC_DIR_S[0]~6_combout\ = \U1|INC_DIR_S\(0) $ (VCC)
-- \U1|INC_DIR_S[0]~7\ = CARRY(\U1|INC_DIR_S\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(0),
	datad => VCC,
	combout => \U1|INC_DIR_S[0]~6_combout\,
	cout => \U1|INC_DIR_S[0]~7\);

-- Location: LCCOMB_X35_Y17_N6
\U1|DIR_BI[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DIR_BI[0]~feeder_combout\ = \U1|INC_DIR_S\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|INC_DIR_S\(0),
	combout => \U1|DIR_BI[0]~feeder_combout\);

-- Location: LCCOMB_X37_Y17_N16
\U1|INC_DIR_S[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|INC_DIR_S[1]~8_combout\ = (\U1|INC_DIR_S\(1) & (!\U1|INC_DIR_S[0]~7\)) # (!\U1|INC_DIR_S\(1) & ((\U1|INC_DIR_S[0]~7\) # (GND)))
-- \U1|INC_DIR_S[1]~9\ = CARRY((!\U1|INC_DIR_S[0]~7\) # (!\U1|INC_DIR_S\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|INC_DIR_S\(1),
	datad => VCC,
	cin => \U1|INC_DIR_S[0]~7\,
	combout => \U1|INC_DIR_S[1]~8_combout\,
	cout => \U1|INC_DIR_S[1]~9\);

-- Location: LCCOMB_X37_Y17_N18
\U1|INC_DIR_S[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|INC_DIR_S[2]~10_combout\ = (\U1|INC_DIR_S\(2) & (\U1|INC_DIR_S[1]~9\ $ (GND))) # (!\U1|INC_DIR_S\(2) & (!\U1|INC_DIR_S[1]~9\ & VCC))
-- \U1|INC_DIR_S[2]~11\ = CARRY((\U1|INC_DIR_S\(2) & !\U1|INC_DIR_S[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(2),
	datad => VCC,
	cin => \U1|INC_DIR_S[1]~9\,
	combout => \U1|INC_DIR_S[2]~10_combout\,
	cout => \U1|INC_DIR_S[2]~11\);

-- Location: LCCOMB_X35_Y18_N30
\U1|DIR_BI[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DIR_BI[2]~feeder_combout\ = \U1|INC_DIR_S\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|INC_DIR_S\(2),
	combout => \U1|DIR_BI[2]~feeder_combout\);

-- Location: FF_X35_Y18_N31
\U1|DIR_BI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|DIR_BI[2]~feeder_combout\,
	ena => \U1|ESTADO.BUCLE_INI~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|DIR_BI\(2));

-- Location: LCCOMB_X37_Y17_N22
\U1|INC_DIR_S[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|INC_DIR_S[4]~14_combout\ = (\U1|INC_DIR_S\(4) & (\U1|INC_DIR_S[3]~13\ $ (GND))) # (!\U1|INC_DIR_S\(4) & (!\U1|INC_DIR_S[3]~13\ & VCC))
-- \U1|INC_DIR_S[4]~15\ = CARRY((\U1|INC_DIR_S\(4) & !\U1|INC_DIR_S[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|INC_DIR_S\(4),
	datad => VCC,
	cin => \U1|INC_DIR_S[3]~13\,
	combout => \U1|INC_DIR_S[4]~14_combout\,
	cout => \U1|INC_DIR_S[4]~15\);

-- Location: LCCOMB_X37_Y17_N24
\U1|INC_DIR_S[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|INC_DIR_S[5]~17_combout\ = \U1|INC_DIR_S[4]~15\ $ (\U1|INC_DIR_S\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|INC_DIR_S\(5),
	cin => \U1|INC_DIR_S[4]~15\,
	combout => \U1|INC_DIR_S[5]~17_combout\);

-- Location: LCCOMB_X37_Y18_N4
\U1|DIR_BI[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DIR_BI[5]~feeder_combout\ = \U1|INC_DIR_S\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|INC_DIR_S\(5),
	combout => \U1|DIR_BI[5]~feeder_combout\);

-- Location: FF_X37_Y18_N5
\U1|DIR_BI[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|DIR_BI[5]~feeder_combout\,
	ena => \U1|ESTADO.BUCLE_INI~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|DIR_BI\(5));

-- Location: FF_X37_Y17_N25
\U1|INC_DIR_S[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|INC_DIR_S[5]~17_combout\,
	asdata => \U1|DIR_BI\(5),
	sload => \U1|ESTADO.BUCLE_FIN~q\,
	ena => \U1|INC_DIR_S[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|INC_DIR_S\(5));

-- Location: LCCOMB_X36_Y17_N24
\U1|process_0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~28_combout\ = (\U1|INC_DIR_S\(2) & ((!\U1|INC_DIR_S\(1)))) # (!\U1|INC_DIR_S\(2) & ((\U1|INC_DIR_S\(0)) # (\U1|INC_DIR_S\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|INC_DIR_S\(2),
	datac => \U1|INC_DIR_S\(0),
	datad => \U1|INC_DIR_S\(1),
	combout => \U1|process_0~28_combout\);

-- Location: LCCOMB_X36_Y17_N18
\U1|process_0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~39_combout\ = (!\U1|INC_DIR_S\(5) & (!\U1|INC_DIR_S\(4) & (!\U1|INC_DIR_S\(3) & \U1|process_0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(5),
	datab => \U1|INC_DIR_S\(4),
	datac => \U1|INC_DIR_S\(3),
	datad => \U1|process_0~28_combout\,
	combout => \U1|process_0~39_combout\);

-- Location: LCCOMB_X38_Y17_N10
\U1|Selector34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector34~0_combout\ = (\U1|ESTADO.FIN~q\ & (\U1|ESTADO~69_combout\ & \U1|Selector22~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.FIN~q\,
	datac => \U1|ESTADO~69_combout\,
	datad => \U1|Selector22~1_combout\,
	combout => \U1|Selector34~0_combout\);

-- Location: LCCOMB_X38_Y23_N8
\U1|Add7~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~33_combout\ = (\U1|CONTA_DELAY_COR\(4) & (\U1|Add7~32\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(4) & (!\U1|Add7~32\ & VCC))
-- \U1|Add7~34\ = CARRY((\U1|CONTA_DELAY_COR\(4) & !\U1|Add7~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(4),
	datad => VCC,
	cin => \U1|Add7~32\,
	combout => \U1|Add7~33_combout\,
	cout => \U1|Add7~34\);

-- Location: LCCOMB_X38_Y23_N10
\U1|Add7~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~35_combout\ = (\U1|CONTA_DELAY_COR\(5) & (!\U1|Add7~34\)) # (!\U1|CONTA_DELAY_COR\(5) & ((\U1|Add7~34\) # (GND)))
-- \U1|Add7~36\ = CARRY((!\U1|Add7~34\) # (!\U1|CONTA_DELAY_COR\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(5),
	datad => VCC,
	cin => \U1|Add7~34\,
	combout => \U1|Add7~35_combout\,
	cout => \U1|Add7~36\);

-- Location: LCCOMB_X39_Y22_N18
\U1|Add7~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~107_combout\ = (\U1|Add7~35_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~10_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Equal26~5_combout\,
	datad => \U1|Add7~35_combout\,
	combout => \U1|Add7~107_combout\);

-- Location: IOIBUF_X41_Y17_N1
\CORD~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CORD,
	o => \CORD~input_o\);

-- Location: LCCOMB_X40_Y17_N8
\U1|Equal26~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal26~11_combout\ = (\U1|Equal26~5_combout\ & (\U1|Equal26~10_combout\ & \U1|Equal26~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~5_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Equal26~4_combout\,
	combout => \U1|Equal26~11_combout\);

-- Location: LCCOMB_X40_Y17_N26
\U1|Selector22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector22~2_combout\ = (\U1|Selector22~1_combout\ & ((\U1|ESTADO.FIN~q\) # (!\U1|ESTADO.CHECAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.FIN~q\,
	datac => \U1|ESTADO.CHECAR~q\,
	datad => \U1|Selector22~1_combout\,
	combout => \U1|Selector22~2_combout\);

-- Location: LCCOMB_X40_Y17_N12
\U1|Selector22~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector22~3_combout\ = (\U1|ESTADO.CORRIMIENTO_DERECHA~q\ & ((\U1|ESTADO~69_combout\) # (!\U1|Equal26~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ESTADO.CORRIMIENTO_DERECHA~q\,
	datac => \U1|Equal26~11_combout\,
	datad => \U1|ESTADO~69_combout\,
	combout => \U1|Selector22~3_combout\);

-- Location: LCCOMB_X40_Y17_N14
\U1|Selector22~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector22~4_combout\ = (\U1|Selector22~2_combout\ & (((\U1|Selector22~3_combout\)) # (!\CORD~input_o\))) # (!\U1|Selector22~2_combout\ & (((!\U1|Equal26~11_combout\ & \U1|Selector22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CORD~input_o\,
	datab => \U1|Equal26~11_combout\,
	datac => \U1|Selector22~2_combout\,
	datad => \U1|Selector22~3_combout\,
	combout => \U1|Selector22~4_combout\);

-- Location: FF_X40_Y17_N15
\U1|ESTADO.CORRIMIENTO_DERECHA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U1|Selector22~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.CORRIMIENTO_DERECHA~q\);

-- Location: LCCOMB_X40_Y17_N2
\U1|WideOr39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|WideOr39~0_combout\ = (\U1|ESTADO.CORRIMIENTO_DERECHA~q\) # (\U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|ESTADO.CORRIMIENTO_DERECHA~q\,
	datad => \U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\,
	combout => \U1|WideOr39~0_combout\);

-- Location: FF_X39_Y22_N19
\U1|CONTA_DELAY_COR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~107_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(5));

-- Location: LCCOMB_X38_Y23_N12
\U1|Add7~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~37_combout\ = (\U1|CONTA_DELAY_COR\(6) & (\U1|Add7~36\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(6) & (!\U1|Add7~36\ & VCC))
-- \U1|Add7~38\ = CARRY((\U1|CONTA_DELAY_COR\(6) & !\U1|Add7~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(6),
	datad => VCC,
	cin => \U1|Add7~36\,
	combout => \U1|Add7~37_combout\,
	cout => \U1|Add7~38\);

-- Location: LCCOMB_X39_Y22_N0
\U1|Add7~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~106_combout\ = (\U1|Add7~37_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~10_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Equal26~5_combout\,
	datad => \U1|Add7~37_combout\,
	combout => \U1|Add7~106_combout\);

-- Location: FF_X39_Y22_N1
\U1|CONTA_DELAY_COR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~106_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(6));

-- Location: LCCOMB_X38_Y23_N14
\U1|Add7~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~39_combout\ = (\U1|CONTA_DELAY_COR\(7) & (!\U1|Add7~38\)) # (!\U1|CONTA_DELAY_COR\(7) & ((\U1|Add7~38\) # (GND)))
-- \U1|Add7~40\ = CARRY((!\U1|Add7~38\) # (!\U1|CONTA_DELAY_COR\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(7),
	datad => VCC,
	cin => \U1|Add7~38\,
	combout => \U1|Add7~39_combout\,
	cout => \U1|Add7~40\);

-- Location: LCCOMB_X37_Y23_N20
\U1|Add7~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~41_combout\ = (\U1|Add7~39_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~10_combout\,
	datac => \U1|Add7~39_combout\,
	datad => \U1|Equal26~5_combout\,
	combout => \U1|Add7~41_combout\);

-- Location: FF_X37_Y23_N21
\U1|CONTA_DELAY_COR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~41_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(7));

-- Location: LCCOMB_X38_Y23_N16
\U1|Add7~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~42_combout\ = (\U1|CONTA_DELAY_COR\(8) & (\U1|Add7~40\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(8) & (!\U1|Add7~40\ & VCC))
-- \U1|Add7~43\ = CARRY((\U1|CONTA_DELAY_COR\(8) & !\U1|Add7~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(8),
	datad => VCC,
	cin => \U1|Add7~40\,
	combout => \U1|Add7~42_combout\,
	cout => \U1|Add7~43\);

-- Location: LCCOMB_X37_Y23_N2
\U1|Add7~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~44_combout\ = (\U1|Add7~42_combout\ & (((!\U1|Equal26~4_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~5_combout\,
	datab => \U1|Add7~42_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Equal26~4_combout\,
	combout => \U1|Add7~44_combout\);

-- Location: FF_X37_Y23_N3
\U1|CONTA_DELAY_COR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~44_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(8));

-- Location: LCCOMB_X38_Y23_N18
\U1|Add7~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~45_combout\ = (\U1|CONTA_DELAY_COR\(9) & (!\U1|Add7~43\)) # (!\U1|CONTA_DELAY_COR\(9) & ((\U1|Add7~43\) # (GND)))
-- \U1|Add7~46\ = CARRY((!\U1|Add7~43\) # (!\U1|CONTA_DELAY_COR\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(9),
	datad => VCC,
	cin => \U1|Add7~43\,
	combout => \U1|Add7~45_combout\,
	cout => \U1|Add7~46\);

-- Location: LCCOMB_X39_Y23_N4
\U1|Add7~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~47_combout\ = (\U1|Add7~45_combout\ & (((!\U1|Equal26~4_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add7~45_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Equal26~4_combout\,
	combout => \U1|Add7~47_combout\);

-- Location: FF_X39_Y23_N5
\U1|CONTA_DELAY_COR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~47_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(9));

-- Location: LCCOMB_X38_Y23_N20
\U1|Add7~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~48_combout\ = (\U1|CONTA_DELAY_COR\(10) & (\U1|Add7~46\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(10) & (!\U1|Add7~46\ & VCC))
-- \U1|Add7~49\ = CARRY((\U1|CONTA_DELAY_COR\(10) & !\U1|Add7~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(10),
	datad => VCC,
	cin => \U1|Add7~46\,
	combout => \U1|Add7~48_combout\,
	cout => \U1|Add7~49\);

-- Location: LCCOMB_X39_Y22_N26
\U1|Add7~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~105_combout\ = (\U1|Add7~48_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~10_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Equal26~5_combout\,
	datad => \U1|Add7~48_combout\,
	combout => \U1|Add7~105_combout\);

-- Location: FF_X39_Y22_N27
\U1|CONTA_DELAY_COR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~105_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(10));

-- Location: LCCOMB_X38_Y23_N22
\U1|Add7~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~50_combout\ = (\U1|CONTA_DELAY_COR\(11) & (!\U1|Add7~49\)) # (!\U1|CONTA_DELAY_COR\(11) & ((\U1|Add7~49\) # (GND)))
-- \U1|Add7~51\ = CARRY((!\U1|Add7~49\) # (!\U1|CONTA_DELAY_COR\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(11),
	datad => VCC,
	cin => \U1|Add7~49\,
	combout => \U1|Add7~50_combout\,
	cout => \U1|Add7~51\);

-- Location: LCCOMB_X39_Y22_N8
\U1|Add7~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~104_combout\ = (\U1|Add7~50_combout\ & (((!\U1|Equal26~10_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~5_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Add7~50_combout\,
	datad => \U1|Equal26~10_combout\,
	combout => \U1|Add7~104_combout\);

-- Location: FF_X39_Y22_N9
\U1|CONTA_DELAY_COR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~104_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(11));

-- Location: LCCOMB_X38_Y23_N24
\U1|Add7~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~52_combout\ = (\U1|CONTA_DELAY_COR\(12) & (\U1|Add7~51\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(12) & (!\U1|Add7~51\ & VCC))
-- \U1|Add7~53\ = CARRY((\U1|CONTA_DELAY_COR\(12) & !\U1|Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(12),
	datad => VCC,
	cin => \U1|Add7~51\,
	combout => \U1|Add7~52_combout\,
	cout => \U1|Add7~53\);

-- Location: LCCOMB_X39_Y23_N30
\U1|Add7~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~103_combout\ = (\U1|Add7~52_combout\ & (((!\U1|Equal26~10_combout\) # (!\U1|Equal26~5_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Add7~52_combout\,
	combout => \U1|Add7~103_combout\);

-- Location: FF_X39_Y23_N31
\U1|CONTA_DELAY_COR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~103_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(12));

-- Location: LCCOMB_X38_Y23_N26
\U1|Add7~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~54_combout\ = (\U1|CONTA_DELAY_COR\(13) & (!\U1|Add7~53\)) # (!\U1|CONTA_DELAY_COR\(13) & ((\U1|Add7~53\) # (GND)))
-- \U1|Add7~55\ = CARRY((!\U1|Add7~53\) # (!\U1|CONTA_DELAY_COR\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(13),
	datad => VCC,
	cin => \U1|Add7~53\,
	combout => \U1|Add7~54_combout\,
	cout => \U1|Add7~55\);

-- Location: LCCOMB_X39_Y23_N24
\U1|Add7~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~102_combout\ = (\U1|Add7~54_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~10_combout\,
	datac => \U1|Add7~54_combout\,
	datad => \U1|Equal26~5_combout\,
	combout => \U1|Add7~102_combout\);

-- Location: FF_X39_Y23_N25
\U1|CONTA_DELAY_COR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~102_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(13));

-- Location: LCCOMB_X38_Y23_N28
\U1|Add7~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~56_combout\ = (\U1|CONTA_DELAY_COR\(14) & (\U1|Add7~55\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(14) & (!\U1|Add7~55\ & VCC))
-- \U1|Add7~57\ = CARRY((\U1|CONTA_DELAY_COR\(14) & !\U1|Add7~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(14),
	datad => VCC,
	cin => \U1|Add7~55\,
	combout => \U1|Add7~56_combout\,
	cout => \U1|Add7~57\);

-- Location: LCCOMB_X37_Y23_N14
\U1|Add7~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~58_combout\ = (\U1|Add7~56_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~10_combout\,
	datac => \U1|Add7~56_combout\,
	datad => \U1|Equal26~5_combout\,
	combout => \U1|Add7~58_combout\);

-- Location: FF_X37_Y23_N15
\U1|CONTA_DELAY_COR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~58_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(14));

-- Location: LCCOMB_X38_Y23_N30
\U1|Add7~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~59_combout\ = (\U1|CONTA_DELAY_COR\(15) & (!\U1|Add7~57\)) # (!\U1|CONTA_DELAY_COR\(15) & ((\U1|Add7~57\) # (GND)))
-- \U1|Add7~60\ = CARRY((!\U1|Add7~57\) # (!\U1|CONTA_DELAY_COR\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(15),
	datad => VCC,
	cin => \U1|Add7~57\,
	combout => \U1|Add7~59_combout\,
	cout => \U1|Add7~60\);

-- Location: LCCOMB_X37_Y23_N16
\U1|Add7~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~61_combout\ = (\U1|Add7~59_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~10_combout\,
	datac => \U1|Add7~59_combout\,
	datad => \U1|Equal26~5_combout\,
	combout => \U1|Add7~61_combout\);

-- Location: FF_X37_Y23_N17
\U1|CONTA_DELAY_COR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~61_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(15));

-- Location: LCCOMB_X38_Y22_N0
\U1|Add7~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~62_combout\ = (\U1|CONTA_DELAY_COR\(16) & (\U1|Add7~60\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(16) & (!\U1|Add7~60\ & VCC))
-- \U1|Add7~63\ = CARRY((\U1|CONTA_DELAY_COR\(16) & !\U1|Add7~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(16),
	datad => VCC,
	cin => \U1|Add7~60\,
	combout => \U1|Add7~62_combout\,
	cout => \U1|Add7~63\);

-- Location: LCCOMB_X37_Y22_N0
\U1|Add7~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~64_combout\ = (\U1|Add7~62_combout\ & (((!\U1|Equal26~10_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~5_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Add7~62_combout\,
	datad => \U1|Equal26~10_combout\,
	combout => \U1|Add7~64_combout\);

-- Location: FF_X37_Y22_N1
\U1|CONTA_DELAY_COR[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~64_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(16));

-- Location: LCCOMB_X38_Y22_N2
\U1|Add7~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~65_combout\ = (\U1|CONTA_DELAY_COR\(17) & (!\U1|Add7~63\)) # (!\U1|CONTA_DELAY_COR\(17) & ((\U1|Add7~63\) # (GND)))
-- \U1|Add7~66\ = CARRY((!\U1|Add7~63\) # (!\U1|CONTA_DELAY_COR\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(17),
	datad => VCC,
	cin => \U1|Add7~63\,
	combout => \U1|Add7~65_combout\,
	cout => \U1|Add7~66\);

-- Location: LCCOMB_X39_Y23_N26
\U1|Add7~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~101_combout\ = (\U1|Add7~65_combout\ & (((!\U1|Equal26~10_combout\) # (!\U1|Equal26~5_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Add7~65_combout\,
	combout => \U1|Add7~101_combout\);

-- Location: FF_X39_Y23_N27
\U1|CONTA_DELAY_COR[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~101_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(17));

-- Location: LCCOMB_X38_Y22_N4
\U1|Add7~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~67_combout\ = (\U1|CONTA_DELAY_COR\(18) & (\U1|Add7~66\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(18) & (!\U1|Add7~66\ & VCC))
-- \U1|Add7~68\ = CARRY((\U1|CONTA_DELAY_COR\(18) & !\U1|Add7~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(18),
	datad => VCC,
	cin => \U1|Add7~66\,
	combout => \U1|Add7~67_combout\,
	cout => \U1|Add7~68\);

-- Location: LCCOMB_X39_Y23_N28
\U1|Add7~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~100_combout\ = (\U1|Add7~67_combout\ & (((!\U1|Equal26~4_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add7~67_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Equal26~4_combout\,
	combout => \U1|Add7~100_combout\);

-- Location: FF_X39_Y23_N29
\U1|CONTA_DELAY_COR[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~100_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(18));

-- Location: LCCOMB_X38_Y22_N6
\U1|Add7~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~69_combout\ = (\U1|CONTA_DELAY_COR\(19) & (!\U1|Add7~68\)) # (!\U1|CONTA_DELAY_COR\(19) & ((\U1|Add7~68\) # (GND)))
-- \U1|Add7~70\ = CARRY((!\U1|Add7~68\) # (!\U1|CONTA_DELAY_COR\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(19),
	datad => VCC,
	cin => \U1|Add7~68\,
	combout => \U1|Add7~69_combout\,
	cout => \U1|Add7~70\);

-- Location: LCCOMB_X37_Y23_N24
\U1|Add7~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~71_combout\ = (\U1|Add7~69_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~10_combout\,
	datac => \U1|Add7~69_combout\,
	datad => \U1|Equal26~5_combout\,
	combout => \U1|Add7~71_combout\);

-- Location: FF_X37_Y23_N25
\U1|CONTA_DELAY_COR[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~71_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(19));

-- Location: LCCOMB_X38_Y22_N8
\U1|Add7~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~72_combout\ = (\U1|CONTA_DELAY_COR\(20) & (\U1|Add7~70\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(20) & (!\U1|Add7~70\ & VCC))
-- \U1|Add7~73\ = CARRY((\U1|CONTA_DELAY_COR\(20) & !\U1|Add7~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(20),
	datad => VCC,
	cin => \U1|Add7~70\,
	combout => \U1|Add7~72_combout\,
	cout => \U1|Add7~73\);

-- Location: LCCOMB_X39_Y22_N12
\U1|Add7~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~119_combout\ = (\U1|Add7~72_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~10_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Equal26~5_combout\,
	datad => \U1|Add7~72_combout\,
	combout => \U1|Add7~119_combout\);

-- Location: FF_X39_Y22_N13
\U1|CONTA_DELAY_COR[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~119_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(20));

-- Location: LCCOMB_X38_Y22_N10
\U1|Add7~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~74_combout\ = (\U1|CONTA_DELAY_COR\(21) & (!\U1|Add7~73\)) # (!\U1|CONTA_DELAY_COR\(21) & ((\U1|Add7~73\) # (GND)))
-- \U1|Add7~75\ = CARRY((!\U1|Add7~73\) # (!\U1|CONTA_DELAY_COR\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(21),
	datad => VCC,
	cin => \U1|Add7~73\,
	combout => \U1|Add7~74_combout\,
	cout => \U1|Add7~75\);

-- Location: LCCOMB_X39_Y22_N6
\U1|Add7~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~118_combout\ = (\U1|Add7~74_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~10_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Equal26~5_combout\,
	datad => \U1|Add7~74_combout\,
	combout => \U1|Add7~118_combout\);

-- Location: FF_X39_Y22_N7
\U1|CONTA_DELAY_COR[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~118_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(21));

-- Location: LCCOMB_X38_Y22_N12
\U1|Add7~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~76_combout\ = (\U1|CONTA_DELAY_COR\(22) & (\U1|Add7~75\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(22) & (!\U1|Add7~75\ & VCC))
-- \U1|Add7~77\ = CARRY((\U1|CONTA_DELAY_COR\(22) & !\U1|Add7~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(22),
	datad => VCC,
	cin => \U1|Add7~75\,
	combout => \U1|Add7~76_combout\,
	cout => \U1|Add7~77\);

-- Location: LCCOMB_X37_Y23_N22
\U1|Add7~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~108_combout\ = (\U1|Add7~76_combout\ & (((!\U1|Equal26~4_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~5_combout\,
	datab => \U1|Equal26~10_combout\,
	datac => \U1|Add7~76_combout\,
	datad => \U1|Equal26~4_combout\,
	combout => \U1|Add7~108_combout\);

-- Location: FF_X37_Y23_N23
\U1|CONTA_DELAY_COR[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~108_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(22));

-- Location: LCCOMB_X38_Y22_N14
\U1|Add7~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~78_combout\ = (\U1|CONTA_DELAY_COR\(23) & (!\U1|Add7~77\)) # (!\U1|CONTA_DELAY_COR\(23) & ((\U1|Add7~77\) # (GND)))
-- \U1|Add7~79\ = CARRY((!\U1|Add7~77\) # (!\U1|CONTA_DELAY_COR\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(23),
	datad => VCC,
	cin => \U1|Add7~77\,
	combout => \U1|Add7~78_combout\,
	cout => \U1|Add7~79\);

-- Location: LCCOMB_X38_Y22_N16
\U1|Add7~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~80_combout\ = (\U1|CONTA_DELAY_COR\(24) & (\U1|Add7~79\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(24) & (!\U1|Add7~79\ & VCC))
-- \U1|Add7~81\ = CARRY((\U1|CONTA_DELAY_COR\(24) & !\U1|Add7~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(24),
	datad => VCC,
	cin => \U1|Add7~79\,
	combout => \U1|Add7~80_combout\,
	cout => \U1|Add7~81\);

-- Location: LCCOMB_X37_Y23_N28
\U1|Add7~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~110_combout\ = (\U1|Add7~80_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~10_combout\,
	datac => \U1|Equal26~5_combout\,
	datad => \U1|Add7~80_combout\,
	combout => \U1|Add7~110_combout\);

-- Location: FF_X37_Y23_N29
\U1|CONTA_DELAY_COR[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~110_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(24));

-- Location: LCCOMB_X38_Y22_N18
\U1|Add7~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~82_combout\ = (\U1|CONTA_DELAY_COR\(25) & (!\U1|Add7~81\)) # (!\U1|CONTA_DELAY_COR\(25) & ((\U1|Add7~81\) # (GND)))
-- \U1|Add7~83\ = CARRY((!\U1|Add7~81\) # (!\U1|CONTA_DELAY_COR\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(25),
	datad => VCC,
	cin => \U1|Add7~81\,
	combout => \U1|Add7~82_combout\,
	cout => \U1|Add7~83\);

-- Location: LCCOMB_X39_Y22_N4
\U1|Add7~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~117_combout\ = (\U1|Add7~82_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~10_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Equal26~5_combout\,
	datad => \U1|Add7~82_combout\,
	combout => \U1|Add7~117_combout\);

-- Location: FF_X39_Y22_N5
\U1|CONTA_DELAY_COR[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~117_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(25));

-- Location: LCCOMB_X38_Y22_N20
\U1|Add7~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~84_combout\ = (\U1|CONTA_DELAY_COR\(26) & (\U1|Add7~83\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(26) & (!\U1|Add7~83\ & VCC))
-- \U1|Add7~85\ = CARRY((\U1|CONTA_DELAY_COR\(26) & !\U1|Add7~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(26),
	datad => VCC,
	cin => \U1|Add7~83\,
	combout => \U1|Add7~84_combout\,
	cout => \U1|Add7~85\);

-- Location: LCCOMB_X39_Y22_N10
\U1|Add7~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~116_combout\ = (\U1|Add7~84_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~10_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Equal26~5_combout\,
	datad => \U1|Add7~84_combout\,
	combout => \U1|Add7~116_combout\);

-- Location: FF_X39_Y22_N11
\U1|CONTA_DELAY_COR[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~116_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(26));

-- Location: LCCOMB_X39_Y22_N22
\U1|Equal26~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal26~7_combout\ = (!\U1|CONTA_DELAY_COR\(21) & (!\U1|CONTA_DELAY_COR\(26) & (!\U1|CONTA_DELAY_COR\(25) & !\U1|CONTA_DELAY_COR\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(21),
	datab => \U1|CONTA_DELAY_COR\(26),
	datac => \U1|CONTA_DELAY_COR\(25),
	datad => \U1|CONTA_DELAY_COR\(20),
	combout => \U1|Equal26~7_combout\);

-- Location: LCCOMB_X39_Y22_N20
\U1|Equal26~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal26~9_combout\ = (!\U1|CONTA_DELAY_COR\(10) & (!\U1|CONTA_DELAY_COR\(5) & (!\U1|CONTA_DELAY_COR\(11) & !\U1|CONTA_DELAY_COR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(10),
	datab => \U1|CONTA_DELAY_COR\(5),
	datac => \U1|CONTA_DELAY_COR\(11),
	datad => \U1|CONTA_DELAY_COR\(6),
	combout => \U1|Equal26~9_combout\);

-- Location: LCCOMB_X39_Y23_N0
\U1|Equal26~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal26~8_combout\ = (!\U1|CONTA_DELAY_COR\(12) & (!\U1|CONTA_DELAY_COR\(18) & (!\U1|CONTA_DELAY_COR\(17) & !\U1|CONTA_DELAY_COR\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(12),
	datab => \U1|CONTA_DELAY_COR\(18),
	datac => \U1|CONTA_DELAY_COR\(17),
	datad => \U1|CONTA_DELAY_COR\(13),
	combout => \U1|Equal26~8_combout\);

-- Location: LCCOMB_X38_Y22_N22
\U1|Add7~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~86_combout\ = (\U1|CONTA_DELAY_COR\(27) & (!\U1|Add7~85\)) # (!\U1|CONTA_DELAY_COR\(27) & ((\U1|Add7~85\) # (GND)))
-- \U1|Add7~87\ = CARRY((!\U1|Add7~85\) # (!\U1|CONTA_DELAY_COR\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(27),
	datad => VCC,
	cin => \U1|Add7~85\,
	combout => \U1|Add7~86_combout\,
	cout => \U1|Add7~87\);

-- Location: LCCOMB_X39_Y22_N2
\U1|Add7~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~115_combout\ = (\U1|Add7~86_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~10_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Equal26~5_combout\,
	datad => \U1|Add7~86_combout\,
	combout => \U1|Add7~115_combout\);

-- Location: FF_X39_Y22_N3
\U1|CONTA_DELAY_COR[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~115_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(27));

-- Location: LCCOMB_X38_Y22_N24
\U1|Add7~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~88_combout\ = (\U1|CONTA_DELAY_COR\(28) & (\U1|Add7~87\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(28) & (!\U1|Add7~87\ & VCC))
-- \U1|Add7~89\ = CARRY((\U1|CONTA_DELAY_COR\(28) & !\U1|Add7~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(28),
	datad => VCC,
	cin => \U1|Add7~87\,
	combout => \U1|Add7~88_combout\,
	cout => \U1|Add7~89\);

-- Location: LCCOMB_X39_Y22_N24
\U1|Add7~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~114_combout\ = (\U1|Add7~88_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~10_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Equal26~5_combout\,
	datad => \U1|Add7~88_combout\,
	combout => \U1|Add7~114_combout\);

-- Location: FF_X39_Y22_N25
\U1|CONTA_DELAY_COR[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~114_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(28));

-- Location: LCCOMB_X38_Y22_N26
\U1|Add7~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~90_combout\ = (\U1|CONTA_DELAY_COR\(29) & (!\U1|Add7~89\)) # (!\U1|CONTA_DELAY_COR\(29) & ((\U1|Add7~89\) # (GND)))
-- \U1|Add7~91\ = CARRY((!\U1|Add7~89\) # (!\U1|CONTA_DELAY_COR\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(29),
	datad => VCC,
	cin => \U1|Add7~89\,
	combout => \U1|Add7~90_combout\,
	cout => \U1|Add7~91\);

-- Location: LCCOMB_X39_Y22_N14
\U1|Add7~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~113_combout\ = (\U1|Add7~90_combout\ & (((!\U1|Equal26~10_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~5_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Add7~90_combout\,
	datad => \U1|Equal26~10_combout\,
	combout => \U1|Add7~113_combout\);

-- Location: FF_X39_Y22_N15
\U1|CONTA_DELAY_COR[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~113_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(29));

-- Location: LCCOMB_X38_Y22_N28
\U1|Add7~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~92_combout\ = (\U1|CONTA_DELAY_COR\(30) & (\U1|Add7~91\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(30) & (!\U1|Add7~91\ & VCC))
-- \U1|Add7~93\ = CARRY((\U1|CONTA_DELAY_COR\(30) & !\U1|Add7~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(30),
	datad => VCC,
	cin => \U1|Add7~91\,
	combout => \U1|Add7~92_combout\,
	cout => \U1|Add7~93\);

-- Location: LCCOMB_X39_Y22_N16
\U1|Add7~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~112_combout\ = (\U1|Add7~92_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~10_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Equal26~5_combout\,
	datad => \U1|Add7~92_combout\,
	combout => \U1|Add7~112_combout\);

-- Location: FF_X39_Y22_N17
\U1|CONTA_DELAY_COR[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~112_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(30));

-- Location: LCCOMB_X39_Y22_N28
\U1|Equal26~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal26~6_combout\ = (!\U1|CONTA_DELAY_COR\(28) & (!\U1|CONTA_DELAY_COR\(27) & (!\U1|CONTA_DELAY_COR\(29) & !\U1|CONTA_DELAY_COR\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(28),
	datab => \U1|CONTA_DELAY_COR\(27),
	datac => \U1|CONTA_DELAY_COR\(29),
	datad => \U1|CONTA_DELAY_COR\(30),
	combout => \U1|Equal26~6_combout\);

-- Location: LCCOMB_X39_Y22_N30
\U1|Equal26~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal26~10_combout\ = (\U1|Equal26~7_combout\ & (\U1|Equal26~9_combout\ & (\U1|Equal26~8_combout\ & \U1|Equal26~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~7_combout\,
	datab => \U1|Equal26~9_combout\,
	datac => \U1|Equal26~8_combout\,
	datad => \U1|Equal26~6_combout\,
	combout => \U1|Equal26~10_combout\);

-- Location: LCCOMB_X37_Y23_N30
\U1|Add7~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~109_combout\ = (\U1|Add7~78_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~10_combout\,
	datac => \U1|Equal26~5_combout\,
	datad => \U1|Add7~78_combout\,
	combout => \U1|Add7~109_combout\);

-- Location: FF_X37_Y23_N31
\U1|CONTA_DELAY_COR[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~109_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(23));

-- Location: LCCOMB_X37_Y23_N4
\U1|DELAY_COR2[31]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DELAY_COR2[31]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U1|DELAY_COR2[31]~feeder_combout\);

-- Location: FF_X37_Y23_N5
\U1|DELAY_COR2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|DELAY_COR2[31]~feeder_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|DELAY_COR2\(31));

-- Location: LCCOMB_X38_Y22_N30
\U1|Add7~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~94_combout\ = \U1|Add7~93\ $ (!\U1|CONTA_DELAY_COR\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|CONTA_DELAY_COR\(31),
	cin => \U1|Add7~93\,
	combout => \U1|Add7~94_combout\);

-- Location: LCCOMB_X37_Y23_N26
\U1|Add7~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~111_combout\ = ((\U1|Equal26~4_combout\ & (\U1|Equal26~10_combout\ & \U1|Equal26~5_combout\))) # (!\U1|Add7~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~10_combout\,
	datac => \U1|Add7~94_combout\,
	datad => \U1|Equal26~5_combout\,
	combout => \U1|Add7~111_combout\);

-- Location: FF_X37_Y23_N27
\U1|CONTA_DELAY_COR[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~111_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(31));

-- Location: LCCOMB_X37_Y23_N12
\U1|Equal26~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal26~3_combout\ = (\U1|CONTA_DELAY_COR\(23) & (\U1|DELAY_COR2\(31) & (\U1|CONTA_DELAY_COR\(31) & \U1|CONTA_DELAY_COR\(24)))) # (!\U1|CONTA_DELAY_COR\(23) & (!\U1|DELAY_COR2\(31) & (!\U1|CONTA_DELAY_COR\(31) & !\U1|CONTA_DELAY_COR\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(23),
	datab => \U1|DELAY_COR2\(31),
	datac => \U1|CONTA_DELAY_COR\(31),
	datad => \U1|CONTA_DELAY_COR\(24),
	combout => \U1|Equal26~3_combout\);

-- Location: LCCOMB_X37_Y23_N0
\U1|Equal26~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal26~2_combout\ = (\U1|CONTA_DELAY_COR\(22) & (\U1|CONTA_DELAY_COR\(19) & (\U1|DELAY_COR2\(31) & \U1|CONTA_DELAY_COR\(16)))) # (!\U1|CONTA_DELAY_COR\(22) & (!\U1|CONTA_DELAY_COR\(19) & (!\U1|DELAY_COR2\(31) & !\U1|CONTA_DELAY_COR\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(22),
	datab => \U1|CONTA_DELAY_COR\(19),
	datac => \U1|DELAY_COR2\(31),
	datad => \U1|CONTA_DELAY_COR\(16),
	combout => \U1|Equal26~2_combout\);

-- Location: LCCOMB_X38_Y23_N0
\U1|Add7~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~24_combout\ = \U1|CONTA_DELAY_COR\(0) $ (GND)
-- \U1|Add7~25\ = CARRY(!\U1|CONTA_DELAY_COR\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(0),
	datad => VCC,
	combout => \U1|Add7~24_combout\,
	cout => \U1|Add7~25\);

-- Location: LCCOMB_X37_Y23_N6
\U1|Add7~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~26_combout\ = ((\U1|Equal26~4_combout\ & (\U1|Equal26~10_combout\ & \U1|Equal26~5_combout\))) # (!\U1|Add7~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~10_combout\,
	datac => \U1|Add7~24_combout\,
	datad => \U1|Equal26~5_combout\,
	combout => \U1|Add7~26_combout\);

-- Location: FF_X37_Y23_N7
\U1|CONTA_DELAY_COR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~26_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(0));

-- Location: LCCOMB_X37_Y23_N8
\U1|Equal26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal26~0_combout\ = (\U1|CONTA_DELAY_COR\(0) & (\U1|DELAY_COR2\(31) & (\U1|CONTA_DELAY_COR\(8) & \U1|CONTA_DELAY_COR\(7)))) # (!\U1|CONTA_DELAY_COR\(0) & (!\U1|DELAY_COR2\(31) & (!\U1|CONTA_DELAY_COR\(8) & !\U1|CONTA_DELAY_COR\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(0),
	datab => \U1|DELAY_COR2\(31),
	datac => \U1|CONTA_DELAY_COR\(8),
	datad => \U1|CONTA_DELAY_COR\(7),
	combout => \U1|Equal26~0_combout\);

-- Location: LCCOMB_X37_Y23_N18
\U1|Equal26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal26~1_combout\ = (\U1|CONTA_DELAY_COR\(9) & (\U1|DELAY_COR2\(31) & (\U1|CONTA_DELAY_COR\(14) & \U1|CONTA_DELAY_COR\(15)))) # (!\U1|CONTA_DELAY_COR\(9) & (!\U1|DELAY_COR2\(31) & (!\U1|CONTA_DELAY_COR\(14) & !\U1|CONTA_DELAY_COR\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(9),
	datab => \U1|DELAY_COR2\(31),
	datac => \U1|CONTA_DELAY_COR\(14),
	datad => \U1|CONTA_DELAY_COR\(15),
	combout => \U1|Equal26~1_combout\);

-- Location: LCCOMB_X37_Y23_N10
\U1|Equal26~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal26~4_combout\ = (\U1|Equal26~3_combout\ & (\U1|Equal26~2_combout\ & (\U1|Equal26~0_combout\ & \U1|Equal26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~3_combout\,
	datab => \U1|Equal26~2_combout\,
	datac => \U1|Equal26~0_combout\,
	datad => \U1|Equal26~1_combout\,
	combout => \U1|Equal26~4_combout\);

-- Location: LCCOMB_X38_Y23_N2
\U1|Add7~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~27_combout\ = (\U1|CONTA_DELAY_COR\(1) & (!\U1|Add7~25\)) # (!\U1|CONTA_DELAY_COR\(1) & ((\U1|Add7~25\) # (GND)))
-- \U1|Add7~28\ = CARRY((!\U1|Add7~25\) # (!\U1|CONTA_DELAY_COR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(1),
	datad => VCC,
	cin => \U1|Add7~25\,
	combout => \U1|Add7~27_combout\,
	cout => \U1|Add7~28\);

-- Location: LCCOMB_X39_Y23_N20
\U1|Add7~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~97_combout\ = (\U1|Add7~27_combout\ & (((!\U1|Equal26~4_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add7~27_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Equal26~4_combout\,
	combout => \U1|Add7~97_combout\);

-- Location: FF_X39_Y23_N21
\U1|CONTA_DELAY_COR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~97_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(1));

-- Location: LCCOMB_X38_Y23_N4
\U1|Add7~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~29_combout\ = (\U1|CONTA_DELAY_COR\(2) & (\U1|Add7~28\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(2) & (!\U1|Add7~28\ & VCC))
-- \U1|Add7~30\ = CARRY((\U1|CONTA_DELAY_COR\(2) & !\U1|Add7~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(2),
	datad => VCC,
	cin => \U1|Add7~28\,
	combout => \U1|Add7~29_combout\,
	cout => \U1|Add7~30\);

-- Location: LCCOMB_X39_Y23_N18
\U1|Add7~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~98_combout\ = (\U1|Add7~29_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~10_combout\,
	datac => \U1|Add7~29_combout\,
	datad => \U1|Equal26~5_combout\,
	combout => \U1|Add7~98_combout\);

-- Location: FF_X39_Y23_N19
\U1|CONTA_DELAY_COR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~98_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(2));

-- Location: LCCOMB_X38_Y23_N6
\U1|Add7~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~31_combout\ = (\U1|CONTA_DELAY_COR\(3) & (!\U1|Add7~30\)) # (!\U1|CONTA_DELAY_COR\(3) & ((\U1|Add7~30\) # (GND)))
-- \U1|Add7~32\ = CARRY((!\U1|Add7~30\) # (!\U1|CONTA_DELAY_COR\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(3),
	datad => VCC,
	cin => \U1|Add7~30\,
	combout => \U1|Add7~31_combout\,
	cout => \U1|Add7~32\);

-- Location: LCCOMB_X39_Y23_N12
\U1|Add7~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~99_combout\ = (\U1|Add7~31_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~10_combout\,
	datac => \U1|Add7~31_combout\,
	datad => \U1|Equal26~5_combout\,
	combout => \U1|Add7~99_combout\);

-- Location: FF_X39_Y23_N13
\U1|CONTA_DELAY_COR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~99_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(3));

-- Location: LCCOMB_X39_Y23_N22
\U1|Add7~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add7~96_combout\ = (\U1|Add7~33_combout\ & (((!\U1|Equal26~4_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add7~33_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Equal26~4_combout\,
	combout => \U1|Add7~96_combout\);

-- Location: FF_X39_Y23_N23
\U1|CONTA_DELAY_COR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add7~96_combout\,
	ena => \U1|WideOr39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(4));

-- Location: LCCOMB_X39_Y23_N2
\U1|Equal26~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal26~5_combout\ = (!\U1|CONTA_DELAY_COR\(4) & (!\U1|CONTA_DELAY_COR\(1) & (!\U1|CONTA_DELAY_COR\(2) & !\U1|CONTA_DELAY_COR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(4),
	datab => \U1|CONTA_DELAY_COR\(1),
	datac => \U1|CONTA_DELAY_COR\(2),
	datad => \U1|CONTA_DELAY_COR\(3),
	combout => \U1|Equal26~5_combout\);

-- Location: LCCOMB_X40_Y17_N4
\U1|Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector23~0_combout\ = (\U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\ & (((!\U1|Equal26~4_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~5_combout\,
	datab => \U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Equal26~4_combout\,
	combout => \U1|Selector23~0_combout\);

-- Location: IOIBUF_X41_Y17_N8
\CORI~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CORI,
	o => \CORI~input_o\);

-- Location: LCCOMB_X40_Y17_N16
\U1|Selector23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector23~1_combout\ = (\CORD~input_o\ & (((\U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\ & \U1|ESTADO~69_combout\)) # (!\CORI~input_o\))) # (!\CORD~input_o\ & (\U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\ & ((\U1|ESTADO~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CORD~input_o\,
	datab => \U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\,
	datac => \CORI~input_o\,
	datad => \U1|ESTADO~69_combout\,
	combout => \U1|Selector23~1_combout\);

-- Location: LCCOMB_X40_Y17_N20
\U1|Selector23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector23~2_combout\ = (\U1|Selector23~0_combout\) # ((\U1|Selector22~1_combout\ & (!\U1|Selector9~0_combout\ & \U1|Selector23~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector22~1_combout\,
	datab => \U1|Selector9~0_combout\,
	datac => \U1|Selector23~0_combout\,
	datad => \U1|Selector23~1_combout\,
	combout => \U1|Selector23~2_combout\);

-- Location: FF_X40_Y17_N21
\U1|ESTADO.CORRIMIENTO_IZQUIERDA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U1|Selector23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\);

-- Location: LCCOMB_X40_Y17_N10
\U1|Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector25~0_combout\ = (\U1|Equal21~4_combout\ & (\U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\ & (\U1|Equal26~11_combout\))) # (!\U1|Equal21~4_combout\ & ((\U1|ESTADO.ENA_I~q\) # ((\U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\ & \U1|Equal26~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal21~4_combout\,
	datab => \U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\,
	datac => \U1|Equal26~11_combout\,
	datad => \U1|ESTADO.ENA_I~q\,
	combout => \U1|Selector25~0_combout\);

-- Location: LCCOMB_X40_Y17_N30
\U1|Selector25~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector25~1_combout\ = (\U1|Selector25~0_combout\) # ((\U1|Selector34~0_combout\ & \U1|ESTADO.ENA_I~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector34~0_combout\,
	datac => \U1|ESTADO.ENA_I~q\,
	datad => \U1|Selector25~0_combout\,
	combout => \U1|Selector25~1_combout\);

-- Location: FF_X40_Y17_N31
\U1|ESTADO.ENA_I\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector25~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.ENA_I~q\);

-- Location: LCCOMB_X40_Y17_N6
\U1|Selector24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector24~0_combout\ = (\U1|Equal21~4_combout\ & (((\U1|Equal26~11_combout\ & \U1|ESTADO.CORRIMIENTO_DERECHA~q\)))) # (!\U1|Equal21~4_combout\ & ((\U1|ESTADO.ENA_D~q\) # ((\U1|Equal26~11_combout\ & \U1|ESTADO.CORRIMIENTO_DERECHA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal21~4_combout\,
	datab => \U1|ESTADO.ENA_D~q\,
	datac => \U1|Equal26~11_combout\,
	datad => \U1|ESTADO.CORRIMIENTO_DERECHA~q\,
	combout => \U1|Selector24~0_combout\);

-- Location: LCCOMB_X40_Y17_N24
\U1|Selector24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector24~1_combout\ = (\U1|Selector24~0_combout\) # ((\U1|Selector34~0_combout\ & \U1|ESTADO.ENA_D~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector34~0_combout\,
	datac => \U1|ESTADO.ENA_D~q\,
	datad => \U1|Selector24~0_combout\,
	combout => \U1|Selector24~1_combout\);

-- Location: FF_X40_Y17_N25
\U1|ESTADO.ENA_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.ENA_D~q\);

-- Location: LCCOMB_X39_Y17_N22
\U1|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector8~0_combout\ = (\U1|Equal21~4_combout\ & ((\U1|ESTADO.ENA_I~q\) # ((\U1|ESTADO.ENA_D~q\) # (!\U1|WideOr38~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.ENA_I~q\,
	datab => \U1|ESTADO.ENA_D~q\,
	datac => \U1|WideOr38~3_combout\,
	datad => \U1|Equal21~4_combout\,
	combout => \U1|Selector8~0_combout\);

-- Location: LCCOMB_X39_Y17_N6
\U1|Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector8~1_combout\ = (!\U1|Selector8~0_combout\ & (((\U1|ESTADO.CHECAR~q\) # (!\U1|ESTADO~69_combout\)) # (!\U1|Selector22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector22~1_combout\,
	datab => \U1|ESTADO~69_combout\,
	datac => \U1|ESTADO.CHECAR~q\,
	datad => \U1|Selector8~0_combout\,
	combout => \U1|Selector8~1_combout\);

-- Location: FF_X39_Y17_N7
\U1|ESTADO.CHECAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U1|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.CHECAR~q\);

-- Location: LCCOMB_X40_Y17_N0
\U1|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector9~0_combout\ = (\U1|ESTADO.CHECAR~q\ & !\U1|ESTADO.FIN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|ESTADO.CHECAR~q\,
	datad => \U1|ESTADO.FIN~q\,
	combout => \U1|Selector9~0_combout\);

-- Location: LCCOMB_X37_Y16_N4
\U1|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector15~0_combout\ = (\U1|ESTADO.ESCRIBIR_LCD~q\ & (((\U1|process_0~39_combout\ & !\U1|Selector9~0_combout\)) # (!\U1|Equal21~4_combout\))) # (!\U1|ESTADO.ESCRIBIR_LCD~q\ & (\U1|process_0~39_combout\ & (!\U1|Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.ESCRIBIR_LCD~q\,
	datab => \U1|process_0~39_combout\,
	datac => \U1|Selector9~0_combout\,
	datad => \U1|Equal21~4_combout\,
	combout => \U1|Selector15~0_combout\);

-- Location: LCCOMB_X37_Y16_N22
\U1|Selector15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector15~1_combout\ = (\U1|Selector15~0_combout\) # ((\U1|ESTADO.ESCRIBIR_LCD~q\ & \U1|Selector37~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Selector15~0_combout\,
	datac => \U1|ESTADO.ESCRIBIR_LCD~q\,
	datad => \U1|Selector37~1_combout\,
	combout => \U1|Selector15~1_combout\);

-- Location: FF_X37_Y16_N23
\U1|ESTADO.ESCRIBIR_LCD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.ESCRIBIR_LCD~q\);

-- Location: LCCOMB_X37_Y17_N10
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\U1|INC_DIR_S\(1) & (!\U1|INC_DIR_S\(3) & ((!\U1|INC_DIR_S\(2)) # (!\U1|INC_DIR_S\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(0),
	datab => \U1|INC_DIR_S\(1),
	datac => \U1|INC_DIR_S\(2),
	datad => \U1|INC_DIR_S\(3),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X37_Y17_N12
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (!\U1|INC_DIR_S\(5) & (!\U1|INC_DIR_S\(4) & \Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|INC_DIR_S\(5),
	datac => \U1|INC_DIR_S\(4),
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X37_Y17_N8
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\U1|INC_DIR_S\(4) & (\U1|INC_DIR_S\(1) & (!\U1|INC_DIR_S\(0) & !\U1|INC_DIR_S\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(4),
	datab => \U1|INC_DIR_S\(1),
	datac => \U1|INC_DIR_S\(0),
	datad => \U1|INC_DIR_S\(5),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X37_Y17_N30
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\U1|INC_DIR_S\(2) & (\Mux1~0_combout\ & !\U1|INC_DIR_S\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|INC_DIR_S\(2),
	datac => \Mux1~0_combout\,
	datad => \U1|INC_DIR_S\(3),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X37_Y17_N28
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\U1|INC_DIR_S\(3) & ((\U1|INC_DIR_S\(0) & (!\U1|INC_DIR_S\(1) & !\U1|INC_DIR_S\(2))) # (!\U1|INC_DIR_S\(0) & (\U1|INC_DIR_S\(1) & \U1|INC_DIR_S\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(0),
	datab => \U1|INC_DIR_S\(1),
	datac => \U1|INC_DIR_S\(2),
	datad => \U1|INC_DIR_S\(3),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X38_Y17_N30
\U1|Equal18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal18~0_combout\ = (!\U1|INC_DIR_S\(4) & (!\U1|INC_DIR_S\(5) & (!\Mux0~0_combout\ & \Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(4),
	datab => \U1|INC_DIR_S\(5),
	datac => \Mux0~0_combout\,
	datad => \Mux3~0_combout\,
	combout => \U1|Equal18~0_combout\);

-- Location: LCCOMB_X37_Y17_N4
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\U1|INC_DIR_S\(3) & ((\U1|INC_DIR_S\(0) & (!\U1|INC_DIR_S\(1))) # (!\U1|INC_DIR_S\(0) & ((\U1|INC_DIR_S\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(0),
	datab => \U1|INC_DIR_S\(1),
	datac => \U1|INC_DIR_S\(2),
	datad => \U1|INC_DIR_S\(3),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X37_Y17_N2
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (!\U1|INC_DIR_S\(4) & (\Mux5~0_combout\ & !\U1|INC_DIR_S\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(4),
	datac => \Mux5~0_combout\,
	datad => \U1|INC_DIR_S\(5),
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X38_Y17_N24
\U1|Equal18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal18~1_combout\ = (\Mux4~1_combout\ & (\Mux1~1_combout\ & (\U1|Equal18~0_combout\ & \Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \U1|Equal18~0_combout\,
	datad => \Mux5~1_combout\,
	combout => \U1|Equal18~1_combout\);

-- Location: LCCOMB_X37_Y17_N26
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\U1|INC_DIR_S\(3) & ((\U1|INC_DIR_S\(0) & (!\U1|INC_DIR_S\(2) & !\U1|INC_DIR_S\(1))) # (!\U1|INC_DIR_S\(0) & ((\U1|INC_DIR_S\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(0),
	datab => \U1|INC_DIR_S\(2),
	datac => \U1|INC_DIR_S\(3),
	datad => \U1|INC_DIR_S\(1),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X38_Y17_N14
\Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (!\U1|INC_DIR_S\(4) & (\Mux7~0_combout\ & !\U1|INC_DIR_S\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(4),
	datac => \Mux7~0_combout\,
	datad => \U1|INC_DIR_S\(5),
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X37_Y18_N20
\U1|Selector37~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector37~2_combout\ = (\U1|Equal18~1_combout\ & (!\Mux8~1_combout\ & (!\U1|Selector9~0_combout\ & \Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal18~1_combout\,
	datab => \Mux8~1_combout\,
	datac => \U1|Selector9~0_combout\,
	datad => \Mux7~1_combout\,
	combout => \U1|Selector37~2_combout\);

-- Location: LCCOMB_X37_Y18_N10
\U1|Selector37~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector37~3_combout\ = (\U1|Selector37~2_combout\) # ((\U1|ESTADO.LIMPIAR_PANTALLA~q\ & ((\U1|Selector37~1_combout\) # (!\U1|Equal21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal21~4_combout\,
	datab => \U1|Selector37~2_combout\,
	datac => \U1|ESTADO.LIMPIAR_PANTALLA~q\,
	datad => \U1|Selector37~1_combout\,
	combout => \U1|Selector37~3_combout\);

-- Location: FF_X37_Y18_N11
\U1|ESTADO.LIMPIAR_PANTALLA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U1|Selector37~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.LIMPIAR_PANTALLA~q\);

-- Location: LCCOMB_X37_Y18_N16
\U1|process_0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~15_combout\ = (\U1|INC_DIR_S\(4)) # ((\U1|INC_DIR_S\(5)) # (\U1|INC_DIR_S\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|INC_DIR_S\(4),
	datac => \U1|INC_DIR_S\(5),
	datad => \U1|INC_DIR_S\(3),
	combout => \U1|process_0~15_combout\);

-- Location: LCCOMB_X37_Y18_N22
\U1|process_0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~38_combout\ = (\U1|INC_DIR_S\(0)) # ((\U1|INC_DIR_S\(2)) # ((\U1|INC_DIR_S\(1)) # (\U1|process_0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(0),
	datab => \U1|INC_DIR_S\(2),
	datac => \U1|INC_DIR_S\(1),
	datad => \U1|process_0~15_combout\,
	combout => \U1|process_0~38_combout\);

-- Location: LCCOMB_X38_Y16_N2
\U1|Selector9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector9~1_combout\ = (\U1|ESTADO.INI_LCD~q\ & (((!\U1|process_0~38_combout\ & !\U1|Selector9~0_combout\)) # (!\U1|Equal21~4_combout\))) # (!\U1|ESTADO.INI_LCD~q\ & (!\U1|process_0~38_combout\ & (!\U1|Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.INI_LCD~q\,
	datab => \U1|process_0~38_combout\,
	datac => \U1|Selector9~0_combout\,
	datad => \U1|Equal21~4_combout\,
	combout => \U1|Selector9~1_combout\);

-- Location: LCCOMB_X38_Y16_N10
\U1|Selector9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector9~2_combout\ = (\U1|Selector9~1_combout\) # ((\U1|ESTADO.INI_LCD~q\ & \U1|Selector37~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Selector9~1_combout\,
	datac => \U1|ESTADO.INI_LCD~q\,
	datad => \U1|Selector37~1_combout\,
	combout => \U1|Selector9~2_combout\);

-- Location: FF_X38_Y16_N11
\U1|ESTADO.INI_LCD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.INI_LCD~q\);

-- Location: LCCOMB_X37_Y18_N8
\U1|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector13~0_combout\ = (\U1|Equal21~4_combout\ & ((\U1|ESTADO.INI_LCD~q\) # ((\U1|ESTADO.CLEAR_DISPLAY~q\ & \U1|Selector34~0_combout\)))) # (!\U1|Equal21~4_combout\ & (((\U1|ESTADO.CLEAR_DISPLAY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal21~4_combout\,
	datab => \U1|ESTADO.INI_LCD~q\,
	datac => \U1|ESTADO.CLEAR_DISPLAY~q\,
	datad => \U1|Selector34~0_combout\,
	combout => \U1|Selector13~0_combout\);

-- Location: FF_X37_Y18_N9
\U1|ESTADO.CLEAR_DISPLAY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.CLEAR_DISPLAY~q\);

-- Location: LCCOMB_X37_Y18_N18
\U1|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector11~0_combout\ = (\U1|Equal21~4_combout\ & ((\U1|ESTADO.CLEAR_DISPLAY~q\) # ((\U1|ESTADO.CURSOR_HOME~q\ & \U1|Selector34~0_combout\)))) # (!\U1|Equal21~4_combout\ & (((\U1|ESTADO.CURSOR_HOME~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal21~4_combout\,
	datab => \U1|ESTADO.CLEAR_DISPLAY~q\,
	datac => \U1|ESTADO.CURSOR_HOME~q\,
	datad => \U1|Selector34~0_combout\,
	combout => \U1|Selector11~0_combout\);

-- Location: FF_X37_Y18_N19
\U1|ESTADO.CURSOR_HOME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U1|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.CURSOR_HOME~q\);

-- Location: LCCOMB_X38_Y17_N0
\U1|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector10~0_combout\ = (\U1|Equal21~4_combout\ & ((\U1|ESTADO.CURSOR_HOME~q\) # ((\U1|ESTADO.CURSOR_LCD~q\ & \U1|Selector34~0_combout\)))) # (!\U1|Equal21~4_combout\ & (((\U1|ESTADO.CURSOR_LCD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CURSOR_HOME~q\,
	datab => \U1|Equal21~4_combout\,
	datac => \U1|ESTADO.CURSOR_LCD~q\,
	datad => \U1|Selector34~0_combout\,
	combout => \U1|Selector10~0_combout\);

-- Location: FF_X38_Y17_N1
\U1|ESTADO.CURSOR_LCD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U1|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.CURSOR_LCD~q\);

-- Location: LCCOMB_X38_Y18_N30
\U1|Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector31~0_combout\ = (\U1|Equal21~4_combout\ & ((\U1|ESTADO.CREAR_CHAR4~q\) # ((\U1|ESTADO.CREAR_CHAR5~q\ & \U1|Selector34~0_combout\)))) # (!\U1|Equal21~4_combout\ & (((\U1|ESTADO.CREAR_CHAR5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CREAR_CHAR4~q\,
	datab => \U1|Equal21~4_combout\,
	datac => \U1|ESTADO.CREAR_CHAR5~q\,
	datad => \U1|Selector34~0_combout\,
	combout => \U1|Selector31~0_combout\);

-- Location: FF_X38_Y18_N31
\U1|ESTADO.CREAR_CHAR5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.CREAR_CHAR5~q\);

-- Location: LCCOMB_X38_Y18_N18
\U1|Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector32~0_combout\ = (\U1|Equal21~4_combout\ & ((\U1|ESTADO.CREAR_CHAR5~q\) # ((\U1|ESTADO.CREAR_CHAR6~q\ & \U1|Selector34~0_combout\)))) # (!\U1|Equal21~4_combout\ & (((\U1|ESTADO.CREAR_CHAR6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CREAR_CHAR5~q\,
	datab => \U1|Equal21~4_combout\,
	datac => \U1|ESTADO.CREAR_CHAR6~q\,
	datad => \U1|Selector34~0_combout\,
	combout => \U1|Selector32~0_combout\);

-- Location: FF_X38_Y18_N19
\U1|ESTADO.CREAR_CHAR6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.CREAR_CHAR6~q\);

-- Location: LCCOMB_X38_Y18_N4
\U1|Selector33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector33~0_combout\ = (\U1|Equal21~4_combout\ & ((\U1|ESTADO.CREAR_CHAR6~q\) # ((\U1|ESTADO.CREAR_CHAR7~q\ & \U1|Selector34~0_combout\)))) # (!\U1|Equal21~4_combout\ & (((\U1|ESTADO.CREAR_CHAR7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CREAR_CHAR6~q\,
	datab => \U1|Equal21~4_combout\,
	datac => \U1|ESTADO.CREAR_CHAR7~q\,
	datad => \U1|Selector34~0_combout\,
	combout => \U1|Selector33~0_combout\);

-- Location: FF_X38_Y18_N5
\U1|ESTADO.CREAR_CHAR7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.CREAR_CHAR7~q\);

-- Location: LCCOMB_X38_Y18_N6
\U1|Selector34~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector34~1_combout\ = (\U1|Equal21~4_combout\ & ((\U1|ESTADO.CREAR_CHAR7~q\) # ((\U1|ESTADO.CREAR_CHAR8~q\ & \U1|Selector34~0_combout\)))) # (!\U1|Equal21~4_combout\ & (((\U1|ESTADO.CREAR_CHAR8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CREAR_CHAR7~q\,
	datab => \U1|Equal21~4_combout\,
	datac => \U1|ESTADO.CREAR_CHAR8~q\,
	datad => \U1|Selector34~0_combout\,
	combout => \U1|Selector34~1_combout\);

-- Location: FF_X38_Y18_N7
\U1|ESTADO.CREAR_CHAR8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector34~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.CREAR_CHAR8~q\);

-- Location: LCCOMB_X37_Y18_N2
\U1|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector12~0_combout\ = (\U1|Equal21~4_combout\ & ((\U1|ESTADO.CREAR_CHAR8~q\) # ((\U1|ESTADO.CURSOR_HOME2~q\ & \U1|Selector34~0_combout\)))) # (!\U1|Equal21~4_combout\ & (((\U1|ESTADO.CURSOR_HOME2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal21~4_combout\,
	datab => \U1|ESTADO.CREAR_CHAR8~q\,
	datac => \U1|ESTADO.CURSOR_HOME2~q\,
	datad => \U1|Selector34~0_combout\,
	combout => \U1|Selector12~0_combout\);

-- Location: FF_X37_Y18_N3
\U1|ESTADO.CURSOR_HOME2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.CURSOR_HOME2~q\);

-- Location: LCCOMB_X38_Y17_N26
\U1|Selector39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector39~0_combout\ = (\Mux8~1_combout\ & (\U1|Equal18~1_combout\ & (!\Mux7~1_combout\ & !\U1|Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \U1|Equal18~1_combout\,
	datac => \Mux7~1_combout\,
	datad => \U1|Selector9~0_combout\,
	combout => \U1|Selector39~0_combout\);

-- Location: LCCOMB_X38_Y17_N8
\U1|Selector39~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector39~1_combout\ = (\U1|Selector39~0_combout\) # ((\U1|ESTADO.NADA~q\ & ((\U1|Selector37~1_combout\) # (!\U1|Equal21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector39~0_combout\,
	datab => \U1|Equal21~4_combout\,
	datac => \U1|ESTADO.NADA~q\,
	datad => \U1|Selector37~1_combout\,
	combout => \U1|Selector39~1_combout\);

-- Location: FF_X38_Y17_N9
\U1|ESTADO.NADA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U1|Selector39~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.NADA~q\);

-- Location: LCCOMB_X39_Y18_N8
\U1|WideOr38~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|WideOr38~1_combout\ = (!\U1|ESTADO.LIMPIAR_PANTALLA~q\ & (!\U1|ESTADO.CURSOR_LCD~q\ & (!\U1|ESTADO.CURSOR_HOME2~q\ & !\U1|ESTADO.NADA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.LIMPIAR_PANTALLA~q\,
	datab => \U1|ESTADO.CURSOR_LCD~q\,
	datac => \U1|ESTADO.CURSOR_HOME2~q\,
	datad => \U1|ESTADO.NADA~q\,
	combout => \U1|WideOr38~1_combout\);

-- Location: LCCOMB_X37_Y16_N8
\U1|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector19~0_combout\ = (\U1|Selector9~0_combout\ & (\U1|ESTADO.CHAR_ASCII~q\ & ((!\U1|Equal21~4_combout\)))) # (!\U1|Selector9~0_combout\ & ((\U1|process_0~33_combout\) # ((\U1|ESTADO.CHAR_ASCII~q\ & !\U1|Equal21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector9~0_combout\,
	datab => \U1|ESTADO.CHAR_ASCII~q\,
	datac => \U1|process_0~33_combout\,
	datad => \U1|Equal21~4_combout\,
	combout => \U1|Selector19~0_combout\);

-- Location: LCCOMB_X37_Y16_N28
\U1|Selector19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector19~1_combout\ = (\U1|Selector19~0_combout\) # ((\U1|ESTADO.CHAR_ASCII~q\ & \U1|Selector37~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Selector19~0_combout\,
	datac => \U1|ESTADO.CHAR_ASCII~q\,
	datad => \U1|Selector37~1_combout\,
	combout => \U1|Selector19~1_combout\);

-- Location: FF_X37_Y16_N29
\U1|ESTADO.CHAR_ASCII\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.CHAR_ASCII~q\);

-- Location: LCCOMB_X39_Y17_N8
\U1|WideOr38~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|WideOr38~2_combout\ = (!\U1|ESTADO.CHAR_ASCII~q\ & !\U1|ESTADO.BUCLE_INI~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ESTADO.CHAR_ASCII~q\,
	datad => \U1|ESTADO.BUCLE_INI~q\,
	combout => \U1|WideOr38~2_combout\);

-- Location: LCCOMB_X39_Y17_N4
\U1|WideOr38~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|WideOr38~3_combout\ = (!\U1|ESTADO.ESCRIBIR_LCD~q\ & (\U1|WideOr38~1_combout\ & (!\U1|ESTADO.BUCLE_FIN~q\ & \U1|WideOr38~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.ESCRIBIR_LCD~q\,
	datab => \U1|WideOr38~1_combout\,
	datac => \U1|ESTADO.BUCLE_FIN~q\,
	datad => \U1|WideOr38~2_combout\,
	combout => \U1|WideOr38~3_combout\);

-- Location: LCCOMB_X39_Y17_N20
\U1|INC_DIR_S[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|INC_DIR_S[8]~16_combout\ = (!\U1|WideOr38~3_combout\ & \U1|Equal21~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|WideOr38~3_combout\,
	datad => \U1|Equal21~4_combout\,
	combout => \U1|INC_DIR_S[8]~16_combout\);

-- Location: FF_X37_Y17_N19
\U1|INC_DIR_S[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|INC_DIR_S[2]~10_combout\,
	asdata => \U1|DIR_BI\(2),
	sload => \U1|ESTADO.BUCLE_FIN~q\,
	ena => \U1|INC_DIR_S[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|INC_DIR_S\(2));

-- Location: LCCOMB_X37_Y17_N20
\U1|INC_DIR_S[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|INC_DIR_S[3]~12_combout\ = (\U1|INC_DIR_S\(3) & (!\U1|INC_DIR_S[2]~11\)) # (!\U1|INC_DIR_S\(3) & ((\U1|INC_DIR_S[2]~11\) # (GND)))
-- \U1|INC_DIR_S[3]~13\ = CARRY((!\U1|INC_DIR_S[2]~11\) # (!\U1|INC_DIR_S\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|INC_DIR_S\(3),
	datad => VCC,
	cin => \U1|INC_DIR_S[2]~11\,
	combout => \U1|INC_DIR_S[3]~12_combout\,
	cout => \U1|INC_DIR_S[3]~13\);

-- Location: LCCOMB_X35_Y18_N20
\U1|DIR_BI[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DIR_BI[3]~feeder_combout\ = \U1|INC_DIR_S\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|INC_DIR_S\(3),
	combout => \U1|DIR_BI[3]~feeder_combout\);

-- Location: FF_X35_Y18_N21
\U1|DIR_BI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|DIR_BI[3]~feeder_combout\,
	ena => \U1|ESTADO.BUCLE_INI~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|DIR_BI\(3));

-- Location: FF_X37_Y17_N21
\U1|INC_DIR_S[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|INC_DIR_S[3]~12_combout\,
	asdata => \U1|DIR_BI\(3),
	sload => \U1|ESTADO.BUCLE_FIN~q\,
	ena => \U1|INC_DIR_S[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|INC_DIR_S\(3));

-- Location: FF_X37_Y18_N25
\U1|DIR_BI[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U1|INC_DIR_S\(4),
	sload => VCC,
	ena => \U1|ESTADO.BUCLE_INI~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|DIR_BI\(4));

-- Location: FF_X37_Y17_N23
\U1|INC_DIR_S[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|INC_DIR_S[4]~14_combout\,
	asdata => \U1|DIR_BI\(4),
	sload => \U1|ESTADO.BUCLE_FIN~q\,
	ena => \U1|INC_DIR_S[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|INC_DIR_S\(4));

-- Location: LCCOMB_X37_Y17_N0
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\U1|INC_DIR_S\(3)) # ((\U1|INC_DIR_S\(0) & ((\U1|INC_DIR_S\(1)) # (!\U1|INC_DIR_S\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(1),
	datab => \U1|INC_DIR_S\(2),
	datac => \U1|INC_DIR_S\(0),
	datad => \U1|INC_DIR_S\(3),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X38_Y17_N6
\Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (!\U1|INC_DIR_S\(4) & (!\U1|INC_DIR_S\(5) & !\Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(4),
	datab => \U1|INC_DIR_S\(5),
	datac => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X40_Y17_N18
\U1|ESTADO~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|ESTADO~68_combout\ = (\CORI~input_o\ & \CORD~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CORI~input_o\,
	datac => \CORD~input_o\,
	combout => \U1|ESTADO~68_combout\);

-- Location: LCCOMB_X38_Y17_N4
\U1|ESTADO~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|ESTADO~69_combout\ = (\U1|ESTADO~68_combout\ & (((!\U1|Equal18~1_combout\) # (!\Mux7~1_combout\)) # (!\Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \U1|ESTADO~68_combout\,
	datac => \Mux7~1_combout\,
	datad => \U1|Equal18~1_combout\,
	combout => \U1|ESTADO~69_combout\);

-- Location: LCCOMB_X40_Y17_N22
\U1|Selector37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector37~0_combout\ = (\U1|ESTADO.FIN~q\) # ((\CORD~input_o\ & (\CORI~input_o\ & !\U1|ESTADO.CHECAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CORD~input_o\,
	datab => \CORI~input_o\,
	datac => \U1|ESTADO.CHECAR~q\,
	datad => \U1|ESTADO.FIN~q\,
	combout => \U1|Selector37~0_combout\);

-- Location: LCCOMB_X38_Y17_N18
\U1|Selector37~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector37~1_combout\ = (\U1|ESTADO~69_combout\ & (\U1|Selector37~0_combout\ & \U1|Selector22~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ESTADO~69_combout\,
	datac => \U1|Selector37~0_combout\,
	datad => \U1|Selector22~1_combout\,
	combout => \U1|Selector37~1_combout\);

-- Location: LCCOMB_X39_Y17_N10
\U1|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector21~0_combout\ = (\U1|ESTADO.BUCLE_FIN~q\ & ((\U1|Selector37~1_combout\) # (!\U1|Equal21~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal21~4_combout\,
	datac => \U1|ESTADO.BUCLE_FIN~q\,
	datad => \U1|Selector37~1_combout\,
	combout => \U1|Selector21~0_combout\);

-- Location: FF_X39_Y17_N9
\U1|ESTADO.BUCLE_FIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U1|Selector21~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.BUCLE_FIN~q\);

-- Location: LCCOMB_X39_Y17_N14
\U1|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector20~0_combout\ = (\U1|Equal21~4_combout\ & ((\U1|ESTADO.BUCLE_FIN~q\) # ((\U1|ESTADO.BUCLE_INI~q\ & \U1|Selector37~1_combout\)))) # (!\U1|Equal21~4_combout\ & (((\U1|ESTADO.BUCLE_INI~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.BUCLE_FIN~q\,
	datab => \U1|Equal21~4_combout\,
	datac => \U1|ESTADO.BUCLE_INI~q\,
	datad => \U1|Selector37~1_combout\,
	combout => \U1|Selector20~0_combout\);

-- Location: FF_X39_Y17_N15
\U1|ESTADO.BUCLE_INI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U1|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.BUCLE_INI~q\);

-- Location: FF_X35_Y17_N7
\U1|DIR_BI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|DIR_BI[0]~feeder_combout\,
	ena => \U1|ESTADO.BUCLE_INI~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|DIR_BI\(0));

-- Location: FF_X37_Y17_N15
\U1|INC_DIR_S[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|INC_DIR_S[0]~6_combout\,
	asdata => \U1|DIR_BI\(0),
	sload => \U1|ESTADO.BUCLE_FIN~q\,
	ena => \U1|INC_DIR_S[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|INC_DIR_S\(0));

-- Location: FF_X37_Y18_N15
\U1|DIR_BI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U1|INC_DIR_S\(1),
	sload => VCC,
	ena => \U1|ESTADO.BUCLE_INI~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|DIR_BI\(1));

-- Location: FF_X37_Y17_N17
\U1|INC_DIR_S[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|INC_DIR_S[1]~8_combout\,
	asdata => \U1|DIR_BI\(1),
	sload => \U1|ESTADO.BUCLE_FIN~q\,
	ena => \U1|INC_DIR_S[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|INC_DIR_S\(1));

-- Location: LCCOMB_X37_Y17_N6
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\U1|INC_DIR_S\(3)) # ((\U1|INC_DIR_S\(1) & (\U1|INC_DIR_S\(0) & \U1|INC_DIR_S\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(1),
	datab => \U1|INC_DIR_S\(3),
	datac => \U1|INC_DIR_S\(0),
	datad => \U1|INC_DIR_S\(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X38_Y17_N2
\U1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan0~0_combout\ = (\Mux8~0_combout\ & !\Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux8~0_combout\,
	datad => \Mux7~0_combout\,
	combout => \U1|LessThan0~0_combout\);

-- Location: LCCOMB_X38_Y17_N22
\U1|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan5~0_combout\ = (\Mux4~0_combout\) # ((\Mux3~0_combout\) # ((\Mux5~0_combout\) # (!\U1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \U1|LessThan0~0_combout\,
	combout => \U1|LessThan5~0_combout\);

-- Location: LCCOMB_X37_Y16_N14
\Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (!\U1|INC_DIR_S\(4) & !\U1|INC_DIR_S\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|INC_DIR_S\(4),
	datad => \U1|INC_DIR_S\(5),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X38_Y17_N12
\U1|process_0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~33_combout\ = (\Mux1~2_combout\ & (\Mux0~0_combout\ & ((\Mux1~1_combout\) # (\U1|LessThan5~0_combout\)))) # (!\Mux1~2_combout\ & (((\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux1~1_combout\,
	datac => \U1|LessThan5~0_combout\,
	datad => \Mux1~2_combout\,
	combout => \U1|process_0~33_combout\);

-- Location: LCCOMB_X38_Y17_N20
\U1|Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector22~0_combout\ = (\Mux8~1_combout\ $ (!\Mux7~1_combout\)) # (!\U1|Equal18~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datac => \Mux7~1_combout\,
	datad => \U1|Equal18~1_combout\,
	combout => \U1|Selector22~0_combout\);

-- Location: LCCOMB_X38_Y17_N16
\U1|Selector22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector22~1_combout\ = (!\U1|process_0~33_combout\ & (!\U1|process_0~39_combout\ & (\U1|process_0~38_combout\ & \U1|Selector22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~33_combout\,
	datab => \U1|process_0~39_combout\,
	datac => \U1|process_0~38_combout\,
	datad => \U1|Selector22~0_combout\,
	combout => \U1|Selector22~1_combout\);

-- Location: LCCOMB_X39_Y17_N24
\U1|Selector40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector40~0_combout\ = (\U1|ESTADO~69_combout\ & (((\U1|ESTADO.FIN~q\)))) # (!\U1|ESTADO~69_combout\ & (\U1|ESTADO~68_combout\ & ((\U1|ESTADO.FIN~q\) # (!\U1|ESTADO.CHECAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CHECAR~q\,
	datab => \U1|ESTADO~68_combout\,
	datac => \U1|ESTADO.FIN~q\,
	datad => \U1|ESTADO~69_combout\,
	combout => \U1|Selector40~0_combout\);

-- Location: LCCOMB_X38_Y17_N28
\U1|Selector40~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector40~1_combout\ = (\U1|Selector22~1_combout\ & \U1|Selector40~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Selector22~1_combout\,
	datad => \U1|Selector40~0_combout\,
	combout => \U1|Selector40~1_combout\);

-- Location: FF_X38_Y17_N29
\U1|ESTADO.FIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U1|Selector40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.FIN~q\);

-- Location: LCCOMB_X40_Y17_N28
\U1|WideOr36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|WideOr36~0_combout\ = (!\U1|ESTADO.FIN~q\ & (!\U1|ESTADO.CORRIMIENTO_DERECHA~q\ & (\U1|ESTADO.CHECAR~q\ & !\U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.FIN~q\,
	datab => \U1|ESTADO.CORRIMIENTO_DERECHA~q\,
	datac => \U1|ESTADO.CHECAR~q\,
	datad => \U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\,
	combout => \U1|WideOr36~0_combout\);

-- Location: FF_X40_Y16_N1
\U1|CONTA_DELAY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add0~0_combout\,
	ena => \U1|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(0));

-- Location: LCCOMB_X40_Y16_N2
\U1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = (\U1|CONTA_DELAY\(1) & (!\U1|Add0~1\)) # (!\U1|CONTA_DELAY\(1) & ((\U1|Add0~1\) # (GND)))
-- \U1|Add0~3\ = CARRY((!\U1|Add0~1\) # (!\U1|CONTA_DELAY\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY\(1),
	datad => VCC,
	cin => \U1|Add0~1\,
	combout => \U1|Add0~2_combout\,
	cout => \U1|Add0~3\);

-- Location: FF_X40_Y16_N3
\U1|CONTA_DELAY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add0~2_combout\,
	ena => \U1|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(1));

-- Location: LCCOMB_X40_Y16_N4
\U1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~4_combout\ = (\U1|CONTA_DELAY\(2) & (\U1|Add0~3\ $ (GND))) # (!\U1|CONTA_DELAY\(2) & (!\U1|Add0~3\ & VCC))
-- \U1|Add0~5\ = CARRY((\U1|CONTA_DELAY\(2) & !\U1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY\(2),
	datad => VCC,
	cin => \U1|Add0~3\,
	combout => \U1|Add0~4_combout\,
	cout => \U1|Add0~5\);

-- Location: FF_X40_Y16_N5
\U1|CONTA_DELAY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add0~4_combout\,
	ena => \U1|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(2));

-- Location: LCCOMB_X40_Y16_N6
\U1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~6_combout\ = (\U1|CONTA_DELAY\(3) & (!\U1|Add0~5\)) # (!\U1|CONTA_DELAY\(3) & ((\U1|Add0~5\) # (GND)))
-- \U1|Add0~7\ = CARRY((!\U1|Add0~5\) # (!\U1|CONTA_DELAY\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(3),
	datad => VCC,
	cin => \U1|Add0~5\,
	combout => \U1|Add0~6_combout\,
	cout => \U1|Add0~7\);

-- Location: FF_X40_Y16_N7
\U1|CONTA_DELAY[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add0~6_combout\,
	ena => \U1|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(3));

-- Location: LCCOMB_X40_Y16_N8
\U1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~8_combout\ = (\U1|CONTA_DELAY\(4) & (\U1|Add0~7\ $ (GND))) # (!\U1|CONTA_DELAY\(4) & (!\U1|Add0~7\ & VCC))
-- \U1|Add0~9\ = CARRY((\U1|CONTA_DELAY\(4) & !\U1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(4),
	datad => VCC,
	cin => \U1|Add0~7\,
	combout => \U1|Add0~8_combout\,
	cout => \U1|Add0~9\);

-- Location: LCCOMB_X39_Y16_N16
\U1|Selector53~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector53~0_combout\ = (!\U1|Equal21~4_combout\ & \U1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal21~4_combout\,
	datac => \U1|Add0~8_combout\,
	combout => \U1|Selector53~0_combout\);

-- Location: FF_X39_Y16_N17
\U1|CONTA_DELAY[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector53~0_combout\,
	ena => \U1|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(4));

-- Location: LCCOMB_X40_Y16_N10
\U1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~10_combout\ = (\U1|CONTA_DELAY\(5) & (!\U1|Add0~9\)) # (!\U1|CONTA_DELAY\(5) & ((\U1|Add0~9\) # (GND)))
-- \U1|Add0~11\ = CARRY((!\U1|Add0~9\) # (!\U1|CONTA_DELAY\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(5),
	datad => VCC,
	cin => \U1|Add0~9\,
	combout => \U1|Add0~10_combout\,
	cout => \U1|Add0~11\);

-- Location: FF_X40_Y16_N11
\U1|CONTA_DELAY[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add0~10_combout\,
	ena => \U1|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(5));

-- Location: LCCOMB_X40_Y16_N12
\U1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~12_combout\ = (\U1|CONTA_DELAY\(6) & (\U1|Add0~11\ $ (GND))) # (!\U1|CONTA_DELAY\(6) & (!\U1|Add0~11\ & VCC))
-- \U1|Add0~13\ = CARRY((\U1|CONTA_DELAY\(6) & !\U1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY\(6),
	datad => VCC,
	cin => \U1|Add0~11\,
	combout => \U1|Add0~12_combout\,
	cout => \U1|Add0~13\);

-- Location: LCCOMB_X39_Y16_N30
\U1|Selector51~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector51~0_combout\ = (!\U1|Equal21~4_combout\ & \U1|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal21~4_combout\,
	datac => \U1|Add0~12_combout\,
	combout => \U1|Selector51~0_combout\);

-- Location: FF_X39_Y16_N31
\U1|CONTA_DELAY[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector51~0_combout\,
	ena => \U1|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(6));

-- Location: LCCOMB_X40_Y16_N14
\U1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~14_combout\ = (\U1|CONTA_DELAY\(7) & (!\U1|Add0~13\)) # (!\U1|CONTA_DELAY\(7) & ((\U1|Add0~13\) # (GND)))
-- \U1|Add0~15\ = CARRY((!\U1|Add0~13\) # (!\U1|CONTA_DELAY\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY\(7),
	datad => VCC,
	cin => \U1|Add0~13\,
	combout => \U1|Add0~14_combout\,
	cout => \U1|Add0~15\);

-- Location: FF_X40_Y16_N15
\U1|CONTA_DELAY[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add0~14_combout\,
	ena => \U1|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(7));

-- Location: LCCOMB_X40_Y16_N16
\U1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~16_combout\ = (\U1|CONTA_DELAY\(8) & (\U1|Add0~15\ $ (GND))) # (!\U1|CONTA_DELAY\(8) & (!\U1|Add0~15\ & VCC))
-- \U1|Add0~17\ = CARRY((\U1|CONTA_DELAY\(8) & !\U1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY\(8),
	datad => VCC,
	cin => \U1|Add0~15\,
	combout => \U1|Add0~16_combout\,
	cout => \U1|Add0~17\);

-- Location: LCCOMB_X39_Y16_N0
\U1|Selector49~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector49~0_combout\ = (!\U1|Equal21~4_combout\ & \U1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal21~4_combout\,
	datad => \U1|Add0~16_combout\,
	combout => \U1|Selector49~0_combout\);

-- Location: FF_X39_Y16_N1
\U1|CONTA_DELAY[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector49~0_combout\,
	ena => \U1|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(8));

-- Location: LCCOMB_X40_Y16_N18
\U1|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~18_combout\ = (\U1|CONTA_DELAY\(9) & (!\U1|Add0~17\)) # (!\U1|CONTA_DELAY\(9) & ((\U1|Add0~17\) # (GND)))
-- \U1|Add0~19\ = CARRY((!\U1|Add0~17\) # (!\U1|CONTA_DELAY\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(9),
	datad => VCC,
	cin => \U1|Add0~17\,
	combout => \U1|Add0~18_combout\,
	cout => \U1|Add0~19\);

-- Location: LCCOMB_X39_Y16_N2
\U1|Selector48~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector48~0_combout\ = (!\U1|Equal21~4_combout\ & \U1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal21~4_combout\,
	datad => \U1|Add0~18_combout\,
	combout => \U1|Selector48~0_combout\);

-- Location: FF_X39_Y16_N3
\U1|CONTA_DELAY[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector48~0_combout\,
	ena => \U1|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(9));

-- Location: LCCOMB_X40_Y16_N20
\U1|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~20_combout\ = (\U1|CONTA_DELAY\(10) & (\U1|Add0~19\ $ (GND))) # (!\U1|CONTA_DELAY\(10) & (!\U1|Add0~19\ & VCC))
-- \U1|Add0~21\ = CARRY((\U1|CONTA_DELAY\(10) & !\U1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY\(10),
	datad => VCC,
	cin => \U1|Add0~19\,
	combout => \U1|Add0~20_combout\,
	cout => \U1|Add0~21\);

-- Location: FF_X40_Y16_N21
\U1|CONTA_DELAY[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add0~20_combout\,
	ena => \U1|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(10));

-- Location: LCCOMB_X40_Y16_N22
\U1|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~22_combout\ = (\U1|CONTA_DELAY\(11) & (!\U1|Add0~21\)) # (!\U1|CONTA_DELAY\(11) & ((\U1|Add0~21\) # (GND)))
-- \U1|Add0~23\ = CARRY((!\U1|Add0~21\) # (!\U1|CONTA_DELAY\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(11),
	datad => VCC,
	cin => \U1|Add0~21\,
	combout => \U1|Add0~22_combout\,
	cout => \U1|Add0~23\);

-- Location: FF_X40_Y16_N23
\U1|CONTA_DELAY[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add0~22_combout\,
	ena => \U1|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(11));

-- Location: LCCOMB_X40_Y16_N24
\U1|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~24_combout\ = (\U1|CONTA_DELAY\(12) & (\U1|Add0~23\ $ (GND))) # (!\U1|CONTA_DELAY\(12) & (!\U1|Add0~23\ & VCC))
-- \U1|Add0~25\ = CARRY((\U1|CONTA_DELAY\(12) & !\U1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY\(12),
	datad => VCC,
	cin => \U1|Add0~23\,
	combout => \U1|Add0~24_combout\,
	cout => \U1|Add0~25\);

-- Location: FF_X40_Y16_N25
\U1|CONTA_DELAY[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add0~24_combout\,
	ena => \U1|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(12));

-- Location: LCCOMB_X40_Y16_N26
\U1|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~26_combout\ = (\U1|CONTA_DELAY\(13) & (!\U1|Add0~25\)) # (!\U1|CONTA_DELAY\(13) & ((\U1|Add0~25\) # (GND)))
-- \U1|Add0~27\ = CARRY((!\U1|Add0~25\) # (!\U1|CONTA_DELAY\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(13),
	datad => VCC,
	cin => \U1|Add0~25\,
	combout => \U1|Add0~26_combout\,
	cout => \U1|Add0~27\);

-- Location: FF_X40_Y16_N27
\U1|CONTA_DELAY[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add0~26_combout\,
	ena => \U1|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(13));

-- Location: LCCOMB_X40_Y16_N28
\U1|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~28_combout\ = (\U1|CONTA_DELAY\(14) & (\U1|Add0~27\ $ (GND))) # (!\U1|CONTA_DELAY\(14) & (!\U1|Add0~27\ & VCC))
-- \U1|Add0~29\ = CARRY((\U1|CONTA_DELAY\(14) & !\U1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY\(14),
	datad => VCC,
	cin => \U1|Add0~27\,
	combout => \U1|Add0~28_combout\,
	cout => \U1|Add0~29\);

-- Location: LCCOMB_X39_Y16_N6
\U1|Selector43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector43~0_combout\ = (!\U1|Equal21~4_combout\ & \U1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal21~4_combout\,
	datad => \U1|Add0~28_combout\,
	combout => \U1|Selector43~0_combout\);

-- Location: FF_X39_Y16_N7
\U1|CONTA_DELAY[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector43~0_combout\,
	ena => \U1|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(14));

-- Location: LCCOMB_X39_Y17_N26
\U1|Equal21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal21~1_combout\ = (\U1|CONTA_DELAY\(0) & (\U1|CONTA_DELAY\(3) & (\U1|CONTA_DELAY\(1) & \U1|CONTA_DELAY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(0),
	datab => \U1|CONTA_DELAY\(3),
	datac => \U1|CONTA_DELAY\(1),
	datad => \U1|CONTA_DELAY\(2),
	combout => \U1|Equal21~1_combout\);

-- Location: LCCOMB_X40_Y16_N30
\U1|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~30_combout\ = \U1|Add0~29\ $ (\U1|CONTA_DELAY\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|CONTA_DELAY\(15),
	cin => \U1|Add0~29\,
	combout => \U1|Add0~30_combout\);

-- Location: LCCOMB_X39_Y16_N18
\U1|Selector42~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector42~0_combout\ = (!\U1|Equal21~4_combout\ & \U1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal21~4_combout\,
	datad => \U1|Add0~30_combout\,
	combout => \U1|Selector42~0_combout\);

-- Location: FF_X39_Y16_N19
\U1|CONTA_DELAY[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector42~0_combout\,
	ena => \U1|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(15));

-- Location: LCCOMB_X39_Y16_N22
\U1|Equal21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal21~2_combout\ = (\U1|CONTA_DELAY\(6) & (!\U1|CONTA_DELAY\(5) & (!\U1|CONTA_DELAY\(7) & !\U1|CONTA_DELAY\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(6),
	datab => \U1|CONTA_DELAY\(5),
	datac => \U1|CONTA_DELAY\(7),
	datad => \U1|CONTA_DELAY\(4),
	combout => \U1|Equal21~2_combout\);

-- Location: LCCOMB_X39_Y16_N26
\U1|Equal21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal21~0_combout\ = (!\U1|CONTA_DELAY\(10) & (!\U1|CONTA_DELAY\(11) & (!\U1|CONTA_DELAY\(12) & !\U1|CONTA_DELAY\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(10),
	datab => \U1|CONTA_DELAY\(11),
	datac => \U1|CONTA_DELAY\(12),
	datad => \U1|CONTA_DELAY\(13),
	combout => \U1|Equal21~0_combout\);

-- Location: LCCOMB_X39_Y17_N2
\U1|Equal21~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal21~3_combout\ = (\U1|Equal21~1_combout\ & (\U1|CONTA_DELAY\(15) & (\U1|Equal21~2_combout\ & \U1|Equal21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal21~1_combout\,
	datab => \U1|CONTA_DELAY\(15),
	datac => \U1|Equal21~2_combout\,
	datad => \U1|Equal21~0_combout\,
	combout => \U1|Equal21~3_combout\);

-- Location: LCCOMB_X39_Y17_N28
\U1|Equal21~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal21~4_combout\ = (\U1|CONTA_DELAY\(8) & (\U1|CONTA_DELAY\(9) & (\U1|CONTA_DELAY\(14) & \U1|Equal21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(8),
	datab => \U1|CONTA_DELAY\(9),
	datac => \U1|CONTA_DELAY\(14),
	datad => \U1|Equal21~3_combout\,
	combout => \U1|Equal21~4_combout\);

-- Location: LCCOMB_X39_Y17_N12
\U1|Selector26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector26~0_combout\ = (\U1|ESTADO.POS_RAM~q\ & ((\U1|Selector37~1_combout\) # (!\U1|Equal21~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal21~4_combout\,
	datac => \U1|ESTADO.POS_RAM~q\,
	datad => \U1|Selector37~1_combout\,
	combout => \U1|Selector26~0_combout\);

-- Location: FF_X39_Y17_N13
\U1|ESTADO.POS_RAM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.POS_RAM~q\);

-- Location: LCCOMB_X38_Y18_N20
\U1|Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector27~0_combout\ = (\U1|Equal21~4_combout\ & ((\U1|ESTADO.POS_RAM~q\) # ((\U1|ESTADO.CREAR_CHAR1~q\ & \U1|Selector34~0_combout\)))) # (!\U1|Equal21~4_combout\ & (((\U1|ESTADO.CREAR_CHAR1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.POS_RAM~q\,
	datab => \U1|Equal21~4_combout\,
	datac => \U1|ESTADO.CREAR_CHAR1~q\,
	datad => \U1|Selector34~0_combout\,
	combout => \U1|Selector27~0_combout\);

-- Location: FF_X38_Y18_N21
\U1|ESTADO.CREAR_CHAR1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.CREAR_CHAR1~q\);

-- Location: LCCOMB_X38_Y18_N16
\U1|Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector28~0_combout\ = (\U1|Equal21~4_combout\ & ((\U1|ESTADO.CREAR_CHAR1~q\) # ((\U1|ESTADO.CREAR_CHAR2~q\ & \U1|Selector34~0_combout\)))) # (!\U1|Equal21~4_combout\ & (((\U1|ESTADO.CREAR_CHAR2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CREAR_CHAR1~q\,
	datab => \U1|Equal21~4_combout\,
	datac => \U1|ESTADO.CREAR_CHAR2~q\,
	datad => \U1|Selector34~0_combout\,
	combout => \U1|Selector28~0_combout\);

-- Location: FF_X38_Y18_N17
\U1|ESTADO.CREAR_CHAR2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.CREAR_CHAR2~q\);

-- Location: LCCOMB_X38_Y18_N24
\U1|Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector29~0_combout\ = (\U1|Equal21~4_combout\ & ((\U1|ESTADO.CREAR_CHAR2~q\) # ((\U1|ESTADO.CREAR_CHAR3~q\ & \U1|Selector34~0_combout\)))) # (!\U1|Equal21~4_combout\ & (((\U1|ESTADO.CREAR_CHAR3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CREAR_CHAR2~q\,
	datab => \U1|Equal21~4_combout\,
	datac => \U1|ESTADO.CREAR_CHAR3~q\,
	datad => \U1|Selector34~0_combout\,
	combout => \U1|Selector29~0_combout\);

-- Location: FF_X38_Y18_N25
\U1|ESTADO.CREAR_CHAR3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.CREAR_CHAR3~q\);

-- Location: LCCOMB_X38_Y18_N26
\U1|Selector30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector30~0_combout\ = (\U1|Equal21~4_combout\ & ((\U1|ESTADO.CREAR_CHAR3~q\) # ((\U1|ESTADO.CREAR_CHAR4~q\ & \U1|Selector34~0_combout\)))) # (!\U1|Equal21~4_combout\ & (((\U1|ESTADO.CREAR_CHAR4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CREAR_CHAR3~q\,
	datab => \U1|Equal21~4_combout\,
	datac => \U1|ESTADO.CREAR_CHAR4~q\,
	datad => \U1|Selector34~0_combout\,
	combout => \U1|Selector30~0_combout\);

-- Location: FF_X38_Y18_N27
\U1|ESTADO.CREAR_CHAR4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.CREAR_CHAR4~q\);

-- Location: LCCOMB_X38_Y18_N12
\U1|Selector41~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector41~2_combout\ = (\U1|ESTADO.CREAR_CHAR4~q\) # ((\U1|ESTADO.CREAR_CHAR3~q\) # ((\U1|ESTADO.CREAR_CHAR5~q\) # (\U1|ESTADO.CREAR_CHAR2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CREAR_CHAR4~q\,
	datab => \U1|ESTADO.CREAR_CHAR3~q\,
	datac => \U1|ESTADO.CREAR_CHAR5~q\,
	datad => \U1|ESTADO.CREAR_CHAR2~q\,
	combout => \U1|Selector41~2_combout\);

-- Location: LCCOMB_X38_Y18_N0
\U1|Selector41~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector41~1_combout\ = (\U1|ESTADO.CHAR_ASCII~q\) # ((\U1|ESTADO.CREAR_CHAR1~q\) # ((\U1|ESTADO.BUCLE_FIN~q\) # (\U1|ESTADO.ESCRIBIR_LCD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CHAR_ASCII~q\,
	datab => \U1|ESTADO.CREAR_CHAR1~q\,
	datac => \U1|ESTADO.BUCLE_FIN~q\,
	datad => \U1|ESTADO.ESCRIBIR_LCD~q\,
	combout => \U1|Selector41~1_combout\);

-- Location: LCCOMB_X38_Y18_N14
\U1|Selector41~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector41~0_combout\ = (\U1|RS~q\ & (((\U1|ESTADO.NADA~q\) # (\U1|ESTADO.BUCLE_INI~q\)) # (!\U1|ESTADO.CHECAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CHECAR~q\,
	datab => \U1|ESTADO.NADA~q\,
	datac => \U1|RS~q\,
	datad => \U1|ESTADO.BUCLE_INI~q\,
	combout => \U1|Selector41~0_combout\);

-- Location: LCCOMB_X38_Y18_N28
\U1|Selector41~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector41~3_combout\ = (\U1|ESTADO.CREAR_CHAR6~q\) # ((\U1|ESTADO.CREAR_CHAR7~q\) # (\U1|ESTADO.CREAR_CHAR8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ESTADO.CREAR_CHAR6~q\,
	datac => \U1|ESTADO.CREAR_CHAR7~q\,
	datad => \U1|ESTADO.CREAR_CHAR8~q\,
	combout => \U1|Selector41~3_combout\);

-- Location: LCCOMB_X38_Y18_N22
\U1|Selector41~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector41~4_combout\ = (\U1|Selector41~2_combout\) # ((\U1|Selector41~1_combout\) # ((\U1|Selector41~0_combout\) # (\U1|Selector41~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector41~2_combout\,
	datab => \U1|Selector41~1_combout\,
	datac => \U1|Selector41~0_combout\,
	datad => \U1|Selector41~3_combout\,
	combout => \U1|Selector41~4_combout\);

-- Location: FF_X38_Y18_N23
\U1|RS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector41~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|RS~q\);

-- Location: LCCOMB_X39_Y17_N0
\U1|WideOr37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|WideOr37~combout\ = ((\U1|ESTADO.BUCLE_FIN~q\) # ((\U1|ESTADO.BUCLE_INI~q\) # (\U1|ESTADO.NADA~q\))) # (!\U1|WideOr36~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|WideOr36~0_combout\,
	datab => \U1|ESTADO.BUCLE_FIN~q\,
	datac => \U1|ESTADO.BUCLE_INI~q\,
	datad => \U1|ESTADO.NADA~q\,
	combout => \U1|WideOr37~combout\);

-- Location: LCCOMB_X39_Y16_N12
\U1|ENA~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|ENA~3_combout\ = (((!\U1|CONTA_DELAY\(3) & !\U1|CONTA_DELAY\(2))) # (!\U1|CONTA_DELAY\(5))) # (!\U1|CONTA_DELAY\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(3),
	datab => \U1|CONTA_DELAY\(4),
	datac => \U1|CONTA_DELAY\(5),
	datad => \U1|CONTA_DELAY\(2),
	combout => \U1|ENA~3_combout\);

-- Location: LCCOMB_X39_Y16_N20
\U1|ENA~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|ENA~4_combout\ = (!\U1|CONTA_DELAY\(6) & (!\U1|CONTA_DELAY\(8) & !\U1|CONTA_DELAY\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(6),
	datab => \U1|CONTA_DELAY\(8),
	datac => \U1|CONTA_DELAY\(7),
	combout => \U1|ENA~4_combout\);

-- Location: LCCOMB_X39_Y16_N4
\U1|ENA~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|ENA~5_combout\ = (\U1|Equal21~0_combout\ & ((\U1|ENA~4_combout\) # (!\U1|CONTA_DELAY\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ENA~4_combout\,
	datac => \U1|Equal21~0_combout\,
	datad => \U1|CONTA_DELAY\(9),
	combout => \U1|ENA~5_combout\);

-- Location: LCCOMB_X39_Y16_N14
\U1|ENA~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|ENA~6_combout\ = (\U1|ENA~5_combout\ & (((\U1|ENA~3_combout\ & !\U1|CONTA_DELAY\(14))) # (!\U1|CONTA_DELAY\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ENA~3_combout\,
	datab => \U1|CONTA_DELAY\(9),
	datac => \U1|ENA~5_combout\,
	datad => \U1|CONTA_DELAY\(14),
	combout => \U1|ENA~6_combout\);

-- Location: LCCOMB_X39_Y16_N10
\U1|ENA~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|ENA~1_combout\ = (\U1|CONTA_DELAY\(3) & ((\U1|CONTA_DELAY\(2)) # ((\U1|CONTA_DELAY\(1) & \U1|CONTA_DELAY\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(1),
	datab => \U1|CONTA_DELAY\(3),
	datac => \U1|CONTA_DELAY\(0),
	datad => \U1|CONTA_DELAY\(2),
	combout => \U1|ENA~1_combout\);

-- Location: LCCOMB_X37_Y16_N16
\U1|ENA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|ENA~0_combout\ = (\U1|CONTA_DELAY\(7)) # ((\U1|CONTA_DELAY\(6)) # (\U1|CONTA_DELAY\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(7),
	datac => \U1|CONTA_DELAY\(6),
	datad => \U1|CONTA_DELAY\(5),
	combout => \U1|ENA~0_combout\);

-- Location: LCCOMB_X39_Y16_N8
\U1|ENA~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|ENA~2_combout\ = (\U1|CONTA_DELAY\(8) & ((\U1|ENA~0_combout\) # ((\U1|ENA~1_combout\ & \U1|CONTA_DELAY\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ENA~1_combout\,
	datab => \U1|CONTA_DELAY\(8),
	datac => \U1|CONTA_DELAY\(4),
	datad => \U1|ENA~0_combout\,
	combout => \U1|ENA~2_combout\);

-- Location: LCCOMB_X39_Y16_N28
\U1|ENA~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|ENA~7_combout\ = (\U1|CONTA_DELAY\(14) & (!\U1|CONTA_DELAY\(15) & ((\U1|ENA~2_combout\) # (!\U1|ENA~6_combout\)))) # (!\U1|CONTA_DELAY\(14) & (\U1|ENA~6_combout\ & ((\U1|CONTA_DELAY\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(14),
	datab => \U1|ENA~6_combout\,
	datac => \U1|ENA~2_combout\,
	datad => \U1|CONTA_DELAY\(15),
	combout => \U1|ENA~7_combout\);

-- Location: LCCOMB_X39_Y16_N24
\U1|ENA~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|ENA~8_combout\ = (\U1|WideOr37~combout\ & (\U1|ENA~q\)) # (!\U1|WideOr37~combout\ & ((\U1|ENA~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|WideOr37~combout\,
	datac => \U1|ENA~q\,
	datad => \U1|ENA~7_combout\,
	combout => \U1|ENA~8_combout\);

-- Location: FF_X39_Y16_N25
\U1|ENA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|ENA~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ENA~q\);

-- Location: LCCOMB_X37_Y18_N6
\U1|DATA[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[2]~21_combout\ = (!\U1|ESTADO.LIMPIAR_PANTALLA~q\ & (!\U1|ESTADO.CURSOR_HOME~q\ & (!\U1|ESTADO.CLEAR_DISPLAY~q\ & !\U1|ESTADO.CURSOR_HOME2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.LIMPIAR_PANTALLA~q\,
	datab => \U1|ESTADO.CURSOR_HOME~q\,
	datac => \U1|ESTADO.CLEAR_DISPLAY~q\,
	datad => \U1|ESTADO.CURSOR_HOME2~q\,
	combout => \U1|DATA[2]~21_combout\);

-- Location: LCCOMB_X38_Y18_N10
\U1|DATA_A[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A[6]~3_combout\ = (!\U1|ESTADO.CURSOR_LCD~q\ & ((!\U1|WideOr37~combout\) # (!\U1|DATA[2]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ESTADO.CURSOR_LCD~q\,
	datac => \U1|DATA[2]~21_combout\,
	datad => \U1|WideOr37~combout\,
	combout => \U1|DATA_A[6]~3_combout\);

-- Location: CLKCTRL_G7
\U1|DATA_A[6]~3clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|DATA_A[6]~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|DATA_A[6]~3clkctrl_outclk\);

-- Location: LCCOMB_X37_Y18_N28
\U1|DATA[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[1]~10_combout\ = (!\U1|ESTADO.LIMPIAR_PANTALLA~q\ & !\U1|ESTADO.CLEAR_DISPLAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.LIMPIAR_PANTALLA~q\,
	datad => \U1|ESTADO.CLEAR_DISPLAY~q\,
	combout => \U1|DATA[1]~10_combout\);

-- Location: LCCOMB_X35_Y18_N28
\U1|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~3_combout\ = (\U1|INC_DIR_S\(5)) # ((\U1|INC_DIR_S\(2)) # (\U1|INC_DIR_S\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(5),
	datac => \U1|INC_DIR_S\(2),
	datad => \U1|INC_DIR_S\(3),
	combout => \U1|process_0~3_combout\);

-- Location: LCCOMB_X35_Y18_N26
\U1|process_0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~36_combout\ = ((\U1|process_0~3_combout\) # ((\U1|INC_DIR_S\(1)) # (\U1|INC_DIR_S\(4)))) # (!\U1|INC_DIR_S\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(0),
	datab => \U1|process_0~3_combout\,
	datac => \U1|INC_DIR_S\(1),
	datad => \U1|INC_DIR_S\(4),
	combout => \U1|process_0~36_combout\);

-- Location: LCCOMB_X36_Y16_N6
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!\U1|INC_DIR_S\(5) & (\Mux3~0_combout\ & !\U1|INC_DIR_S\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(5),
	datac => \Mux3~0_combout\,
	datad => \U1|INC_DIR_S\(4),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X37_Y18_N30
\Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\U1|INC_DIR_S\(4)) # (\Mux8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|INC_DIR_S\(4),
	datad => \Mux8~0_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X36_Y18_N28
\U1|process_0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~34_combout\ = (!\Mux4~1_combout\ & (!\Mux5~1_combout\ & ((\Mux8~2_combout\) # (!\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux5~1_combout\,
	datac => \Mux8~2_combout\,
	datad => \Mux7~1_combout\,
	combout => \U1|process_0~34_combout\);

-- Location: LCCOMB_X36_Y18_N30
\U1|process_0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~35_combout\ = ((\Mux3~1_combout\ & !\U1|process_0~34_combout\)) # (!\U1|process_0~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~39_combout\,
	datac => \Mux3~1_combout\,
	datad => \U1|process_0~34_combout\,
	combout => \U1|process_0~35_combout\);

-- Location: LCCOMB_X36_Y17_N0
\U1|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add4~0_combout\ = (((!\U1|INC_DIR_S\(5) & !\Mux8~2_combout\)))
-- \U1|Add4~1\ = CARRY((!\U1|INC_DIR_S\(5) & !\Mux8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(5),
	datab => \Mux8~2_combout\,
	datad => VCC,
	combout => \U1|Add4~0_combout\,
	cout => \U1|Add4~1\);

-- Location: LCCOMB_X36_Y18_N18
\U1|VEC_CHAR~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|VEC_CHAR~7_combout\ = (\U1|process_0~36_combout\ & ((\U1|process_0~35_combout\ & ((\U1|Add4~0_combout\))) # (!\U1|process_0~35_combout\ & (\Mux8~1_combout\)))) # (!\U1|process_0~36_combout\ & (\Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~36_combout\,
	datab => \Mux8~1_combout\,
	datac => \U1|process_0~35_combout\,
	datad => \U1|Add4~0_combout\,
	combout => \U1|VEC_CHAR~7_combout\);

-- Location: FF_X36_Y18_N19
\U1|VEC_CHAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|VEC_CHAR~7_combout\,
	ena => \U1|ESTADO.ESCRIBIR_LCD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|VEC_CHAR\(0));

-- Location: LCCOMB_X35_Y18_N24
\U1|VEC_ASCII[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|VEC_ASCII[0]~feeder_combout\ = \Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux8~1_combout\,
	combout => \U1|VEC_ASCII[0]~feeder_combout\);

-- Location: FF_X35_Y18_N25
\U1|VEC_ASCII[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|VEC_ASCII[0]~feeder_combout\,
	ena => \U1|ESTADO.CHAR_ASCII~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|VEC_ASCII\(0));

-- Location: LCCOMB_X37_Y16_N10
\U1|DATA_A[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A[5]~0_combout\ = (!\U1|ESTADO.BUCLE_FIN~q\ & (!\U1|ESTADO.ESCRIBIR_LCD~q\ & \U1|ESTADO.CHAR_ASCII~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ESTADO.BUCLE_FIN~q\,
	datac => \U1|ESTADO.ESCRIBIR_LCD~q\,
	datad => \U1|ESTADO.CHAR_ASCII~q\,
	combout => \U1|DATA_A[5]~0_combout\);

-- Location: LCCOMB_X36_Y18_N16
\U1|DATA_A[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A[0]~1_combout\ = (\U1|VEC_CHAR\(0) & ((\U1|ESTADO.ESCRIBIR_LCD~q\) # ((\U1|VEC_ASCII\(0) & \U1|DATA_A[5]~0_combout\)))) # (!\U1|VEC_CHAR\(0) & (\U1|VEC_ASCII\(0) & ((\U1|DATA_A[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|VEC_CHAR\(0),
	datab => \U1|VEC_ASCII\(0),
	datac => \U1|ESTADO.ESCRIBIR_LCD~q\,
	datad => \U1|DATA_A[5]~0_combout\,
	combout => \U1|DATA_A[0]~1_combout\);

-- Location: LCCOMB_X36_Y18_N6
\U1|DATA_A[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A[0]~2_combout\ = (!\U1|ESTADO.INI_LCD~q\ & (((\U1|DATA[2]~21_combout\ & \U1|DATA_A[0]~1_combout\)) # (!\U1|DATA[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA[2]~21_combout\,
	datab => \U1|DATA[1]~10_combout\,
	datac => \U1|ESTADO.INI_LCD~q\,
	datad => \U1|DATA_A[0]~1_combout\,
	combout => \U1|DATA_A[0]~2_combout\);

-- Location: LCCOMB_X36_Y18_N4
\U1|DATA_A[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A\(0) = (GLOBAL(\U1|DATA_A[6]~3clkctrl_outclk\) & ((\U1|DATA_A[0]~2_combout\))) # (!GLOBAL(\U1|DATA_A[6]~3clkctrl_outclk\) & (\U1|DATA_A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|DATA_A\(0),
	datac => \U1|DATA_A[6]~3clkctrl_outclk\,
	datad => \U1|DATA_A[0]~2_combout\,
	combout => \U1|DATA_A\(0));

-- Location: LCCOMB_X36_Y18_N12
\U1|DATA~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA~9_combout\ = (\U1|ESTADO.CHAR_ASCII~q\ & (((\U1|VEC_ASCII\(0))))) # (!\U1|ESTADO.CHAR_ASCII~q\ & (!\U1|ESTADO.CHECAR~q\ & (\U1|DATA_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CHECAR~q\,
	datab => \U1|DATA_A\(0),
	datac => \U1|ESTADO.CHAR_ASCII~q\,
	datad => \U1|VEC_ASCII\(0),
	combout => \U1|DATA~9_combout\);

-- Location: LCCOMB_X36_Y18_N0
\U1|DATA~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA~40_combout\ = (\U1|ESTADO.ESCRIBIR_LCD~q\ & (((\U1|VEC_CHAR\(0))))) # (!\U1|ESTADO.ESCRIBIR_LCD~q\ & (\U1|DATA~9_combout\ & ((!\U1|ESTADO.BUCLE_FIN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA~9_combout\,
	datab => \U1|VEC_CHAR\(0),
	datac => \U1|ESTADO.BUCLE_FIN~q\,
	datad => \U1|ESTADO.ESCRIBIR_LCD~q\,
	combout => \U1|DATA~40_combout\);

-- Location: LCCOMB_X36_Y18_N10
\U1|DATA[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[0]~11_combout\ = ((\U1|DATA~40_combout\ & (!\U1|ESTADO.CURSOR_HOME~q\ & !\U1|ESTADO.CURSOR_HOME2~q\))) # (!\U1|DATA[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA~40_combout\,
	datab => \U1|DATA[1]~10_combout\,
	datac => \U1|ESTADO.CURSOR_HOME~q\,
	datad => \U1|ESTADO.CURSOR_HOME2~q\,
	combout => \U1|DATA[0]~11_combout\);

-- Location: LCCOMB_X35_Y17_N2
\U1|process_0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~37_combout\ = (!\Mux0~0_combout\ & (!\Mux1~1_combout\ & (!\U1|INC_DIR_S\(5) & !\U1|INC_DIR_S\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux1~1_combout\,
	datac => \U1|INC_DIR_S\(5),
	datad => \U1|INC_DIR_S\(4),
	combout => \U1|process_0~37_combout\);

-- Location: LCCOMB_X36_Y16_N4
\U1|Equal27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal27~0_combout\ = (!\Mux3~1_combout\ & (!\Mux5~1_combout\ & (\U1|process_0~37_combout\ & !\Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux5~1_combout\,
	datac => \U1|process_0~37_combout\,
	datad => \Mux4~1_combout\,
	combout => \U1|Equal27~0_combout\);

-- Location: LCCOMB_X35_Y16_N16
\U1|DATA[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[0]~8_combout\ = (\U1|ESTADO.CURSOR_LCD~q\ & ((!\Mux8~1_combout\) # (!\U1|Equal27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal27~0_combout\,
	datab => \U1|ESTADO.CURSOR_LCD~q\,
	datad => \Mux8~1_combout\,
	combout => \U1|DATA[0]~8_combout\);

-- Location: LCCOMB_X35_Y16_N30
\U1|DATA[0]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[0]~41_combout\ = (\U1|DATA[0]~8_combout\) # ((\U1|DATA[0]~11_combout\ & (!\U1|ESTADO.INI_LCD~q\ & !\U1|ESTADO.CURSOR_LCD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA[0]~11_combout\,
	datab => \U1|DATA[0]~8_combout\,
	datac => \U1|ESTADO.INI_LCD~q\,
	datad => \U1|ESTADO.CURSOR_LCD~q\,
	combout => \U1|DATA[0]~41_combout\);

-- Location: LCCOMB_X35_Y16_N24
\U1|DATA[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[1]~13_combout\ = (\U1|ESTADO.CURSOR_LCD~q\ & ((\Mux8~1_combout\ $ (!\Mux7~1_combout\)) # (!\U1|Equal27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \U1|ESTADO.CURSOR_LCD~q\,
	datac => \Mux7~1_combout\,
	datad => \U1|Equal27~0_combout\,
	combout => \U1|DATA[1]~13_combout\);

-- Location: LCCOMB_X35_Y16_N2
\U1|DATA[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[1]~12_combout\ = (!\U1|ESTADO.INI_LCD~q\ & !\U1|ESTADO.CURSOR_LCD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|ESTADO.INI_LCD~q\,
	datad => \U1|ESTADO.CURSOR_LCD~q\,
	combout => \U1|DATA[1]~12_combout\);

-- Location: LCCOMB_X36_Y17_N20
\Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (!\U1|INC_DIR_S\(4) & \Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|INC_DIR_S\(4),
	datac => \Mux7~0_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X35_Y17_N16
\U1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~0_combout\ = (((\Mux7~2_combout\ & !\U1|INC_DIR_S\(5))))
-- \U1|Add3~1\ = CARRY((\Mux7~2_combout\ & !\U1|INC_DIR_S\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \U1|INC_DIR_S\(5),
	datad => VCC,
	combout => \U1|Add3~0_combout\,
	cout => \U1|Add3~1\);

-- Location: LCCOMB_X36_Y17_N2
\U1|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add4~2_combout\ = (\U1|INC_DIR_S\(5) & (((!\U1|Add4~1\)))) # (!\U1|INC_DIR_S\(5) & ((\Mux7~2_combout\ & (\U1|Add4~1\ & VCC)) # (!\Mux7~2_combout\ & (!\U1|Add4~1\))))
-- \U1|Add4~3\ = CARRY((!\U1|Add4~1\ & ((\U1|INC_DIR_S\(5)) # (!\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(5),
	datab => \Mux7~2_combout\,
	datad => VCC,
	cin => \U1|Add4~1\,
	combout => \U1|Add4~2_combout\,
	cout => \U1|Add4~3\);

-- Location: LCCOMB_X36_Y18_N24
\U1|VEC_CHAR[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|VEC_CHAR[1]~0_combout\ = (\U1|process_0~36_combout\ & ((\U1|Add4~2_combout\))) # (!\U1|process_0~36_combout\ & (\U1|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~36_combout\,
	datab => \U1|Add3~0_combout\,
	datad => \U1|Add4~2_combout\,
	combout => \U1|VEC_CHAR[1]~0_combout\);

-- Location: FF_X36_Y18_N25
\U1|VEC_CHAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|VEC_CHAR[1]~0_combout\,
	asdata => \Mux7~1_combout\,
	sload => \U1|ALT_INV_process_0~35_combout\,
	ena => \U1|ESTADO.ESCRIBIR_LCD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|VEC_CHAR\(1));

-- Location: LCCOMB_X36_Y18_N22
\U1|DATA~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA~15_combout\ = (!\U1|ESTADO.CURSOR_HOME~q\ & (!\U1|ESTADO.CURSOR_HOME2~q\ & ((!\U1|ESTADO.ESCRIBIR_LCD~q\) # (!\U1|VEC_CHAR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CURSOR_HOME~q\,
	datab => \U1|VEC_CHAR\(1),
	datac => \U1|ESTADO.CURSOR_HOME2~q\,
	datad => \U1|ESTADO.ESCRIBIR_LCD~q\,
	combout => \U1|DATA~15_combout\);

-- Location: FF_X38_Y17_N27
\U1|VEC_ASCII[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Mux7~1_combout\,
	sload => VCC,
	ena => \U1|ESTADO.CHAR_ASCII~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|VEC_ASCII\(1));

-- Location: LCCOMB_X36_Y18_N8
\U1|DATA_A[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A[1]~4_combout\ = (!\U1|ESTADO.BUCLE_FIN~q\ & (!\U1|ESTADO.ESCRIBIR_LCD~q\ & (\U1|VEC_ASCII\(1) & \U1|ESTADO.CHAR_ASCII~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.BUCLE_FIN~q\,
	datab => \U1|ESTADO.ESCRIBIR_LCD~q\,
	datac => \U1|VEC_ASCII\(1),
	datad => \U1|ESTADO.CHAR_ASCII~q\,
	combout => \U1|DATA_A[1]~4_combout\);

-- Location: LCCOMB_X36_Y18_N26
\U1|DATA_A[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A[1]~5_combout\ = (\U1|DATA[1]~10_combout\ & (!\U1|ESTADO.INI_LCD~q\ & ((\U1|DATA_A[1]~4_combout\) # (!\U1|DATA~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA~15_combout\,
	datab => \U1|DATA[1]~10_combout\,
	datac => \U1|ESTADO.INI_LCD~q\,
	datad => \U1|DATA_A[1]~4_combout\,
	combout => \U1|DATA_A[1]~5_combout\);

-- Location: LCCOMB_X36_Y18_N14
\U1|DATA_A[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A\(1) = (GLOBAL(\U1|DATA_A[6]~3clkctrl_outclk\) & ((\U1|DATA_A[1]~5_combout\))) # (!GLOBAL(\U1|DATA_A[6]~3clkctrl_outclk\) & (\U1|DATA_A\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|DATA_A\(1),
	datac => \U1|DATA_A[6]~3clkctrl_outclk\,
	datad => \U1|DATA_A[1]~5_combout\,
	combout => \U1|DATA_A\(1));

-- Location: LCCOMB_X36_Y18_N20
\U1|DATA~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA~14_combout\ = (\U1|ESTADO.CHAR_ASCII~q\ & (\U1|VEC_ASCII\(1))) # (!\U1|ESTADO.CHAR_ASCII~q\ & (((\U1|DATA_A\(1) & !\U1|ESTADO.CHECAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|VEC_ASCII\(1),
	datab => \U1|DATA_A\(1),
	datac => \U1|ESTADO.CHAR_ASCII~q\,
	datad => \U1|ESTADO.CHECAR~q\,
	combout => \U1|DATA~14_combout\);

-- Location: LCCOMB_X36_Y18_N2
\U1|DATA~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA~42_combout\ = ((!\U1|ESTADO.ESCRIBIR_LCD~q\ & (!\U1|ESTADO.BUCLE_FIN~q\ & \U1|DATA~14_combout\))) # (!\U1|DATA~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA~15_combout\,
	datab => \U1|ESTADO.ESCRIBIR_LCD~q\,
	datac => \U1|ESTADO.BUCLE_FIN~q\,
	datad => \U1|DATA~14_combout\,
	combout => \U1|DATA~42_combout\);

-- Location: LCCOMB_X35_Y16_N14
\U1|DATA[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[1]~16_combout\ = (\U1|DATA[1]~13_combout\) # ((\U1|DATA[1]~12_combout\ & (\U1|DATA~42_combout\ & \U1|DATA[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA[1]~13_combout\,
	datab => \U1|DATA[1]~12_combout\,
	datac => \U1|DATA~42_combout\,
	datad => \U1|DATA[1]~10_combout\,
	combout => \U1|DATA[1]~16_combout\);

-- Location: LCCOMB_X38_Y16_N4
\U1|DATA[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[2]~18_combout\ = (\U1|ESTADO.ESCRIBIR_LCD~q\) # ((!\U1|ESTADO.BUCLE_FIN~q\ & \U1|ESTADO.CHAR_ASCII~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ESTADO.BUCLE_FIN~q\,
	datac => \U1|ESTADO.ESCRIBIR_LCD~q\,
	datad => \U1|ESTADO.CHAR_ASCII~q\,
	combout => \U1|DATA[2]~18_combout\);

-- Location: LCCOMB_X38_Y16_N28
\U1|WideOr38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|WideOr38~0_combout\ = (!\U1|ESTADO.BUCLE_FIN~q\ & !\U1|ESTADO.ESCRIBIR_LCD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|ESTADO.BUCLE_FIN~q\,
	datad => \U1|ESTADO.ESCRIBIR_LCD~q\,
	combout => \U1|WideOr38~0_combout\);

-- Location: FF_X37_Y17_N13
\U1|VEC_ASCII[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux4~1_combout\,
	ena => \U1|ESTADO.CHAR_ASCII~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|VEC_ASCII\(4));

-- Location: LCCOMB_X37_Y16_N6
\U1|DATA[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[5]~25_combout\ = (!\U1|ESTADO.BUCLE_FIN~q\ & (!\U1|ESTADO.ESCRIBIR_LCD~q\ & !\U1|ESTADO.CHAR_ASCII~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ESTADO.BUCLE_FIN~q\,
	datac => \U1|ESTADO.ESCRIBIR_LCD~q\,
	datad => \U1|ESTADO.CHAR_ASCII~q\,
	combout => \U1|DATA[5]~25_combout\);

-- Location: LCCOMB_X38_Y16_N18
\U1|DATA[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[2]~22_combout\ = (\U1|ESTADO.INI_LCD~q\) # ((\U1|ESTADO.BUCLE_FIN~q\) # (!\U1|DATA[2]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.INI_LCD~q\,
	datab => \U1|ESTADO.BUCLE_FIN~q\,
	datad => \U1|DATA[2]~21_combout\,
	combout => \U1|DATA[2]~22_combout\);

-- Location: LCCOMB_X35_Y17_N8
\Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (!\U1|INC_DIR_S\(4) & \Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(4),
	datad => \Mux4~0_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X36_Y17_N4
\U1|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add4~4_combout\ = (\U1|Add4~3\ & (\Mux4~2_combout\ & (!\U1|INC_DIR_S\(5) & VCC))) # (!\U1|Add4~3\ & ((((\Mux4~2_combout\ & !\U1|INC_DIR_S\(5))))))
-- \U1|Add4~5\ = CARRY((\Mux4~2_combout\ & (!\U1|INC_DIR_S\(5) & !\U1|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \U1|INC_DIR_S\(5),
	datad => VCC,
	cin => \U1|Add4~3\,
	combout => \U1|Add4~4_combout\,
	cout => \U1|Add4~5\);

-- Location: LCCOMB_X35_Y17_N18
\U1|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~2_combout\ = (\U1|INC_DIR_S\(5) & (((!\U1|Add3~1\)))) # (!\U1|INC_DIR_S\(5) & ((\Mux4~2_combout\ & (\U1|Add3~1\ & VCC)) # (!\Mux4~2_combout\ & (!\U1|Add3~1\))))
-- \U1|Add3~3\ = CARRY((!\U1|Add3~1\ & ((\U1|INC_DIR_S\(5)) # (!\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(5),
	datab => \Mux4~2_combout\,
	datad => VCC,
	cin => \U1|Add3~1\,
	combout => \U1|Add3~2_combout\,
	cout => \U1|Add3~3\);

-- Location: LCCOMB_X35_Y17_N0
\U1|VEC_CHAR[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|VEC_CHAR[2]~1_combout\ = (\U1|process_0~36_combout\ & (\U1|Add4~4_combout\)) # (!\U1|process_0~36_combout\ & ((\U1|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add4~4_combout\,
	datab => \U1|process_0~36_combout\,
	datad => \U1|Add3~2_combout\,
	combout => \U1|VEC_CHAR[2]~1_combout\);

-- Location: FF_X35_Y17_N1
\U1|VEC_CHAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|VEC_CHAR[2]~1_combout\,
	asdata => \Mux4~1_combout\,
	sload => \U1|ALT_INV_process_0~35_combout\,
	ena => \U1|ESTADO.ESCRIBIR_LCD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|VEC_CHAR\(2));

-- Location: LCCOMB_X38_Y16_N0
\U1|DATA_A[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A[2]~6_combout\ = (\U1|DATA[2]~18_combout\ & ((\U1|WideOr38~0_combout\ & (\U1|VEC_ASCII\(4))) # (!\U1|WideOr38~0_combout\ & ((\U1|VEC_CHAR\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|VEC_ASCII\(4),
	datab => \U1|WideOr38~0_combout\,
	datac => \U1|DATA[2]~18_combout\,
	datad => \U1|VEC_CHAR\(2),
	combout => \U1|DATA_A[2]~6_combout\);

-- Location: LCCOMB_X38_Y16_N22
\U1|DATA_A[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A[2]~7_combout\ = (!\U1|DATA[2]~22_combout\ & ((\U1|DATA_A[2]~6_combout\) # ((\U1|DATA[5]~25_combout\ & \U1|ESTADO.ENA_D~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA[5]~25_combout\,
	datab => \U1|DATA[2]~22_combout\,
	datac => \U1|ESTADO.ENA_D~q\,
	datad => \U1|DATA_A[2]~6_combout\,
	combout => \U1|DATA_A[2]~7_combout\);

-- Location: LCCOMB_X38_Y16_N26
\U1|DATA_A[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A\(2) = (GLOBAL(\U1|DATA_A[6]~3clkctrl_outclk\) & ((\U1|DATA_A[2]~7_combout\))) # (!GLOBAL(\U1|DATA_A[6]~3clkctrl_outclk\) & (\U1|DATA_A\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA_A\(2),
	datac => \U1|DATA_A[2]~7_combout\,
	datad => \U1|DATA_A[6]~3clkctrl_outclk\,
	combout => \U1|DATA_A\(2));

-- Location: LCCOMB_X35_Y16_N0
\U1|DATA[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[2]~17_combout\ = (\U1|ESTADO.CHECAR~q\ & ((\U1|ESTADO.ENA_D~q\))) # (!\U1|ESTADO.CHECAR~q\ & (\U1|DATA_A\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ESTADO.CHECAR~q\,
	datac => \U1|DATA_A\(2),
	datad => \U1|ESTADO.ENA_D~q\,
	combout => \U1|DATA[2]~17_combout\);

-- Location: LCCOMB_X35_Y16_N22
\U1|DATA[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[2]~19_combout\ = (\U1|WideOr38~0_combout\ & ((\U1|DATA[2]~18_combout\ & (\U1|VEC_ASCII\(4))) # (!\U1|DATA[2]~18_combout\ & ((\U1|DATA[2]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA[2]~18_combout\,
	datab => \U1|WideOr38~0_combout\,
	datac => \U1|VEC_ASCII\(4),
	datad => \U1|DATA[2]~17_combout\,
	combout => \U1|DATA[2]~19_combout\);

-- Location: LCCOMB_X35_Y16_N4
\U1|DATA[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[2]~20_combout\ = (\U1|VEC_CHAR\(2) & \U1|ESTADO.ESCRIBIR_LCD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|VEC_CHAR\(2),
	datad => \U1|ESTADO.ESCRIBIR_LCD~q\,
	combout => \U1|DATA[2]~20_combout\);

-- Location: LCCOMB_X35_Y16_N18
\U1|DATA[2]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[2]~23_combout\ = (\U1|ESTADO.CURSOR_LCD~q\) # ((!\U1|DATA[2]~22_combout\ & ((\U1|DATA[2]~19_combout\) # (\U1|DATA[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA[2]~19_combout\,
	datab => \U1|ESTADO.CURSOR_LCD~q\,
	datac => \U1|DATA[2]~20_combout\,
	datad => \U1|DATA[2]~22_combout\,
	combout => \U1|DATA[2]~23_combout\);

-- Location: LCCOMB_X37_Y18_N26
\U1|DATA_A[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A[3]~8_combout\ = (!\U1|ESTADO.BUCLE_FIN~q\ & !\U1|ESTADO.CURSOR_HOME~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.BUCLE_FIN~q\,
	datad => \U1|ESTADO.CURSOR_HOME~q\,
	combout => \U1|DATA_A[3]~8_combout\);

-- Location: LCCOMB_X37_Y18_N12
\U1|DATA_A[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A[3]~9_combout\ = (!\U1|ESTADO.CLEAR_DISPLAY~q\ & (!\U1|ESTADO.CURSOR_HOME2~q\ & (\U1|DATA_A[3]~8_combout\ & !\U1|ESTADO.LIMPIAR_PANTALLA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CLEAR_DISPLAY~q\,
	datab => \U1|ESTADO.CURSOR_HOME2~q\,
	datac => \U1|DATA_A[3]~8_combout\,
	datad => \U1|ESTADO.LIMPIAR_PANTALLA~q\,
	combout => \U1|DATA_A[3]~9_combout\);

-- Location: LCCOMB_X37_Y16_N12
\U1|VEC_ASCII[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|VEC_ASCII[3]~feeder_combout\ = \Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux5~1_combout\,
	combout => \U1|VEC_ASCII[3]~feeder_combout\);

-- Location: FF_X37_Y16_N13
\U1|VEC_ASCII[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|VEC_ASCII[3]~feeder_combout\,
	ena => \U1|ESTADO.CHAR_ASCII~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|VEC_ASCII\(3));

-- Location: LCCOMB_X36_Y17_N22
\Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (!\U1|INC_DIR_S\(4) & \Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|INC_DIR_S\(4),
	datad => \Mux5~0_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X36_Y17_N6
\U1|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add4~6_combout\ = (\U1|Add4~5\ & ((\U1|INC_DIR_S\(5)) # ((!\Mux5~2_combout\)))) # (!\U1|Add4~5\ & (((!\U1|INC_DIR_S\(5) & \Mux5~2_combout\)) # (GND)))
-- \U1|Add4~7\ = CARRY((\U1|INC_DIR_S\(5)) # ((!\U1|Add4~5\) # (!\Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(5),
	datab => \Mux5~2_combout\,
	datad => VCC,
	cin => \U1|Add4~5\,
	combout => \U1|Add4~6_combout\,
	cout => \U1|Add4~7\);

-- Location: LCCOMB_X35_Y17_N20
\U1|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~4_combout\ = (\U1|Add3~3\ & ((((!\U1|INC_DIR_S\(5) & \Mux5~2_combout\))))) # (!\U1|Add3~3\ & (((!\U1|INC_DIR_S\(5) & \Mux5~2_combout\)) # (GND)))
-- \U1|Add3~5\ = CARRY(((!\U1|INC_DIR_S\(5) & \Mux5~2_combout\)) # (!\U1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(5),
	datab => \Mux5~2_combout\,
	datad => VCC,
	cin => \U1|Add3~3\,
	combout => \U1|Add3~4_combout\,
	cout => \U1|Add3~5\);

-- Location: LCCOMB_X35_Y17_N30
\U1|VEC_CHAR[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|VEC_CHAR[3]~2_combout\ = (\U1|process_0~36_combout\ & (\U1|Add4~6_combout\)) # (!\U1|process_0~36_combout\ & ((\U1|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add4~6_combout\,
	datab => \U1|process_0~36_combout\,
	datad => \U1|Add3~4_combout\,
	combout => \U1|VEC_CHAR[3]~2_combout\);

-- Location: LCCOMB_X35_Y17_N14
\Mux5~1_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_wirecell_combout\ = !\Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux5~1_combout\,
	combout => \Mux5~1_wirecell_combout\);

-- Location: FF_X35_Y17_N31
\U1|VEC_CHAR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|VEC_CHAR[3]~2_combout\,
	asdata => \Mux5~1_wirecell_combout\,
	sload => \U1|ALT_INV_process_0~35_combout\,
	ena => \U1|ESTADO.ESCRIBIR_LCD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|VEC_CHAR\(3));

-- Location: LCCOMB_X38_Y16_N8
\U1|DATA[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[3]~24_combout\ = (\U1|DATA[2]~18_combout\ & ((\U1|WideOr38~0_combout\ & (\U1|VEC_ASCII\(3))) # (!\U1|WideOr38~0_combout\ & ((\U1|VEC_CHAR\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|VEC_ASCII\(3),
	datab => \U1|VEC_CHAR\(3),
	datac => \U1|DATA[2]~18_combout\,
	datad => \U1|WideOr38~0_combout\,
	combout => \U1|DATA[3]~24_combout\);

-- Location: LCCOMB_X38_Y16_N16
\U1|DATA_A[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A[3]~10_combout\ = (\U1|DATA[5]~25_combout\ & ((\U1|ESTADO.ENA_I~q\) # (\U1|ESTADO.ENA_D~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.ENA_I~q\,
	datac => \U1|DATA[5]~25_combout\,
	datad => \U1|ESTADO.ENA_D~q\,
	combout => \U1|DATA_A[3]~10_combout\);

-- Location: LCCOMB_X38_Y16_N14
\U1|DATA_A[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A[3]~11_combout\ = (\U1|ESTADO.INI_LCD~q\) # ((\U1|DATA_A[3]~9_combout\ & ((\U1|DATA[3]~24_combout\) # (\U1|DATA_A[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA_A[3]~9_combout\,
	datab => \U1|ESTADO.INI_LCD~q\,
	datac => \U1|DATA[3]~24_combout\,
	datad => \U1|DATA_A[3]~10_combout\,
	combout => \U1|DATA_A[3]~11_combout\);

-- Location: LCCOMB_X38_Y16_N20
\U1|DATA_A[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A\(3) = (GLOBAL(\U1|DATA_A[6]~3clkctrl_outclk\) & ((\U1|DATA_A[3]~11_combout\))) # (!GLOBAL(\U1|DATA_A[6]~3clkctrl_outclk\) & (\U1|DATA_A\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|DATA_A\(3),
	datac => \U1|DATA_A[3]~11_combout\,
	datad => \U1|DATA_A[6]~3clkctrl_outclk\,
	combout => \U1|DATA_A\(3));

-- Location: LCCOMB_X35_Y16_N20
\U1|DATA[4]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[4]~26_combout\ = (\U1|DATA[5]~25_combout\ & ((\U1|ESTADO.ENA_I~q\) # ((\U1|ESTADO.ENA_D~q\) # (!\U1|ESTADO.CHECAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.ENA_I~q\,
	datab => \U1|DATA[5]~25_combout\,
	datac => \U1|ESTADO.CHECAR~q\,
	datad => \U1|ESTADO.ENA_D~q\,
	combout => \U1|DATA[4]~26_combout\);

-- Location: LCCOMB_X35_Y16_N10
\U1|DATA[3]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[3]~27_combout\ = (\U1|DATA[3]~24_combout\) # ((\U1|DATA[4]~26_combout\ & ((\U1|DATA_A\(3)) # (\U1|ESTADO.CHECAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA_A\(3),
	datab => \U1|DATA[4]~26_combout\,
	datac => \U1|ESTADO.CHECAR~q\,
	datad => \U1|DATA[3]~24_combout\,
	combout => \U1|DATA[3]~27_combout\);

-- Location: LCCOMB_X35_Y16_N28
\U1|DATA[3]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[3]~43_combout\ = (\U1|ESTADO.CURSOR_LCD~q\) # ((\U1|ESTADO.INI_LCD~q\) # ((!\U1|DATA[2]~22_combout\ & \U1|DATA[3]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA[2]~22_combout\,
	datab => \U1|ESTADO.CURSOR_LCD~q\,
	datac => \U1|ESTADO.INI_LCD~q\,
	datad => \U1|DATA[3]~27_combout\,
	combout => \U1|DATA[3]~43_combout\);

-- Location: LCCOMB_X35_Y17_N22
\U1|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~6_combout\ = (\U1|INC_DIR_S\(5) & (((!\U1|Add3~5\)))) # (!\U1|INC_DIR_S\(5) & ((\Mux4~2_combout\ & (\U1|Add3~5\ & VCC)) # (!\Mux4~2_combout\ & (!\U1|Add3~5\))))
-- \U1|Add3~7\ = CARRY((!\U1|Add3~5\ & ((\U1|INC_DIR_S\(5)) # (!\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(5),
	datab => \Mux4~2_combout\,
	datad => VCC,
	cin => \U1|Add3~5\,
	combout => \U1|Add3~6_combout\,
	cout => \U1|Add3~7\);

-- Location: LCCOMB_X36_Y17_N8
\U1|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add4~8_combout\ = (\U1|Add4~7\ & ((((\Mux4~2_combout\ & !\U1|INC_DIR_S\(5)))))) # (!\U1|Add4~7\ & (((\Mux4~2_combout\ & !\U1|INC_DIR_S\(5))) # (GND)))
-- \U1|Add4~9\ = CARRY(((\Mux4~2_combout\ & !\U1|INC_DIR_S\(5))) # (!\U1|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \U1|INC_DIR_S\(5),
	datad => VCC,
	cin => \U1|Add4~7\,
	combout => \U1|Add4~8_combout\,
	cout => \U1|Add4~9\);

-- Location: LCCOMB_X35_Y17_N12
\U1|VEC_CHAR[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|VEC_CHAR[4]~3_combout\ = (\U1|process_0~36_combout\ & ((\U1|Add4~8_combout\))) # (!\U1|process_0~36_combout\ & (\U1|Add3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~6_combout\,
	datab => \U1|Add4~8_combout\,
	datad => \U1|process_0~36_combout\,
	combout => \U1|VEC_CHAR[4]~3_combout\);

-- Location: LCCOMB_X35_Y17_N10
\U1|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~4_combout\ = (\U1|INC_DIR_S\(4)) # ((\U1|INC_DIR_S\(5)) # (\Mux5~0_combout\ $ (!\Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \U1|INC_DIR_S\(4),
	datac => \U1|INC_DIR_S\(5),
	datad => \Mux4~0_combout\,
	combout => \U1|Add2~4_combout\);

-- Location: FF_X35_Y17_N13
\U1|VEC_CHAR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|VEC_CHAR[4]~3_combout\,
	asdata => \U1|Add2~4_combout\,
	sload => \U1|ALT_INV_process_0~35_combout\,
	ena => \U1|ESTADO.ESCRIBIR_LCD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|VEC_CHAR\(4));

-- Location: LCCOMB_X38_Y16_N30
\U1|DATA[4]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[4]~28_combout\ = (\U1|DATA[2]~18_combout\ & ((\U1|WideOr38~0_combout\ & (\U1|VEC_ASCII\(4))) # (!\U1|WideOr38~0_combout\ & ((\U1|VEC_CHAR\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|VEC_ASCII\(4),
	datab => \U1|WideOr38~0_combout\,
	datac => \U1|DATA[2]~18_combout\,
	datad => \U1|VEC_CHAR\(4),
	combout => \U1|DATA[4]~28_combout\);

-- Location: LCCOMB_X38_Y16_N24
\U1|DATA_A[4]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A[4]~12_combout\ = (\U1|ESTADO.INI_LCD~q\) # ((\U1|DATA_A[3]~9_combout\ & ((\U1|DATA_A[3]~10_combout\) # (\U1|DATA[4]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.INI_LCD~q\,
	datab => \U1|DATA_A[3]~10_combout\,
	datac => \U1|DATA[4]~28_combout\,
	datad => \U1|DATA_A[3]~9_combout\,
	combout => \U1|DATA_A[4]~12_combout\);

-- Location: LCCOMB_X38_Y16_N6
\U1|DATA_A[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A\(4) = (GLOBAL(\U1|DATA_A[6]~3clkctrl_outclk\) & ((\U1|DATA_A[4]~12_combout\))) # (!GLOBAL(\U1|DATA_A[6]~3clkctrl_outclk\) & (\U1|DATA_A\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA_A\(4),
	datac => \U1|DATA_A[6]~3clkctrl_outclk\,
	datad => \U1|DATA_A[4]~12_combout\,
	combout => \U1|DATA_A\(4));

-- Location: LCCOMB_X35_Y16_N12
\U1|DATA[4]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[4]~29_combout\ = (\U1|DATA[4]~28_combout\) # ((\U1|DATA[4]~26_combout\ & ((\U1|ESTADO.CHECAR~q\) # (\U1|DATA_A\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CHECAR~q\,
	datab => \U1|DATA[4]~28_combout\,
	datac => \U1|DATA_A\(4),
	datad => \U1|DATA[4]~26_combout\,
	combout => \U1|DATA[4]~29_combout\);

-- Location: LCCOMB_X38_Y16_N12
\U1|DATA[4]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[4]~30_combout\ = (!\U1|ESTADO.CURSOR_LCD~q\ & ((\U1|ESTADO.INI_LCD~q\) # ((!\U1|DATA[2]~22_combout\ & \U1|DATA[4]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CURSOR_LCD~q\,
	datab => \U1|DATA[2]~22_combout\,
	datac => \U1|DATA[4]~29_combout\,
	datad => \U1|ESTADO.INI_LCD~q\,
	combout => \U1|DATA[4]~30_combout\);

-- Location: LCCOMB_X36_Y16_N26
\U1|DATA[5]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[5]~31_combout\ = (!\U1|ESTADO.CHECAR~q\ & (!\U1|ESTADO.CHAR_ASCII~q\ & (!\U1|ESTADO.BUCLE_FIN~q\ & !\U1|ESTADO.ESCRIBIR_LCD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CHECAR~q\,
	datab => \U1|ESTADO.CHAR_ASCII~q\,
	datac => \U1|ESTADO.BUCLE_FIN~q\,
	datad => \U1|ESTADO.ESCRIBIR_LCD~q\,
	combout => \U1|DATA[5]~31_combout\);

-- Location: LCCOMB_X36_Y17_N16
\Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (!\U1|INC_DIR_S\(4) & \Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|INC_DIR_S\(4),
	datad => \Mux3~0_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X35_Y17_N24
\U1|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~8_combout\ = (\U1|Add3~7\ & (!\U1|INC_DIR_S\(5) & (\Mux3~2_combout\ & VCC))) # (!\U1|Add3~7\ & ((((!\U1|INC_DIR_S\(5) & \Mux3~2_combout\)))))
-- \U1|Add3~9\ = CARRY((!\U1|INC_DIR_S\(5) & (\Mux3~2_combout\ & !\U1|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(5),
	datab => \Mux3~2_combout\,
	datad => VCC,
	cin => \U1|Add3~7\,
	combout => \U1|Add3~8_combout\,
	cout => \U1|Add3~9\);

-- Location: LCCOMB_X36_Y17_N10
\U1|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add4~10_combout\ = (\U1|INC_DIR_S\(5) & (((!\U1|Add4~9\)))) # (!\U1|INC_DIR_S\(5) & ((\Mux3~2_combout\ & (\U1|Add4~9\ & VCC)) # (!\Mux3~2_combout\ & (!\U1|Add4~9\))))
-- \U1|Add4~11\ = CARRY((!\U1|Add4~9\ & ((\U1|INC_DIR_S\(5)) # (!\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(5),
	datab => \Mux3~2_combout\,
	datad => VCC,
	cin => \U1|Add4~9\,
	combout => \U1|Add4~10_combout\,
	cout => \U1|Add4~11\);

-- Location: LCCOMB_X36_Y16_N20
\U1|VEC_CHAR[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|VEC_CHAR[5]~4_combout\ = (\U1|process_0~36_combout\ & ((\U1|Add4~10_combout\))) # (!\U1|process_0~36_combout\ & (\U1|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~8_combout\,
	datab => \U1|process_0~36_combout\,
	datad => \U1|Add4~10_combout\,
	combout => \U1|VEC_CHAR[5]~4_combout\);

-- Location: LCCOMB_X36_Y16_N22
\U1|Add2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~5_combout\ = \Mux3~1_combout\ $ (((\Mux1~2_combout\ & ((\Mux5~0_combout\) # (\Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux4~0_combout\,
	datac => \Mux1~2_combout\,
	datad => \Mux3~1_combout\,
	combout => \U1|Add2~5_combout\);

-- Location: FF_X36_Y16_N21
\U1|VEC_CHAR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|VEC_CHAR[5]~4_combout\,
	asdata => \U1|Add2~5_combout\,
	sload => \U1|ALT_INV_process_0~35_combout\,
	ena => \U1|ESTADO.ESCRIBIR_LCD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|VEC_CHAR\(5));

-- Location: LCCOMB_X36_Y16_N24
\U1|VEC_ASCII[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|VEC_ASCII[5]~feeder_combout\ = \Mux3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux3~1_combout\,
	combout => \U1|VEC_ASCII[5]~feeder_combout\);

-- Location: FF_X36_Y16_N25
\U1|VEC_ASCII[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|VEC_ASCII[5]~feeder_combout\,
	ena => \U1|ESTADO.CHAR_ASCII~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|VEC_ASCII\(5));

-- Location: LCCOMB_X36_Y16_N30
\U1|DATA_A[5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A[5]~13_combout\ = (\U1|ESTADO.ESCRIBIR_LCD~q\ & ((\U1|VEC_CHAR\(5)) # ((\U1|DATA_A[5]~0_combout\ & \U1|VEC_ASCII\(5))))) # (!\U1|ESTADO.ESCRIBIR_LCD~q\ & (((\U1|DATA_A[5]~0_combout\ & \U1|VEC_ASCII\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.ESCRIBIR_LCD~q\,
	datab => \U1|VEC_CHAR\(5),
	datac => \U1|DATA_A[5]~0_combout\,
	datad => \U1|VEC_ASCII\(5),
	combout => \U1|DATA_A[5]~13_combout\);

-- Location: LCCOMB_X36_Y16_N8
\U1|DATA_A[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A[5]~14_combout\ = (\U1|ESTADO.INI_LCD~q\) # ((\U1|DATA_A[5]~13_combout\ & \U1|DATA[2]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.INI_LCD~q\,
	datac => \U1|DATA_A[5]~13_combout\,
	datad => \U1|DATA[2]~21_combout\,
	combout => \U1|DATA_A[5]~14_combout\);

-- Location: LCCOMB_X36_Y16_N14
\U1|DATA_A[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A\(5) = (GLOBAL(\U1|DATA_A[6]~3clkctrl_outclk\) & ((\U1|DATA_A[5]~14_combout\))) # (!GLOBAL(\U1|DATA_A[6]~3clkctrl_outclk\) & (\U1|DATA_A\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|DATA_A\(5),
	datac => \U1|DATA_A[5]~14_combout\,
	datad => \U1|DATA_A[6]~3clkctrl_outclk\,
	combout => \U1|DATA_A\(5));

-- Location: LCCOMB_X36_Y16_N10
\U1|DATA[5]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[5]~32_combout\ = (\U1|ESTADO.ESCRIBIR_LCD~q\ & (((\U1|VEC_CHAR\(5))))) # (!\U1|ESTADO.ESCRIBIR_LCD~q\ & ((\U1|ESTADO.BUCLE_FIN~q\ & ((\U1|VEC_CHAR\(5)))) # (!\U1|ESTADO.BUCLE_FIN~q\ & (\U1|VEC_ASCII\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.ESCRIBIR_LCD~q\,
	datab => \U1|ESTADO.BUCLE_FIN~q\,
	datac => \U1|VEC_ASCII\(5),
	datad => \U1|VEC_CHAR\(5),
	combout => \U1|DATA[5]~32_combout\);

-- Location: LCCOMB_X36_Y16_N12
\U1|DATA[5]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[5]~33_combout\ = (\U1|DATA[5]~31_combout\ & ((\U1|DATA_A\(5)) # ((\U1|DATA[2]~18_combout\ & \U1|DATA[5]~32_combout\)))) # (!\U1|DATA[5]~31_combout\ & (\U1|DATA[2]~18_combout\ & ((\U1|DATA[5]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA[5]~31_combout\,
	datab => \U1|DATA[2]~18_combout\,
	datac => \U1|DATA_A\(5),
	datad => \U1|DATA[5]~32_combout\,
	combout => \U1|DATA[5]~33_combout\);

-- Location: LCCOMB_X35_Y16_N26
\U1|DATA[5]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[5]~34_combout\ = (!\U1|ESTADO.CURSOR_LCD~q\ & ((\U1|ESTADO.INI_LCD~q\) # ((!\U1|DATA[2]~22_combout\ & \U1|DATA[5]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA[2]~22_combout\,
	datab => \U1|ESTADO.INI_LCD~q\,
	datac => \U1|DATA[5]~33_combout\,
	datad => \U1|ESTADO.CURSOR_LCD~q\,
	combout => \U1|DATA[5]~34_combout\);

-- Location: LCCOMB_X35_Y16_N8
\U1|DATA[6]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[6]~35_combout\ = (\U1|DATA[2]~21_combout\ & (!\U1|ESTADO.BUCLE_FIN~q\ & (!\U1|ESTADO.INI_LCD~q\ & !\U1|ESTADO.CURSOR_LCD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA[2]~21_combout\,
	datab => \U1|ESTADO.BUCLE_FIN~q\,
	datac => \U1|ESTADO.INI_LCD~q\,
	datad => \U1|ESTADO.CURSOR_LCD~q\,
	combout => \U1|DATA[6]~35_combout\);

-- Location: FF_X37_Y17_N31
\U1|VEC_ASCII[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux1~1_combout\,
	ena => \U1|ESTADO.CHAR_ASCII~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|VEC_ASCII\(7));

-- Location: LCCOMB_X37_Y16_N18
\U1|DATA_A[6]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A[6]~15_combout\ = (\U1|VEC_ASCII\(7) & (!\U1|ESTADO.BUCLE_FIN~q\ & (!\U1|ESTADO.ESCRIBIR_LCD~q\ & \U1|ESTADO.CHAR_ASCII~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|VEC_ASCII\(7),
	datab => \U1|ESTADO.BUCLE_FIN~q\,
	datac => \U1|ESTADO.ESCRIBIR_LCD~q\,
	datad => \U1|ESTADO.CHAR_ASCII~q\,
	combout => \U1|DATA_A[6]~15_combout\);

-- Location: LCCOMB_X35_Y17_N26
\U1|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~10_combout\ = (\Mux1~1_combout\ & (!\U1|Add3~9\)) # (!\Mux1~1_combout\ & ((\U1|Add3~9\) # (GND)))
-- \U1|Add3~11\ = CARRY((!\U1|Add3~9\) # (!\Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~1_combout\,
	datad => VCC,
	cin => \U1|Add3~9\,
	combout => \U1|Add3~10_combout\,
	cout => \U1|Add3~11\);

-- Location: LCCOMB_X36_Y17_N12
\U1|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add4~12_combout\ = (\Mux1~1_combout\ & ((GND) # (!\U1|Add4~11\))) # (!\Mux1~1_combout\ & (\U1|Add4~11\ $ (GND)))
-- \U1|Add4~13\ = CARRY((\Mux1~1_combout\) # (!\U1|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datad => VCC,
	cin => \U1|Add4~11\,
	combout => \U1|Add4~12_combout\,
	cout => \U1|Add4~13\);

-- Location: LCCOMB_X36_Y17_N28
\U1|VEC_CHAR[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|VEC_CHAR[6]~5_combout\ = (\U1|process_0~36_combout\ & ((\U1|Add4~12_combout\))) # (!\U1|process_0~36_combout\ & (\U1|Add3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~10_combout\,
	datab => \U1|process_0~36_combout\,
	datad => \U1|Add4~12_combout\,
	combout => \U1|VEC_CHAR[6]~5_combout\);

-- Location: LCCOMB_X36_Y16_N0
\U1|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~6_combout\ = (\Mux1~2_combout\ & (\Mux3~1_combout\ & ((\Mux5~0_combout\) # (\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux4~0_combout\,
	datac => \Mux1~2_combout\,
	datad => \Mux3~1_combout\,
	combout => \U1|Add2~6_combout\);

-- Location: LCCOMB_X35_Y17_N4
\U1|Add2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~7_combout\ = \U1|Add2~6_combout\ $ ((((\U1|INC_DIR_S\(3)) # (!\Mux1~0_combout\)) # (!\U1|INC_DIR_S\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(2),
	datab => \U1|INC_DIR_S\(3),
	datac => \Mux1~0_combout\,
	datad => \U1|Add2~6_combout\,
	combout => \U1|Add2~7_combout\);

-- Location: FF_X36_Y17_N29
\U1|VEC_CHAR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|VEC_CHAR[6]~5_combout\,
	asdata => \U1|Add2~7_combout\,
	sload => \U1|ALT_INV_process_0~35_combout\,
	ena => \U1|ESTADO.ESCRIBIR_LCD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|VEC_CHAR\(6));

-- Location: LCCOMB_X37_Y16_N24
\U1|DATA_A[6]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A[6]~16_combout\ = (\U1|ESTADO.ESCRIBIR_LCD~q\ & \U1|VEC_CHAR\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|ESTADO.ESCRIBIR_LCD~q\,
	datad => \U1|VEC_CHAR\(6),
	combout => \U1|DATA_A[6]~16_combout\);

-- Location: LCCOMB_X37_Y16_N2
\U1|DATA_A[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A[6]~17_combout\ = (!\U1|ESTADO.INI_LCD~q\ & (\U1|DATA[2]~21_combout\ & ((\U1|DATA_A[6]~15_combout\) # (\U1|DATA_A[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.INI_LCD~q\,
	datab => \U1|DATA[2]~21_combout\,
	datac => \U1|DATA_A[6]~15_combout\,
	datad => \U1|DATA_A[6]~16_combout\,
	combout => \U1|DATA_A[6]~17_combout\);

-- Location: LCCOMB_X37_Y16_N0
\U1|DATA_A[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A\(6) = (GLOBAL(\U1|DATA_A[6]~3clkctrl_outclk\) & ((\U1|DATA_A[6]~17_combout\))) # (!GLOBAL(\U1|DATA_A[6]~3clkctrl_outclk\) & (\U1|DATA_A\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|DATA_A\(6),
	datac => \U1|DATA_A[6]~17_combout\,
	datad => \U1|DATA_A[6]~3clkctrl_outclk\,
	combout => \U1|DATA_A\(6));

-- Location: LCCOMB_X36_Y16_N2
\U1|DATA[6]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[6]~36_combout\ = (\U1|DATA[2]~18_combout\ & ((\U1|WideOr38~0_combout\ & (\U1|VEC_ASCII\(7))) # (!\U1|WideOr38~0_combout\ & ((\U1|VEC_CHAR\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|WideOr38~0_combout\,
	datab => \U1|DATA[2]~18_combout\,
	datac => \U1|VEC_ASCII\(7),
	datad => \U1|VEC_CHAR\(6),
	combout => \U1|DATA[6]~36_combout\);

-- Location: LCCOMB_X36_Y16_N28
\U1|DATA[6]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[6]~37_combout\ = (\U1|DATA[6]~35_combout\ & ((\U1|DATA[6]~36_combout\) # ((\U1|DATA_A\(6) & \U1|DATA[5]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA[6]~35_combout\,
	datab => \U1|DATA_A\(6),
	datac => \U1|DATA[5]~31_combout\,
	datad => \U1|DATA[6]~36_combout\,
	combout => \U1|DATA[6]~37_combout\);

-- Location: LCCOMB_X36_Y17_N14
\U1|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add4~14_combout\ = \Mux1~1_combout\ $ (!\U1|Add4~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	cin => \U1|Add4~13\,
	combout => \U1|Add4~14_combout\);

-- Location: LCCOMB_X35_Y17_N28
\U1|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~12_combout\ = \U1|Add3~11\ $ (!\Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~1_combout\,
	cin => \U1|Add3~11\,
	combout => \U1|Add3~12_combout\);

-- Location: LCCOMB_X36_Y17_N30
\U1|VEC_CHAR[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|VEC_CHAR[7]~6_combout\ = (\U1|process_0~36_combout\ & (\U1|Add4~14_combout\)) # (!\U1|process_0~36_combout\ & ((\U1|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~36_combout\,
	datab => \U1|Add4~14_combout\,
	datad => \U1|Add3~12_combout\,
	combout => \U1|VEC_CHAR[7]~6_combout\);

-- Location: LCCOMB_X36_Y17_N26
\U1|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~8_combout\ = (\U1|Add2~6_combout\ & ((\U1|INC_DIR_S\(3)) # ((!\Mux1~0_combout\) # (!\U1|INC_DIR_S\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|INC_DIR_S\(3),
	datab => \U1|INC_DIR_S\(2),
	datac => \Mux1~0_combout\,
	datad => \U1|Add2~6_combout\,
	combout => \U1|Add2~8_combout\);

-- Location: FF_X36_Y17_N31
\U1|VEC_CHAR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|VEC_CHAR[7]~6_combout\,
	asdata => \U1|Add2~8_combout\,
	sload => \U1|ALT_INV_process_0~35_combout\,
	ena => \U1|ESTADO.ESCRIBIR_LCD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|VEC_CHAR\(7));

-- Location: LCCOMB_X36_Y16_N18
\U1|DATA[7]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[7]~38_combout\ = (\U1|DATA[2]~18_combout\ & ((\U1|WideOr38~0_combout\ & (\U1|VEC_ASCII\(7))) # (!\U1|WideOr38~0_combout\ & ((\U1|VEC_CHAR\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA[2]~18_combout\,
	datab => \U1|WideOr38~0_combout\,
	datac => \U1|VEC_ASCII\(7),
	datad => \U1|VEC_CHAR\(7),
	combout => \U1|DATA[7]~38_combout\);

-- Location: LCCOMB_X37_Y16_N20
\U1|DATA_A[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A[6]~18_combout\ = (!\U1|ESTADO.INI_LCD~q\ & \U1|DATA[2]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|ESTADO.INI_LCD~q\,
	datad => \U1|DATA[2]~21_combout\,
	combout => \U1|DATA_A[6]~18_combout\);

-- Location: LCCOMB_X37_Y16_N30
\U1|DATA_A[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A[7]~19_combout\ = (\U1|DATA_A[6]~18_combout\ & ((\U1|DATA_A[6]~15_combout\) # ((\U1|ESTADO.ESCRIBIR_LCD~q\ & \U1|VEC_CHAR\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.ESCRIBIR_LCD~q\,
	datab => \U1|VEC_CHAR\(7),
	datac => \U1|DATA_A[6]~15_combout\,
	datad => \U1|DATA_A[6]~18_combout\,
	combout => \U1|DATA_A[7]~19_combout\);

-- Location: LCCOMB_X37_Y16_N26
\U1|DATA_A[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA_A\(7) = (GLOBAL(\U1|DATA_A[6]~3clkctrl_outclk\) & (\U1|DATA_A[7]~19_combout\)) # (!GLOBAL(\U1|DATA_A[6]~3clkctrl_outclk\) & ((\U1|DATA_A\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA_A[7]~19_combout\,
	datac => \U1|DATA_A\(7),
	datad => \U1|DATA_A[6]~3clkctrl_outclk\,
	combout => \U1|DATA_A\(7));

-- Location: LCCOMB_X36_Y16_N16
\U1|DATA[7]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|DATA[7]~39_combout\ = (\U1|DATA[6]~35_combout\ & ((\U1|DATA[7]~38_combout\) # ((\U1|DATA[5]~31_combout\ & \U1|DATA_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DATA[6]~35_combout\,
	datab => \U1|DATA[7]~38_combout\,
	datac => \U1|DATA[5]~31_combout\,
	datad => \U1|DATA_A\(7),
	combout => \U1|DATA[7]~39_combout\);

-- Location: LCCOMB_X39_Y18_N30
\U1|Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector7~2_combout\ = (\U1|ESTADO.CHAR_ASCII~q\) # ((\U1|ESTADO.CURSOR_HOME2~q\) # ((\U1|ESTADO.BUCLE_FIN~q\) # (\U1|ESTADO.CURSOR_LCD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CHAR_ASCII~q\,
	datab => \U1|ESTADO.CURSOR_HOME2~q\,
	datac => \U1|ESTADO.BUCLE_FIN~q\,
	datad => \U1|ESTADO.CURSOR_LCD~q\,
	combout => \U1|Selector7~2_combout\);

-- Location: LCCOMB_X40_Y18_N10
\U1|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector7~0_combout\ = (\U1|ESTADO.ESCRIBIR_LCD~q\) # ((\U1|ESTADO.LIMPIAR_PANTALLA~q\) # ((\U1|ESTADO.NADA~q\) # (\U1|ESTADO.BUCLE_INI~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.ESCRIBIR_LCD~q\,
	datab => \U1|ESTADO.LIMPIAR_PANTALLA~q\,
	datac => \U1|ESTADO.NADA~q\,
	datad => \U1|ESTADO.BUCLE_INI~q\,
	combout => \U1|Selector7~0_combout\);

-- Location: LCCOMB_X38_Y18_N8
\U1|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|WideOr2~0_combout\ = (\U1|ESTADO.CLEAR_DISPLAY~q\) # ((\U1|ESTADO.CURSOR_HOME~q\) # ((\U1|ESTADO.POS_RAM~q\) # (\U1|ESTADO.INI_LCD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CLEAR_DISPLAY~q\,
	datab => \U1|ESTADO.CURSOR_HOME~q\,
	datac => \U1|ESTADO.POS_RAM~q\,
	datad => \U1|ESTADO.INI_LCD~q\,
	combout => \U1|WideOr2~0_combout\);

-- Location: LCCOMB_X40_Y18_N0
\U1|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector7~1_combout\ = (\U1|BD_LCD\(0) & ((\U1|WideOr2~0_combout\) # ((\U1|Selector7~0_combout\ & !\U1|Equal21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector7~0_combout\,
	datab => \U1|WideOr2~0_combout\,
	datac => \U1|BD_LCD\(0),
	datad => \U1|Equal21~4_combout\,
	combout => \U1|Selector7~1_combout\);

-- Location: LCCOMB_X40_Y18_N16
\U1|Selector7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector7~3_combout\ = (\U1|Selector7~1_combout\) # ((\U1|Selector7~2_combout\ & ((\U1|Equal21~4_combout\) # (\U1|BD_LCD\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector7~2_combout\,
	datab => \U1|Equal21~4_combout\,
	datac => \U1|BD_LCD\(0),
	datad => \U1|Selector7~1_combout\,
	combout => \U1|Selector7~3_combout\);

-- Location: FF_X40_Y18_N17
\U1|BD_LCD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|BD_LCD\(0));

-- Location: LCCOMB_X40_Y18_N18
\U1|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector6~0_combout\ = (\U1|ESTADO.BUCLE_FIN~q\) # ((\U1|ESTADO.ESCRIBIR_LCD~q\) # (\U1|ESTADO.BUCLE_INI~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.BUCLE_FIN~q\,
	datac => \U1|ESTADO.ESCRIBIR_LCD~q\,
	datad => \U1|ESTADO.BUCLE_INI~q\,
	combout => \U1|Selector6~0_combout\);

-- Location: LCCOMB_X40_Y18_N20
\U1|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector6~1_combout\ = (\U1|WideOr2~0_combout\) # ((!\U1|Equal21~4_combout\ & ((\U1|ESTADO.CHAR_ASCII~q\) # (!\U1|WideOr38~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CHAR_ASCII~q\,
	datab => \U1|WideOr2~0_combout\,
	datac => \U1|Equal21~4_combout\,
	datad => \U1|WideOr38~1_combout\,
	combout => \U1|Selector6~1_combout\);

-- Location: LCCOMB_X40_Y18_N6
\U1|Selector6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector6~2_combout\ = (\U1|Selector6~0_combout\ & ((\U1|Equal21~4_combout\) # ((\U1|BD_LCD\(1))))) # (!\U1|Selector6~0_combout\ & (((\U1|BD_LCD\(1) & \U1|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal21~4_combout\,
	datab => \U1|Selector6~0_combout\,
	datac => \U1|BD_LCD\(1),
	datad => \U1|Selector6~1_combout\,
	combout => \U1|Selector6~2_combout\);

-- Location: FF_X40_Y18_N7
\U1|BD_LCD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|BD_LCD\(1));

-- Location: LCCOMB_X40_Y18_N24
\U1|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector5~1_combout\ = (\U1|WideOr2~0_combout\) # ((!\U1|Equal21~4_combout\ & ((\U1|ESTADO.ESCRIBIR_LCD~q\) # (!\U1|WideOr38~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|WideOr38~1_combout\,
	datab => \U1|WideOr2~0_combout\,
	datac => \U1|ESTADO.ESCRIBIR_LCD~q\,
	datad => \U1|Equal21~4_combout\,
	combout => \U1|Selector5~1_combout\);

-- Location: LCCOMB_X40_Y18_N30
\U1|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector5~0_combout\ = (\U1|ESTADO.BUCLE_FIN~q\) # ((\U1|ESTADO.CHAR_ASCII~q\) # (\U1|ESTADO.BUCLE_INI~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.BUCLE_FIN~q\,
	datac => \U1|ESTADO.CHAR_ASCII~q\,
	datad => \U1|ESTADO.BUCLE_INI~q\,
	combout => \U1|Selector5~0_combout\);

-- Location: LCCOMB_X40_Y18_N12
\U1|Selector5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector5~2_combout\ = (\U1|BD_LCD\(2) & (((\U1|Selector5~1_combout\) # (\U1|Selector5~0_combout\)))) # (!\U1|BD_LCD\(2) & (\U1|Equal21~4_combout\ & ((\U1|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal21~4_combout\,
	datab => \U1|Selector5~1_combout\,
	datac => \U1|BD_LCD\(2),
	datad => \U1|Selector5~0_combout\,
	combout => \U1|Selector5~2_combout\);

-- Location: FF_X40_Y18_N13
\U1|BD_LCD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|BD_LCD\(2));

-- Location: LCCOMB_X39_Y18_N16
\U1|Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector4~2_combout\ = (\U1|ESTADO.LIMPIAR_PANTALLA~q\) # ((\U1|ESTADO.CURSOR_HOME2~q\) # ((\U1|ESTADO.BUCLE_FIN~q\) # (\U1|ESTADO.NADA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.LIMPIAR_PANTALLA~q\,
	datab => \U1|ESTADO.CURSOR_HOME2~q\,
	datac => \U1|ESTADO.BUCLE_FIN~q\,
	datad => \U1|ESTADO.NADA~q\,
	combout => \U1|Selector4~2_combout\);

-- Location: LCCOMB_X39_Y17_N30
\U1|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector4~0_combout\ = (\U1|ESTADO.ESCRIBIR_LCD~q\) # ((\U1|ESTADO.CHAR_ASCII~q\) # ((\U1|ESTADO.BUCLE_INI~q\) # (\U1|ESTADO.CURSOR_LCD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.ESCRIBIR_LCD~q\,
	datab => \U1|ESTADO.CHAR_ASCII~q\,
	datac => \U1|ESTADO.BUCLE_INI~q\,
	datad => \U1|ESTADO.CURSOR_LCD~q\,
	combout => \U1|Selector4~0_combout\);

-- Location: LCCOMB_X39_Y17_N16
\U1|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector4~1_combout\ = (\U1|BD_LCD\(3) & ((\U1|WideOr2~0_combout\) # ((\U1|Selector4~0_combout\ & !\U1|Equal21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector4~0_combout\,
	datab => \U1|BD_LCD\(3),
	datac => \U1|WideOr2~0_combout\,
	datad => \U1|Equal21~4_combout\,
	combout => \U1|Selector4~1_combout\);

-- Location: LCCOMB_X39_Y17_N18
\U1|Selector4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector4~3_combout\ = (\U1|Selector4~1_combout\) # ((\U1|Selector4~2_combout\ & ((\U1|Equal21~4_combout\) # (\U1|BD_LCD\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector4~2_combout\,
	datab => \U1|Equal21~4_combout\,
	datac => \U1|BD_LCD\(3),
	datad => \U1|Selector4~1_combout\,
	combout => \U1|Selector4~3_combout\);

-- Location: FF_X39_Y17_N19
\U1|BD_LCD[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Selector4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|BD_LCD\(3));

ww_RS <= \RS~output_o\;

ww_RW <= \RW~output_o\;

ww_ENA <= \ENA~output_o\;

ww_DATA_LCD(0) <= \DATA_LCD[0]~output_o\;

ww_DATA_LCD(1) <= \DATA_LCD[1]~output_o\;

ww_DATA_LCD(2) <= \DATA_LCD[2]~output_o\;

ww_DATA_LCD(3) <= \DATA_LCD[3]~output_o\;

ww_DATA_LCD(4) <= \DATA_LCD[4]~output_o\;

ww_DATA_LCD(5) <= \DATA_LCD[5]~output_o\;

ww_DATA_LCD(6) <= \DATA_LCD[6]~output_o\;

ww_DATA_LCD(7) <= \DATA_LCD[7]~output_o\;

ww_BLCD(0) <= \BLCD[0]~output_o\;

ww_BLCD(1) <= \BLCD[1]~output_o\;

ww_BLCD(2) <= \BLCD[2]~output_o\;

ww_BLCD(3) <= \BLCD[3]~output_o\;

ww_BLCD(4) <= \BLCD[4]~output_o\;

ww_BLCD(5) <= \BLCD[5]~output_o\;

ww_BLCD(6) <= \BLCD[6]~output_o\;

ww_BLCD(7) <= \BLCD[7]~output_o\;
END structure;


