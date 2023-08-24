-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "08/24/2023 16:18:48"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	toplevel IS
    PORT (
	fpga_clk_50 : IN std_logic;
	stepmotor_start : IN std_logic;
	stepmotor_en : IN std_logic;
	stepmotor_dir : IN std_logic;
	stepmotor_vel : IN std_logic_vector(1 DOWNTO 0);
	stepmotor_pio : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- stepmotor_pio[0]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- stepmotor_pio[1]	=>  Location: PIN_AK2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- stepmotor_pio[2]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- stepmotor_pio[3]	=>  Location: PIN_AK3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- stepmotor_dir	=>  Location: PIN_Y27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fpga_clk_50	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- stepmotor_en	=>  Location: PIN_AB30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- stepmotor_start	=>  Location: PIN_AJ4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- stepmotor_vel[0]	=>  Location: PIN_AB28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- stepmotor_vel[1]	=>  Location: PIN_AC30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fpga_clk_50 : std_logic;
SIGNAL ww_stepmotor_start : std_logic;
SIGNAL ww_stepmotor_en : std_logic;
SIGNAL ww_stepmotor_dir : std_logic;
SIGNAL ww_stepmotor_vel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_stepmotor_pio : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|Mult0~mac_AX_bus\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \u1|Mult0~mac_AY_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u1|Mult0~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \u1|Mult0~8\ : std_logic;
SIGNAL \u1|Mult0~9\ : std_logic;
SIGNAL \u1|Mult0~10\ : std_logic;
SIGNAL \u1|Mult0~11\ : std_logic;
SIGNAL \u1|Mult0~12\ : std_logic;
SIGNAL \u1|Mult0~13\ : std_logic;
SIGNAL \u1|Mult0~14\ : std_logic;
SIGNAL \u1|Mult0~15\ : std_logic;
SIGNAL \u1|Mult0~16\ : std_logic;
SIGNAL \u1|Mult0~17\ : std_logic;
SIGNAL \u1|Mult0~18\ : std_logic;
SIGNAL \u1|Mult0~19\ : std_logic;
SIGNAL \u1|Mult0~20\ : std_logic;
SIGNAL \u1|Mult0~21\ : std_logic;
SIGNAL \u1|Mult0~22\ : std_logic;
SIGNAL \u1|Mult0~23\ : std_logic;
SIGNAL \u1|Mult0~24\ : std_logic;
SIGNAL \u1|Mult0~25\ : std_logic;
SIGNAL \u1|Mult0~26\ : std_logic;
SIGNAL \u1|Mult0~27\ : std_logic;
SIGNAL \u1|Mult0~28\ : std_logic;
SIGNAL \u1|Mult0~29\ : std_logic;
SIGNAL \u1|Mult0~30\ : std_logic;
SIGNAL \u1|Mult0~31\ : std_logic;
SIGNAL \u1|Mult0~32\ : std_logic;
SIGNAL \u1|Mult0~33\ : std_logic;
SIGNAL \u1|Mult0~34\ : std_logic;
SIGNAL \u1|Mult0~35\ : std_logic;
SIGNAL \u1|Mult0~36\ : std_logic;
SIGNAL \u1|Mult0~37\ : std_logic;
SIGNAL \u1|Mult0~38\ : std_logic;
SIGNAL \u1|Mult0~39\ : std_logic;
SIGNAL \u1|Mult0~40\ : std_logic;
SIGNAL \u1|Mult0~41\ : std_logic;
SIGNAL \u1|Mult0~42\ : std_logic;
SIGNAL \u1|Mult0~43\ : std_logic;
SIGNAL \u1|Mult0~44\ : std_logic;
SIGNAL \u1|Mult0~45\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \fpga_clk_50~input_o\ : std_logic;
SIGNAL \fpga_clk_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \stepmotor_dir~input_o\ : std_logic;
SIGNAL \u1|state~10_combout\ : std_logic;
SIGNAL \stepmotor_vel[1]~input_o\ : std_logic;
SIGNAL \stepmotor_vel[0]~input_o\ : std_logic;
SIGNAL \u1|tempTopCounter[4]~0_combout\ : std_logic;
SIGNAL \u1|Equal3~0_combout\ : std_logic;
SIGNAL \u1|Equal3~1_combout\ : std_logic;
SIGNAL \u1|tempTopCounter~1_combout\ : std_logic;
SIGNAL \u1|Equal3~2_combout\ : std_logic;
SIGNAL \u1|Add5~21_sumout\ : std_logic;
SIGNAL \u1|start_200_steps~0_combout\ : std_logic;
SIGNAL \stepmotor_start~input_o\ : std_logic;
SIGNAL \u1|prev_start~0_combout\ : std_logic;
SIGNAL \u1|prev_start~q\ : std_logic;
SIGNAL \u1|process_0~1_combout\ : std_logic;
SIGNAL \stepmotor_en~input_o\ : std_logic;
SIGNAL \u1|start_200_steps~1_combout\ : std_logic;
SIGNAL \u1|start_200_steps~q\ : std_logic;
SIGNAL \u1|state~11_combout\ : std_logic;
SIGNAL \u1|start_200_steps~2_combout\ : std_logic;
SIGNAL \u1|process_0~0_combout\ : std_logic;
SIGNAL \u1|step_counter[1]~0_combout\ : std_logic;
SIGNAL \u1|Add5~22\ : std_logic;
SIGNAL \u1|Add5~25_sumout\ : std_logic;
SIGNAL \u1|Add5~26\ : std_logic;
SIGNAL \u1|Add5~29_sumout\ : std_logic;
SIGNAL \u1|Add5~30\ : std_logic;
SIGNAL \u1|Add5~1_sumout\ : std_logic;
SIGNAL \u1|Add5~2\ : std_logic;
SIGNAL \u1|Add5~9_sumout\ : std_logic;
SIGNAL \u1|Add5~10\ : std_logic;
SIGNAL \u1|Add5~5_sumout\ : std_logic;
SIGNAL \u1|Add5~6\ : std_logic;
SIGNAL \u1|Add5~17_sumout\ : std_logic;
SIGNAL \u1|Add5~18\ : std_logic;
SIGNAL \u1|Add5~13_sumout\ : std_logic;
SIGNAL \u1|accel_factor~0_combout\ : std_logic;
SIGNAL \u1|LessThan0~0_combout\ : std_logic;
SIGNAL \u1|accel_factor~1_combout\ : std_logic;
SIGNAL \u1|Add2~26\ : std_logic;
SIGNAL \u1|Add2~22\ : std_logic;
SIGNAL \u1|Add2~18\ : std_logic;
SIGNAL \u1|Add2~14\ : std_logic;
SIGNAL \u1|Add2~10\ : std_logic;
SIGNAL \u1|Add2~6\ : std_logic;
SIGNAL \u1|Add2~1_sumout\ : std_logic;
SIGNAL \u1|Add1~0_combout\ : std_logic;
SIGNAL \u1|Add2~5_sumout\ : std_logic;
SIGNAL \u1|Add2~9_sumout\ : std_logic;
SIGNAL \u1|Add2~13_sumout\ : std_logic;
SIGNAL \u1|Add2~17_sumout\ : std_logic;
SIGNAL \u1|Add2~21_sumout\ : std_logic;
SIGNAL \u1|Add2~25_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|op_1~34\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|op_1~30\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|op_1~26\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|op_1~22\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|op_1~18\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|op_1~14\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|op_1~10\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|op_1~2\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|op_1~5_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|op_1~1_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|op_1~9_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|op_1~13_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|op_1~17_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~26\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~27\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~22\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~23\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~18\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~19\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~10\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~11\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~14\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~15\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~13_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~9_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[43]~9_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[43]~10_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~17_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~21_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[41]~20_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[41]~21_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|op_1~21_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_7~34_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_7~30\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_7~26\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_7~6\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[43]~2_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[42]~12_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[42]~13_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[41]~17_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_7~25_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[40]~23_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[40]~24_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_7~29_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|op_1~25_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_8~38_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_8~34\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_8~30\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_8~26\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_8~22\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_8~18\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_8~9_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[44]~6_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[44]~7_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_8~10\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_8~14\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_8~6_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[61]~0_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_8~13_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[53]~5_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[53]~8_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[52]~1_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[52]~3_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[51]~14_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_8~17_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[50]~16_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_8~21_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[50]~18_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[49]~25_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_8~25_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[48]~27_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_8~29_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[48]~28_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_8~33_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|op_1~29_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_9~38_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_9~34\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_9~30\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_9~26\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_9~22\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_9~18\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_9~14\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_9~10\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_9~6_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_9~1_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_9~9_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[61]~4_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[60]~11_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_9~13_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[60]~15_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[59]~19_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_9~17_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[58]~22_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_9~21_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[58]~26_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[57]~29_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_9~25_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[56]~30_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_9~29_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|StageOut[56]~31_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_9~33_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|op_1~33_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_10~38_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_10~34_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_10~30_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_10~26_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_10~22_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_10~18_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_10~14_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_10~10_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_10~6_cout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|op_10~1_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|op_1~1_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~26\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~27\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~22\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~23\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~18\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~19\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~14\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~15\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~10\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~11\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~6\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~7\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~5_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[40]~2_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[40]~3_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~13_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[38]~4_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[38]~5_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~17_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~21_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[36]~9_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_7~34_cout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_7~30\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_7~26\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_7~6_cout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[39]~0_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[39]~1_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[38]~6_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[37]~7_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[37]~8_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_7~25_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_7~29_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_8~34_cout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_8~30_cout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_8~26_cout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_8~22_cout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_8~18_cout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_8~14_cout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_8~10_cout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_8~6_cout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \u1|process_0~2_combout\ : std_logic;
SIGNAL \u1|Add1~1_combout\ : std_logic;
SIGNAL \u1|accel_factor~2_combout\ : std_logic;
SIGNAL \u1|Add1~2_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|op_1~2\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|op_1~5_sumout\ : std_logic;
SIGNAL \u1|Add1~3_combout\ : std_logic;
SIGNAL \u1|accel_factor~3_combout\ : std_logic;
SIGNAL \u1|accel_factor~6_combout\ : std_logic;
SIGNAL \u1|accel_factor~5_combout\ : std_logic;
SIGNAL \u1|accel_factor~10_combout\ : std_logic;
SIGNAL \u1|accel_factor~11_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|op_1~6\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|op_1~9_sumout\ : std_logic;
SIGNAL \u1|accel_factor~4_combout\ : std_logic;
SIGNAL \u1|accel_factor~7_combout\ : std_logic;
SIGNAL \u1|accel_factor~13_combout\ : std_logic;
SIGNAL \u1|accel_factor~8_combout\ : std_logic;
SIGNAL \u1|accel_factor~9_combout\ : std_logic;
SIGNAL \u1|accel_factor~12_combout\ : std_logic;
SIGNAL \u1|Add6~93_sumout\ : std_logic;
SIGNAL \u1|Add6~94\ : std_logic;
SIGNAL \u1|Add6~89_sumout\ : std_logic;
SIGNAL \u1|Add6~90\ : std_logic;
SIGNAL \u1|Add6~85_sumout\ : std_logic;
SIGNAL \u1|Add6~86\ : std_logic;
SIGNAL \u1|Add6~81_sumout\ : std_logic;
SIGNAL \u1|Add6~82\ : std_logic;
SIGNAL \u1|Add6~77_sumout\ : std_logic;
SIGNAL \u1|Add6~78\ : std_logic;
SIGNAL \u1|Add6~73_sumout\ : std_logic;
SIGNAL \u1|Add6~74\ : std_logic;
SIGNAL \u1|Add6~69_sumout\ : std_logic;
SIGNAL \u1|Add6~70\ : std_logic;
SIGNAL \u1|Add6~65_sumout\ : std_logic;
SIGNAL \u1|Add6~66\ : std_logic;
SIGNAL \u1|Add6~61_sumout\ : std_logic;
SIGNAL \u1|Add6~62\ : std_logic;
SIGNAL \u1|Add6~57_sumout\ : std_logic;
SIGNAL \u1|Add6~58\ : std_logic;
SIGNAL \u1|Add6~53_sumout\ : std_logic;
SIGNAL \u1|Add6~54\ : std_logic;
SIGNAL \u1|Add6~49_sumout\ : std_logic;
SIGNAL \u1|Add6~50\ : std_logic;
SIGNAL \u1|Add6~45_sumout\ : std_logic;
SIGNAL \u1|Add6~46\ : std_logic;
SIGNAL \u1|Add6~41_sumout\ : std_logic;
SIGNAL \u1|Add6~42\ : std_logic;
SIGNAL \u1|Add6~37_sumout\ : std_logic;
SIGNAL \u1|Add6~38\ : std_logic;
SIGNAL \u1|Add6~33_sumout\ : std_logic;
SIGNAL \u1|Add6~34\ : std_logic;
SIGNAL \u1|Add6~29_sumout\ : std_logic;
SIGNAL \u1|Add6~30\ : std_logic;
SIGNAL \u1|Add6~25_sumout\ : std_logic;
SIGNAL \u1|Add6~26\ : std_logic;
SIGNAL \u1|Add6~21_sumout\ : std_logic;
SIGNAL \u1|Add6~22\ : std_logic;
SIGNAL \u1|Add6~101_sumout\ : std_logic;
SIGNAL \u1|Add6~102\ : std_logic;
SIGNAL \u1|Add6~97_sumout\ : std_logic;
SIGNAL \u1|Add6~98\ : std_logic;
SIGNAL \u1|Add6~17_sumout\ : std_logic;
SIGNAL \u1|Add6~18\ : std_logic;
SIGNAL \u1|Add6~13_sumout\ : std_logic;
SIGNAL \u1|Add6~14\ : std_logic;
SIGNAL \u1|Add6~9_sumout\ : std_logic;
SIGNAL \u1|Add6~10\ : std_logic;
SIGNAL \u1|Add6~5_sumout\ : std_logic;
SIGNAL \u1|LessThan3~3_combout\ : std_logic;
SIGNAL \u1|LessThan3~6_combout\ : std_logic;
SIGNAL \u1|LessThan3~8_combout\ : std_logic;
SIGNAL \u1|LessThan3~9_combout\ : std_logic;
SIGNAL \u1|LessThan3~7_combout\ : std_logic;
SIGNAL \u1|LessThan3~10_combout\ : std_logic;
SIGNAL \u1|LessThan3~11_combout\ : std_logic;
SIGNAL \u1|LessThan3~5_combout\ : std_logic;
SIGNAL \u1|LessThan3~12_combout\ : std_logic;
SIGNAL \u1|LessThan3~4_combout\ : std_logic;
SIGNAL \u1|LessThan3~13_combout\ : std_logic;
SIGNAL \u1|LessThan3~14_combout\ : std_logic;
SIGNAL \u1|LessThan3~16_combout\ : std_logic;
SIGNAL \u1|LessThan3~15_combout\ : std_logic;
SIGNAL \u1|LessThan3~2_combout\ : std_logic;
SIGNAL \u1|LessThan3~17_combout\ : std_logic;
SIGNAL \u1|LessThan3~1_combout\ : std_logic;
SIGNAL \u1|LessThan3~18_combout\ : std_logic;
SIGNAL \u1|Add6~6\ : std_logic;
SIGNAL \u1|Add6~1_sumout\ : std_logic;
SIGNAL \u1|LessThan3~0_combout\ : std_logic;
SIGNAL \u1|LessThan3~19_combout\ : std_logic;
SIGNAL \u1|enable~q\ : std_logic;
SIGNAL \u1|state~7_combout\ : std_logic;
SIGNAL \u1|state.s3~q\ : std_logic;
SIGNAL \u1|state~9_combout\ : std_logic;
SIGNAL \u1|state.s2~q\ : std_logic;
SIGNAL \u1|state~8_combout\ : std_logic;
SIGNAL \u1|state.s1~q\ : std_logic;
SIGNAL \u1|state~6_combout\ : std_logic;
SIGNAL \u1|state.s0~q\ : std_logic;
SIGNAL \u1|accel_factor\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u1|counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \u1|topCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \u1|step_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_stepmotor_vel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepmotor_vel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepmotor_start~input_o\ : std_logic;
SIGNAL \ALT_INV_stepmotor_en~input_o\ : std_logic;
SIGNAL \ALT_INV_stepmotor_dir~input_o\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[56]~31_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[56]~30_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[57]~29_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[48]~28_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[48]~27_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~12_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[58]~26_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[49]~25_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[40]~24_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[40]~23_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[58]~22_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[41]~21_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[41]~20_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~11_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~10_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~9_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[59]~19_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~18_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[41]~17_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~16_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~8_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~7_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[60]~15_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[51]~14_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[42]~13_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[42]~12_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[60]~11_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[43]~10_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[43]~9_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[38]~6_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[38]~5_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[38]~4_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[53]~8_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[44]~7_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[44]~6_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[53]~5_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~3_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~2_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[61]~4_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~3_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[43]~2_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~1_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[61]~0_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[39]~1_combout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[39]~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_accel_factor~11_combout\ : std_logic;
SIGNAL \u1|ALT_INV_accel_factor~10_combout\ : std_logic;
SIGNAL \u1|ALT_INV_accel_factor~9_combout\ : std_logic;
SIGNAL \u1|ALT_INV_accel_factor~8_combout\ : std_logic;
SIGNAL \u1|ALT_INV_accel_factor~7_combout\ : std_logic;
SIGNAL \u1|ALT_INV_accel_factor~6_combout\ : std_logic;
SIGNAL \u1|ALT_INV_accel_factor~5_combout\ : std_logic;
SIGNAL \u1|ALT_INV_accel_factor~4_combout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~3_combout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~2_combout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \u1|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \u1|ALT_INV_accel_factor~1_combout\ : std_logic;
SIGNAL \u1|ALT_INV_accel_factor~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_accel_factor\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|ALT_INV_tempTopCounter~1_combout\ : std_logic;
SIGNAL \u1|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \u1|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_state~11_combout\ : std_logic;
SIGNAL \u1|ALT_INV_start_200_steps~2_combout\ : std_logic;
SIGNAL \u1|ALT_INV_start_200_steps~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_prev_start~q\ : std_logic;
SIGNAL \u1|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~18_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~17_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~16_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~15_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~14_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~13_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~12_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~11_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~10_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~9_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~8_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~7_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_state~7_combout\ : std_logic;
SIGNAL \u1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_start_200_steps~q\ : std_logic;
SIGNAL \u1|ALT_INV_enable~q\ : std_logic;
SIGNAL \u1|ALT_INV_state.s3~q\ : std_logic;
SIGNAL \u1|ALT_INV_state.s2~q\ : std_logic;
SIGNAL \u1|ALT_INV_state.s1~q\ : std_logic;
SIGNAL \u1|ALT_INV_state.s0~q\ : std_logic;
SIGNAL \u1|ALT_INV_accel_factor~13_combout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~33_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~29_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~25_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~21_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[0]~25_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[0]~25_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~17_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[1]~21_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[1]~21_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~13_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[2]~17_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[2]~17_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~9_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[3]~13_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~5_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~13_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[4]~9_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[3]~5_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~1_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[4]~9_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~5_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|ALT_INV_op_1~9_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ : std_logic;
SIGNAL \u1|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|ALT_INV_op_1~5_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \u1|Div1|auto_generated|divider|ALT_INV_op_1~1_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_step_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|ALT_INV_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \u1|ALT_INV_topCounter\ : std_logic_vector(25 DOWNTO 0);

BEGIN

ww_fpga_clk_50 <= fpga_clk_50;
ww_stepmotor_start <= stepmotor_start;
ww_stepmotor_en <= stepmotor_en;
ww_stepmotor_dir <= stepmotor_dir;
ww_stepmotor_vel <= stepmotor_vel;
stepmotor_pio <= ww_stepmotor_pio;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u1|Mult0~mac_AX_bus\ <= (gnd & \u1|Equal3~2_combout\ & \u1|Equal3~1_combout\ & \u1|Equal3~0_combout\ & NOT \u1|tempTopCounter~1_combout\ & NOT \stepmotor_vel[1]~input_o\ & \u1|tempTopCounter~1_combout\ & \stepmotor_vel[1]~input_o\ & 
\u1|tempTopCounter[4]~0_combout\ & \u1|Equal3~2_combout\ & \u1|Equal3~1_combout\ & \u1|Equal3~0_combout\ & NOT \u1|tempTopCounter~1_combout\ & \u1|Equal3~1_combout\ & NOT \stepmotor_vel[0]~input_o\ & NOT \u1|Equal3~0_combout\ & 
\u1|tempTopCounter~1_combout\ & NOT \u1|Equal3~1_combout\ & \stepmotor_vel[0]~input_o\ & \u1|Equal3~0_combout\ & \u1|tempTopCounter[4]~0_combout\ & gnd & gnd & gnd & gnd);

\u1|Mult0~mac_AY_bus\ <= (\u1|accel_factor\(2) & \u1|accel_factor\(1) & NOT \u1|accel_factor\(0));

\u1|topCounter\(0) <= \u1|Mult0~mac_RESULTA_bus\(0);
\u1|topCounter\(1) <= \u1|Mult0~mac_RESULTA_bus\(1);
\u1|topCounter\(2) <= \u1|Mult0~mac_RESULTA_bus\(2);
\u1|topCounter\(3) <= \u1|Mult0~mac_RESULTA_bus\(3);
\u1|topCounter\(4) <= \u1|Mult0~mac_RESULTA_bus\(4);
\u1|topCounter\(5) <= \u1|Mult0~mac_RESULTA_bus\(5);
\u1|topCounter\(6) <= \u1|Mult0~mac_RESULTA_bus\(6);
\u1|topCounter\(7) <= \u1|Mult0~mac_RESULTA_bus\(7);
\u1|topCounter\(8) <= \u1|Mult0~mac_RESULTA_bus\(8);
\u1|topCounter\(9) <= \u1|Mult0~mac_RESULTA_bus\(9);
\u1|topCounter\(10) <= \u1|Mult0~mac_RESULTA_bus\(10);
\u1|topCounter\(11) <= \u1|Mult0~mac_RESULTA_bus\(11);
\u1|topCounter\(12) <= \u1|Mult0~mac_RESULTA_bus\(12);
\u1|topCounter\(13) <= \u1|Mult0~mac_RESULTA_bus\(13);
\u1|topCounter\(14) <= \u1|Mult0~mac_RESULTA_bus\(14);
\u1|topCounter\(15) <= \u1|Mult0~mac_RESULTA_bus\(15);
\u1|topCounter\(16) <= \u1|Mult0~mac_RESULTA_bus\(16);
\u1|topCounter\(17) <= \u1|Mult0~mac_RESULTA_bus\(17);
\u1|topCounter\(18) <= \u1|Mult0~mac_RESULTA_bus\(18);
\u1|topCounter\(19) <= \u1|Mult0~mac_RESULTA_bus\(19);
\u1|topCounter\(20) <= \u1|Mult0~mac_RESULTA_bus\(20);
\u1|topCounter\(21) <= \u1|Mult0~mac_RESULTA_bus\(21);
\u1|topCounter\(22) <= \u1|Mult0~mac_RESULTA_bus\(22);
\u1|topCounter\(23) <= \u1|Mult0~mac_RESULTA_bus\(23);
\u1|topCounter\(24) <= \u1|Mult0~mac_RESULTA_bus\(24);
\u1|topCounter\(25) <= \u1|Mult0~mac_RESULTA_bus\(25);
\u1|Mult0~8\ <= \u1|Mult0~mac_RESULTA_bus\(26);
\u1|Mult0~9\ <= \u1|Mult0~mac_RESULTA_bus\(27);
\u1|Mult0~10\ <= \u1|Mult0~mac_RESULTA_bus\(28);
\u1|Mult0~11\ <= \u1|Mult0~mac_RESULTA_bus\(29);
\u1|Mult0~12\ <= \u1|Mult0~mac_RESULTA_bus\(30);
\u1|Mult0~13\ <= \u1|Mult0~mac_RESULTA_bus\(31);
\u1|Mult0~14\ <= \u1|Mult0~mac_RESULTA_bus\(32);
\u1|Mult0~15\ <= \u1|Mult0~mac_RESULTA_bus\(33);
\u1|Mult0~16\ <= \u1|Mult0~mac_RESULTA_bus\(34);
\u1|Mult0~17\ <= \u1|Mult0~mac_RESULTA_bus\(35);
\u1|Mult0~18\ <= \u1|Mult0~mac_RESULTA_bus\(36);
\u1|Mult0~19\ <= \u1|Mult0~mac_RESULTA_bus\(37);
\u1|Mult0~20\ <= \u1|Mult0~mac_RESULTA_bus\(38);
\u1|Mult0~21\ <= \u1|Mult0~mac_RESULTA_bus\(39);
\u1|Mult0~22\ <= \u1|Mult0~mac_RESULTA_bus\(40);
\u1|Mult0~23\ <= \u1|Mult0~mac_RESULTA_bus\(41);
\u1|Mult0~24\ <= \u1|Mult0~mac_RESULTA_bus\(42);
\u1|Mult0~25\ <= \u1|Mult0~mac_RESULTA_bus\(43);
\u1|Mult0~26\ <= \u1|Mult0~mac_RESULTA_bus\(44);
\u1|Mult0~27\ <= \u1|Mult0~mac_RESULTA_bus\(45);
\u1|Mult0~28\ <= \u1|Mult0~mac_RESULTA_bus\(46);
\u1|Mult0~29\ <= \u1|Mult0~mac_RESULTA_bus\(47);
\u1|Mult0~30\ <= \u1|Mult0~mac_RESULTA_bus\(48);
\u1|Mult0~31\ <= \u1|Mult0~mac_RESULTA_bus\(49);
\u1|Mult0~32\ <= \u1|Mult0~mac_RESULTA_bus\(50);
\u1|Mult0~33\ <= \u1|Mult0~mac_RESULTA_bus\(51);
\u1|Mult0~34\ <= \u1|Mult0~mac_RESULTA_bus\(52);
\u1|Mult0~35\ <= \u1|Mult0~mac_RESULTA_bus\(53);
\u1|Mult0~36\ <= \u1|Mult0~mac_RESULTA_bus\(54);
\u1|Mult0~37\ <= \u1|Mult0~mac_RESULTA_bus\(55);
\u1|Mult0~38\ <= \u1|Mult0~mac_RESULTA_bus\(56);
\u1|Mult0~39\ <= \u1|Mult0~mac_RESULTA_bus\(57);
\u1|Mult0~40\ <= \u1|Mult0~mac_RESULTA_bus\(58);
\u1|Mult0~41\ <= \u1|Mult0~mac_RESULTA_bus\(59);
\u1|Mult0~42\ <= \u1|Mult0~mac_RESULTA_bus\(60);
\u1|Mult0~43\ <= \u1|Mult0~mac_RESULTA_bus\(61);
\u1|Mult0~44\ <= \u1|Mult0~mac_RESULTA_bus\(62);
\u1|Mult0~45\ <= \u1|Mult0~mac_RESULTA_bus\(63);
\ALT_INV_stepmotor_vel[1]~input_o\ <= NOT \stepmotor_vel[1]~input_o\;
\ALT_INV_stepmotor_vel[0]~input_o\ <= NOT \stepmotor_vel[0]~input_o\;
\ALT_INV_stepmotor_start~input_o\ <= NOT \stepmotor_start~input_o\;
\ALT_INV_stepmotor_en~input_o\ <= NOT \stepmotor_en~input_o\;
\ALT_INV_stepmotor_dir~input_o\ <= NOT \stepmotor_dir~input_o\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[56]~31_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[56]~31_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[56]~30_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[56]~30_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[57]~29_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[57]~29_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[48]~28_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[48]~28_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[48]~27_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[48]~27_combout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~12_combout\ <= NOT \u1|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[58]~26_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[58]~26_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[49]~25_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[49]~25_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[40]~24_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[40]~24_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[40]~23_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[40]~23_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[58]~22_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[58]~22_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[41]~21_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[41]~21_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[41]~20_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[41]~20_combout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~11_combout\ <= NOT \u1|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~10_combout\ <= NOT \u1|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~9_combout\ <= NOT \u1|Div0|auto_generated|divider|divider|StageOut[36]~9_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[59]~19_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[59]~19_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~18_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[50]~18_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[41]~17_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[41]~17_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~16_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[50]~16_combout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~8_combout\ <= NOT \u1|Div0|auto_generated|divider|divider|StageOut[37]~8_combout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~7_combout\ <= NOT \u1|Div0|auto_generated|divider|divider|StageOut[37]~7_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[60]~15_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[60]~15_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[51]~14_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[51]~14_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[42]~13_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[42]~13_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[42]~12_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[42]~12_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[60]~11_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[60]~11_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[43]~10_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[43]~10_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[43]~9_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[43]~9_combout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[38]~6_combout\ <= NOT \u1|Div0|auto_generated|divider|divider|StageOut[38]~6_combout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[38]~5_combout\ <= NOT \u1|Div0|auto_generated|divider|divider|StageOut[38]~5_combout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[38]~4_combout\ <= NOT \u1|Div0|auto_generated|divider|divider|StageOut[38]~4_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[53]~8_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[53]~8_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[44]~7_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[44]~7_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[44]~6_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[44]~6_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[53]~5_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[53]~5_combout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~3_combout\ <= NOT \u1|Div0|auto_generated|divider|divider|StageOut[40]~3_combout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~2_combout\ <= NOT \u1|Div0|auto_generated|divider|divider|StageOut[40]~2_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[61]~4_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[61]~4_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~3_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[52]~3_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[43]~2_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[43]~2_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~1_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[52]~1_combout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[61]~0_combout\ <= NOT \u1|Div1|auto_generated|divider|divider|StageOut[61]~0_combout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[39]~1_combout\ <= NOT \u1|Div0|auto_generated|divider|divider|StageOut[39]~1_combout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[39]~0_combout\ <= NOT \u1|Div0|auto_generated|divider|divider|StageOut[39]~0_combout\;
\u1|ALT_INV_accel_factor~11_combout\ <= NOT \u1|accel_factor~11_combout\;
\u1|ALT_INV_accel_factor~10_combout\ <= NOT \u1|accel_factor~10_combout\;
\u1|ALT_INV_accel_factor~9_combout\ <= NOT \u1|accel_factor~9_combout\;
\u1|ALT_INV_accel_factor~8_combout\ <= NOT \u1|accel_factor~8_combout\;
\u1|ALT_INV_accel_factor~7_combout\ <= NOT \u1|accel_factor~7_combout\;
\u1|ALT_INV_accel_factor~6_combout\ <= NOT \u1|accel_factor~6_combout\;
\u1|ALT_INV_accel_factor~5_combout\ <= NOT \u1|accel_factor~5_combout\;
\u1|ALT_INV_accel_factor~4_combout\ <= NOT \u1|accel_factor~4_combout\;
\u1|ALT_INV_Add1~3_combout\ <= NOT \u1|Add1~3_combout\;
\u1|ALT_INV_Add1~2_combout\ <= NOT \u1|Add1~2_combout\;
\u1|ALT_INV_Add1~1_combout\ <= NOT \u1|Add1~1_combout\;
\u1|ALT_INV_process_0~2_combout\ <= NOT \u1|process_0~2_combout\;
\u1|ALT_INV_accel_factor~1_combout\ <= NOT \u1|accel_factor~1_combout\;
\u1|ALT_INV_accel_factor~0_combout\ <= NOT \u1|accel_factor~0_combout\;
\u1|ALT_INV_Add1~0_combout\ <= NOT \u1|Add1~0_combout\;
\u1|ALT_INV_LessThan0~0_combout\ <= NOT \u1|LessThan0~0_combout\;
\u1|ALT_INV_accel_factor\(0) <= NOT \u1|accel_factor\(0);
\u1|ALT_INV_tempTopCounter~1_combout\ <= NOT \u1|tempTopCounter~1_combout\;
\u1|ALT_INV_Equal3~1_combout\ <= NOT \u1|Equal3~1_combout\;
\u1|ALT_INV_Equal3~0_combout\ <= NOT \u1|Equal3~0_combout\;
\u1|ALT_INV_state~11_combout\ <= NOT \u1|state~11_combout\;
\u1|ALT_INV_start_200_steps~2_combout\ <= NOT \u1|start_200_steps~2_combout\;
\u1|ALT_INV_start_200_steps~0_combout\ <= NOT \u1|start_200_steps~0_combout\;
\u1|ALT_INV_prev_start~q\ <= NOT \u1|prev_start~q\;
\u1|ALT_INV_process_0~1_combout\ <= NOT \u1|process_0~1_combout\;
\u1|ALT_INV_LessThan3~18_combout\ <= NOT \u1|LessThan3~18_combout\;
\u1|ALT_INV_LessThan3~17_combout\ <= NOT \u1|LessThan3~17_combout\;
\u1|ALT_INV_LessThan3~16_combout\ <= NOT \u1|LessThan3~16_combout\;
\u1|ALT_INV_LessThan3~15_combout\ <= NOT \u1|LessThan3~15_combout\;
\u1|ALT_INV_LessThan3~14_combout\ <= NOT \u1|LessThan3~14_combout\;
\u1|ALT_INV_LessThan3~13_combout\ <= NOT \u1|LessThan3~13_combout\;
\u1|ALT_INV_LessThan3~12_combout\ <= NOT \u1|LessThan3~12_combout\;
\u1|ALT_INV_LessThan3~11_combout\ <= NOT \u1|LessThan3~11_combout\;
\u1|ALT_INV_LessThan3~10_combout\ <= NOT \u1|LessThan3~10_combout\;
\u1|ALT_INV_LessThan3~9_combout\ <= NOT \u1|LessThan3~9_combout\;
\u1|ALT_INV_LessThan3~8_combout\ <= NOT \u1|LessThan3~8_combout\;
\u1|ALT_INV_LessThan3~7_combout\ <= NOT \u1|LessThan3~7_combout\;
\u1|ALT_INV_LessThan3~6_combout\ <= NOT \u1|LessThan3~6_combout\;
\u1|ALT_INV_LessThan3~5_combout\ <= NOT \u1|LessThan3~5_combout\;
\u1|ALT_INV_LessThan3~4_combout\ <= NOT \u1|LessThan3~4_combout\;
\u1|ALT_INV_LessThan3~3_combout\ <= NOT \u1|LessThan3~3_combout\;
\u1|ALT_INV_LessThan3~2_combout\ <= NOT \u1|LessThan3~2_combout\;
\u1|ALT_INV_LessThan3~1_combout\ <= NOT \u1|LessThan3~1_combout\;
\u1|ALT_INV_LessThan3~0_combout\ <= NOT \u1|LessThan3~0_combout\;
\u1|ALT_INV_state~7_combout\ <= NOT \u1|state~7_combout\;
\u1|ALT_INV_process_0~0_combout\ <= NOT \u1|process_0~0_combout\;
\u1|ALT_INV_start_200_steps~q\ <= NOT \u1|start_200_steps~q\;
\u1|ALT_INV_enable~q\ <= NOT \u1|enable~q\;
\u1|ALT_INV_state.s3~q\ <= NOT \u1|state.s3~q\;
\u1|ALT_INV_state.s2~q\ <= NOT \u1|state.s2~q\;
\u1|ALT_INV_state.s1~q\ <= NOT \u1|state.s1~q\;
\u1|ALT_INV_state.s0~q\ <= NOT \u1|state.s0~q\;
\u1|ALT_INV_accel_factor~13_combout\ <= NOT \u1|accel_factor~13_combout\;
\u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~33_sumout\ <= NOT \u1|Div1|auto_generated|divider|my_abs_num|op_1~33_sumout\;
\u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~29_sumout\ <= NOT \u1|Div1|auto_generated|divider|my_abs_num|op_1~29_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_9~33_sumout\;
\u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~25_sumout\ <= NOT \u1|Div1|auto_generated|divider|my_abs_num|op_1~25_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_9~29_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_8~33_sumout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ <= NOT \u1|Div0|auto_generated|divider|divider|op_7~29_sumout\;
\u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~21_sumout\ <= NOT \u1|Div1|auto_generated|divider|my_abs_num|op_1~21_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_7~29_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_9~25_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_8~29_sumout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ <= NOT \u1|Div0|auto_generated|divider|divider|op_7~25_sumout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[0]~25_sumout\ <= NOT \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\;
\u1|ALT_INV_Add2~25_sumout\ <= NOT \u1|Add2~25_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[0]~25_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\;
\u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~17_sumout\ <= NOT \u1|Div1|auto_generated|divider|my_abs_num|op_1~17_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_7~25_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_9~21_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_8~25_sumout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \u1|Div0|auto_generated|divider|divider|op_7~21_sumout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[1]~21_sumout\ <= NOT \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~21_sumout\;
\u1|ALT_INV_Add2~21_sumout\ <= NOT \u1|Add2~21_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[1]~21_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~21_sumout\;
\u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~13_sumout\ <= NOT \u1|Div1|auto_generated|divider|my_abs_num|op_1~13_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_7~21_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_9~17_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_8~21_sumout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \u1|Div0|auto_generated|divider|divider|op_7~17_sumout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[2]~17_sumout\ <= NOT \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~17_sumout\;
\u1|ALT_INV_Add2~17_sumout\ <= NOT \u1|Add2~17_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[2]~17_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~17_sumout\;
\u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~9_sumout\ <= NOT \u1|Div1|auto_generated|divider|my_abs_num|op_1~9_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_7~17_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_9~13_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_8~17_sumout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \u1|Div0|auto_generated|divider|divider|op_7~13_sumout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[3]~13_sumout\ <= NOT \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~13_sumout\;
\u1|ALT_INV_Add2~13_sumout\ <= NOT \u1|Add2~13_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_7~13_sumout\;
\u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~5_sumout\ <= NOT \u1|Div1|auto_generated|divider|my_abs_num|op_1~5_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~13_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~13_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[4]~9_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~9_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_8~13_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_7~9_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[3]~5_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\;
\u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~1_sumout\ <= NOT \u1|Div1|auto_generated|divider|my_abs_num|op_1~1_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_7~5_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_7~1_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_9~9_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_8~9_sumout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \u1|Div0|auto_generated|divider|divider|op_7~9_sumout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[4]~9_sumout\ <= NOT \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9_sumout\;
\u1|ALT_INV_Add2~9_sumout\ <= NOT \u1|Add2~9_sumout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~5_sumout\ <= NOT \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~5_sumout\;
\u1|ALT_INV_Add2~5_sumout\ <= NOT \u1|Add2~5_sumout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\ <= NOT \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_8~1_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_9~1_sumout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \u1|Div0|auto_generated|divider|divider|op_7~1_sumout\;
\u1|Div1|auto_generated|divider|ALT_INV_op_1~9_sumout\ <= NOT \u1|Div1|auto_generated|divider|op_1~9_sumout\;
\u1|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ <= NOT \u1|Div1|auto_generated|divider|divider|op_10~1_sumout\;
\u1|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \u1|Div0|auto_generated|divider|divider|op_8~1_sumout\;
\u1|Div1|auto_generated|divider|ALT_INV_op_1~5_sumout\ <= NOT \u1|Div1|auto_generated|divider|op_1~5_sumout\;
\u1|ALT_INV_Add2~1_sumout\ <= NOT \u1|Add2~1_sumout\;
\u1|Div1|auto_generated|divider|ALT_INV_op_1~1_sumout\ <= NOT \u1|Div1|auto_generated|divider|op_1~1_sumout\;
\u1|ALT_INV_step_counter\(2) <= NOT \u1|step_counter\(2);
\u1|ALT_INV_step_counter\(1) <= NOT \u1|step_counter\(1);
\u1|ALT_INV_step_counter\(0) <= NOT \u1|step_counter\(0);
\u1|ALT_INV_counter\(19) <= NOT \u1|counter\(19);
\u1|ALT_INV_counter\(20) <= NOT \u1|counter\(20);
\u1|ALT_INV_counter\(0) <= NOT \u1|counter\(0);
\u1|ALT_INV_counter\(1) <= NOT \u1|counter\(1);
\u1|ALT_INV_counter\(2) <= NOT \u1|counter\(2);
\u1|ALT_INV_counter\(3) <= NOT \u1|counter\(3);
\u1|ALT_INV_counter\(4) <= NOT \u1|counter\(4);
\u1|ALT_INV_counter\(5) <= NOT \u1|counter\(5);
\u1|ALT_INV_counter\(6) <= NOT \u1|counter\(6);
\u1|ALT_INV_counter\(7) <= NOT \u1|counter\(7);
\u1|ALT_INV_counter\(8) <= NOT \u1|counter\(8);
\u1|ALT_INV_counter\(9) <= NOT \u1|counter\(9);
\u1|ALT_INV_counter\(10) <= NOT \u1|counter\(10);
\u1|ALT_INV_counter\(11) <= NOT \u1|counter\(11);
\u1|ALT_INV_counter\(12) <= NOT \u1|counter\(12);
\u1|ALT_INV_counter\(13) <= NOT \u1|counter\(13);
\u1|ALT_INV_counter\(14) <= NOT \u1|counter\(14);
\u1|ALT_INV_counter\(15) <= NOT \u1|counter\(15);
\u1|ALT_INV_counter\(16) <= NOT \u1|counter\(16);
\u1|ALT_INV_counter\(17) <= NOT \u1|counter\(17);
\u1|ALT_INV_counter\(18) <= NOT \u1|counter\(18);
\u1|ALT_INV_counter\(21) <= NOT \u1|counter\(21);
\u1|ALT_INV_counter\(22) <= NOT \u1|counter\(22);
\u1|ALT_INV_counter\(23) <= NOT \u1|counter\(23);
\u1|ALT_INV_counter\(24) <= NOT \u1|counter\(24);
\u1|ALT_INV_counter\(25) <= NOT \u1|counter\(25);
\u1|ALT_INV_topCounter\(25) <= NOT \u1|topCounter\(25);
\u1|ALT_INV_topCounter\(24) <= NOT \u1|topCounter\(24);
\u1|ALT_INV_topCounter\(23) <= NOT \u1|topCounter\(23);
\u1|ALT_INV_topCounter\(22) <= NOT \u1|topCounter\(22);
\u1|ALT_INV_topCounter\(21) <= NOT \u1|topCounter\(21);
\u1|ALT_INV_topCounter\(20) <= NOT \u1|topCounter\(20);
\u1|ALT_INV_topCounter\(19) <= NOT \u1|topCounter\(19);
\u1|ALT_INV_topCounter\(18) <= NOT \u1|topCounter\(18);
\u1|ALT_INV_topCounter\(17) <= NOT \u1|topCounter\(17);
\u1|ALT_INV_topCounter\(16) <= NOT \u1|topCounter\(16);
\u1|ALT_INV_topCounter\(15) <= NOT \u1|topCounter\(15);
\u1|ALT_INV_topCounter\(14) <= NOT \u1|topCounter\(14);
\u1|ALT_INV_topCounter\(13) <= NOT \u1|topCounter\(13);
\u1|ALT_INV_topCounter\(12) <= NOT \u1|topCounter\(12);
\u1|ALT_INV_topCounter\(11) <= NOT \u1|topCounter\(11);
\u1|ALT_INV_topCounter\(10) <= NOT \u1|topCounter\(10);
\u1|ALT_INV_topCounter\(9) <= NOT \u1|topCounter\(9);
\u1|ALT_INV_topCounter\(8) <= NOT \u1|topCounter\(8);
\u1|ALT_INV_topCounter\(7) <= NOT \u1|topCounter\(7);
\u1|ALT_INV_topCounter\(6) <= NOT \u1|topCounter\(6);
\u1|ALT_INV_topCounter\(5) <= NOT \u1|topCounter\(5);
\u1|ALT_INV_topCounter\(4) <= NOT \u1|topCounter\(4);
\u1|ALT_INV_topCounter\(3) <= NOT \u1|topCounter\(3);
\u1|ALT_INV_topCounter\(2) <= NOT \u1|topCounter\(2);
\u1|ALT_INV_topCounter\(1) <= NOT \u1|topCounter\(1);
\u1|ALT_INV_topCounter\(0) <= NOT \u1|topCounter\(0);
\u1|ALT_INV_step_counter\(6) <= NOT \u1|step_counter\(6);
\u1|ALT_INV_step_counter\(7) <= NOT \u1|step_counter\(7);
\u1|ALT_INV_step_counter\(4) <= NOT \u1|step_counter\(4);
\u1|ALT_INV_step_counter\(5) <= NOT \u1|step_counter\(5);
\u1|ALT_INV_step_counter\(3) <= NOT \u1|step_counter\(3);

-- Location: IOOBUF_X40_Y0_N2
\stepmotor_pio[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|ALT_INV_state.s0~q\,
	devoe => ww_devoe,
	o => ww_stepmotor_pio(0));

-- Location: IOOBUF_X20_Y0_N36
\stepmotor_pio[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|state.s1~q\,
	devoe => ww_devoe,
	o => ww_stepmotor_pio(1));

-- Location: IOOBUF_X40_Y0_N19
\stepmotor_pio[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|state.s2~q\,
	devoe => ww_devoe,
	o => ww_stepmotor_pio(2));

-- Location: IOOBUF_X20_Y0_N53
\stepmotor_pio[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|state.s3~q\,
	devoe => ww_devoe,
	o => ww_stepmotor_pio(3));

-- Location: IOIBUF_X89_Y25_N4
\fpga_clk_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fpga_clk_50,
	o => \fpga_clk_50~input_o\);

-- Location: CLKCTRL_G10
\fpga_clk_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \fpga_clk_50~input_o\,
	outclk => \fpga_clk_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y25_N21
\stepmotor_dir~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepmotor_dir,
	o => \stepmotor_dir~input_o\);

-- Location: LABCELL_X45_Y9_N51
\u1|state~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|state~10_combout\ = ( \stepmotor_dir~input_o\ & ( \u1|state.s0~q\ & ( \u1|state.s2~q\ ) ) ) # ( \stepmotor_dir~input_o\ & ( !\u1|state.s0~q\ & ( \u1|state.s2~q\ ) ) ) # ( !\stepmotor_dir~input_o\ & ( !\u1|state.s0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_state.s2~q\,
	datae => \ALT_INV_stepmotor_dir~input_o\,
	dataf => \u1|ALT_INV_state.s0~q\,
	combout => \u1|state~10_combout\);

-- Location: IOIBUF_X89_Y25_N55
\stepmotor_vel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepmotor_vel(1),
	o => \stepmotor_vel[1]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\stepmotor_vel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepmotor_vel(0),
	o => \stepmotor_vel[0]~input_o\);

-- Location: MLABCELL_X87_Y22_N24
\u1|tempTopCounter[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|tempTopCounter[4]~0_combout\ = (\stepmotor_vel[1]~input_o\ & \stepmotor_vel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stepmotor_vel[1]~input_o\,
	datab => \ALT_INV_stepmotor_vel[0]~input_o\,
	combout => \u1|tempTopCounter[4]~0_combout\);

-- Location: MLABCELL_X87_Y22_N12
\u1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Equal3~0_combout\ = (!\stepmotor_vel[0]~input_o\ & \stepmotor_vel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_stepmotor_vel[0]~input_o\,
	datac => \ALT_INV_stepmotor_vel[1]~input_o\,
	combout => \u1|Equal3~0_combout\);

-- Location: MLABCELL_X87_Y22_N57
\u1|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Equal3~1_combout\ = (!\stepmotor_vel[1]~input_o\ & \stepmotor_vel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stepmotor_vel[1]~input_o\,
	datac => \ALT_INV_stepmotor_vel[0]~input_o\,
	combout => \u1|Equal3~1_combout\);

-- Location: MLABCELL_X87_Y22_N27
\u1|tempTopCounter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|tempTopCounter~1_combout\ = !\stepmotor_vel[1]~input_o\ $ (!\stepmotor_vel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stepmotor_vel[1]~input_o\,
	datab => \ALT_INV_stepmotor_vel[0]~input_o\,
	combout => \u1|tempTopCounter~1_combout\);

-- Location: MLABCELL_X87_Y21_N33
\u1|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Equal3~2_combout\ = ( !\stepmotor_vel[1]~input_o\ & ( !\stepmotor_vel[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_stepmotor_vel[0]~input_o\,
	dataf => \ALT_INV_stepmotor_vel[1]~input_o\,
	combout => \u1|Equal3~2_combout\);

-- Location: MLABCELL_X87_Y18_N30
\u1|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add5~21_sumout\ = SUM(( \u1|step_counter\(0) ) + ( VCC ) + ( !VCC ))
-- \u1|Add5~22\ = CARRY(( \u1|step_counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_step_counter\(0),
	cin => GND,
	sumout => \u1|Add5~21_sumout\,
	cout => \u1|Add5~22\);

-- Location: MLABCELL_X87_Y18_N24
\u1|start_200_steps~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|start_200_steps~0_combout\ = ( \u1|step_counter\(6) & ( !\u1|step_counter\(2) & ( (\u1|step_counter\(7) & (\u1|step_counter\(3) & (!\u1|step_counter\(1) & !\u1|step_counter\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_step_counter\(7),
	datab => \u1|ALT_INV_step_counter\(3),
	datac => \u1|ALT_INV_step_counter\(1),
	datad => \u1|ALT_INV_step_counter\(0),
	datae => \u1|ALT_INV_step_counter\(6),
	dataf => \u1|ALT_INV_step_counter\(2),
	combout => \u1|start_200_steps~0_combout\);

-- Location: IOIBUF_X22_Y0_N35
\stepmotor_start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepmotor_start,
	o => \stepmotor_start~input_o\);

-- Location: LABCELL_X81_Y16_N18
\u1|prev_start~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|prev_start~0_combout\ = ( !\stepmotor_start~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_stepmotor_start~input_o\,
	combout => \u1|prev_start~0_combout\);

-- Location: FF_X81_Y16_N20
\u1|prev_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|prev_start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|prev_start~q\);

-- Location: LABCELL_X81_Y16_N15
\u1|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|process_0~1_combout\ = (!\u1|step_counter\(4) & !\u1|step_counter\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_step_counter\(4),
	datac => \u1|ALT_INV_step_counter\(5),
	combout => \u1|process_0~1_combout\);

-- Location: IOIBUF_X89_Y21_N4
\stepmotor_en~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepmotor_en,
	o => \stepmotor_en~input_o\);

-- Location: LABCELL_X81_Y16_N0
\u1|start_200_steps~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|start_200_steps~1_combout\ = ( \u1|start_200_steps~q\ & ( \stepmotor_en~input_o\ & ( (!\u1|start_200_steps~0_combout\) # (!\u1|process_0~1_combout\) ) ) ) # ( !\u1|start_200_steps~q\ & ( \stepmotor_en~input_o\ & ( (!\stepmotor_start~input_o\ & 
-- (!\u1|prev_start~q\ & ((!\u1|start_200_steps~0_combout\) # (!\u1|process_0~1_combout\)))) ) ) ) # ( \u1|start_200_steps~q\ & ( !\stepmotor_en~input_o\ & ( (!\u1|start_200_steps~0_combout\) # (!\u1|process_0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101011000000100000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_start_200_steps~0_combout\,
	datab => \ALT_INV_stepmotor_start~input_o\,
	datac => \u1|ALT_INV_prev_start~q\,
	datad => \u1|ALT_INV_process_0~1_combout\,
	datae => \u1|ALT_INV_start_200_steps~q\,
	dataf => \ALT_INV_stepmotor_en~input_o\,
	combout => \u1|start_200_steps~1_combout\);

-- Location: FF_X81_Y16_N2
\u1|start_200_steps\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|start_200_steps~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|start_200_steps~q\);

-- Location: LABCELL_X81_Y16_N24
\u1|state~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|state~11_combout\ = ( \stepmotor_en~input_o\ & ( (\u1|enable~q\ & \u1|start_200_steps~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_enable~q\,
	datad => \u1|ALT_INV_start_200_steps~q\,
	dataf => \ALT_INV_stepmotor_en~input_o\,
	combout => \u1|state~11_combout\);

-- Location: LABCELL_X81_Y16_N12
\u1|start_200_steps~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|start_200_steps~2_combout\ = ( \stepmotor_en~input_o\ & ( (!\stepmotor_start~input_o\ & !\u1|prev_start~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_stepmotor_start~input_o\,
	datac => \u1|ALT_INV_prev_start~q\,
	dataf => \ALT_INV_stepmotor_en~input_o\,
	combout => \u1|start_200_steps~2_combout\);

-- Location: LABCELL_X83_Y16_N6
\u1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|process_0~0_combout\ = ( \u1|step_counter\(6) & ( (\u1|step_counter\(7) & (((\u1|step_counter\(4)) # (\u1|step_counter\(3))) # (\u1|step_counter\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010101010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_step_counter\(7),
	datab => \u1|ALT_INV_step_counter\(5),
	datac => \u1|ALT_INV_step_counter\(3),
	datad => \u1|ALT_INV_step_counter\(4),
	dataf => \u1|ALT_INV_step_counter\(6),
	combout => \u1|process_0~0_combout\);

-- Location: LABCELL_X81_Y16_N27
\u1|step_counter[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|step_counter[1]~0_combout\ = ( \u1|process_0~0_combout\ & ( ((\u1|process_0~1_combout\ & \u1|start_200_steps~0_combout\)) # (\u1|start_200_steps~2_combout\) ) ) # ( !\u1|process_0~0_combout\ & ( (((\u1|process_0~1_combout\ & 
-- \u1|start_200_steps~0_combout\)) # (\u1|start_200_steps~2_combout\)) # (\u1|state~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101111111011101110111111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_state~11_combout\,
	datab => \u1|ALT_INV_start_200_steps~2_combout\,
	datac => \u1|ALT_INV_process_0~1_combout\,
	datad => \u1|ALT_INV_start_200_steps~0_combout\,
	dataf => \u1|ALT_INV_process_0~0_combout\,
	combout => \u1|step_counter[1]~0_combout\);

-- Location: FF_X87_Y18_N38
\u1|step_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \u1|Add5~21_sumout\,
	sclr => \u1|ALT_INV_state~7_combout\,
	sload => VCC,
	ena => \u1|step_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|step_counter\(0));

-- Location: MLABCELL_X87_Y18_N33
\u1|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add5~25_sumout\ = SUM(( \u1|step_counter\(1) ) + ( GND ) + ( \u1|Add5~22\ ))
-- \u1|Add5~26\ = CARRY(( \u1|step_counter\(1) ) + ( GND ) + ( \u1|Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_step_counter\(1),
	cin => \u1|Add5~22\,
	sumout => \u1|Add5~25_sumout\,
	cout => \u1|Add5~26\);

-- Location: FF_X87_Y18_N56
\u1|step_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \u1|Add5~25_sumout\,
	sclr => \u1|ALT_INV_state~7_combout\,
	sload => VCC,
	ena => \u1|step_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|step_counter\(1));

-- Location: MLABCELL_X87_Y18_N36
\u1|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add5~29_sumout\ = SUM(( \u1|step_counter\(2) ) + ( GND ) + ( \u1|Add5~26\ ))
-- \u1|Add5~30\ = CARRY(( \u1|step_counter\(2) ) + ( GND ) + ( \u1|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_step_counter\(2),
	cin => \u1|Add5~26\,
	sumout => \u1|Add5~29_sumout\,
	cout => \u1|Add5~30\);

-- Location: FF_X87_Y18_N35
\u1|step_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \u1|Add5~29_sumout\,
	sclr => \u1|ALT_INV_state~7_combout\,
	sload => VCC,
	ena => \u1|step_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|step_counter\(2));

-- Location: MLABCELL_X87_Y18_N39
\u1|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add5~1_sumout\ = SUM(( \u1|step_counter\(3) ) + ( GND ) + ( \u1|Add5~30\ ))
-- \u1|Add5~2\ = CARRY(( \u1|step_counter\(3) ) + ( GND ) + ( \u1|Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_step_counter\(3),
	cin => \u1|Add5~30\,
	sumout => \u1|Add5~1_sumout\,
	cout => \u1|Add5~2\);

-- Location: FF_X87_Y18_N47
\u1|step_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \u1|Add5~1_sumout\,
	sclr => \u1|ALT_INV_state~7_combout\,
	sload => VCC,
	ena => \u1|step_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|step_counter\(3));

-- Location: MLABCELL_X87_Y18_N42
\u1|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add5~9_sumout\ = SUM(( \u1|step_counter\(4) ) + ( GND ) + ( \u1|Add5~2\ ))
-- \u1|Add5~10\ = CARRY(( \u1|step_counter\(4) ) + ( GND ) + ( \u1|Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_step_counter\(4),
	cin => \u1|Add5~2\,
	sumout => \u1|Add5~9_sumout\,
	cout => \u1|Add5~10\);

-- Location: FF_X87_Y18_N53
\u1|step_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \u1|Add5~9_sumout\,
	sclr => \u1|ALT_INV_state~7_combout\,
	sload => VCC,
	ena => \u1|step_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|step_counter\(4));

-- Location: MLABCELL_X87_Y18_N45
\u1|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add5~5_sumout\ = SUM(( \u1|step_counter\(5) ) + ( GND ) + ( \u1|Add5~10\ ))
-- \u1|Add5~6\ = CARRY(( \u1|step_counter\(5) ) + ( GND ) + ( \u1|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_step_counter\(5),
	cin => \u1|Add5~10\,
	sumout => \u1|Add5~5_sumout\,
	cout => \u1|Add5~6\);

-- Location: FF_X87_Y18_N59
\u1|step_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \u1|Add5~5_sumout\,
	sclr => \u1|ALT_INV_state~7_combout\,
	sload => VCC,
	ena => \u1|step_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|step_counter\(5));

-- Location: MLABCELL_X87_Y18_N48
\u1|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add5~17_sumout\ = SUM(( \u1|step_counter\(6) ) + ( GND ) + ( \u1|Add5~6\ ))
-- \u1|Add5~18\ = CARRY(( \u1|step_counter\(6) ) + ( GND ) + ( \u1|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_step_counter\(6),
	cin => \u1|Add5~6\,
	sumout => \u1|Add5~17_sumout\,
	cout => \u1|Add5~18\);

-- Location: FF_X87_Y18_N26
\u1|step_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \u1|Add5~17_sumout\,
	sclr => \u1|ALT_INV_state~7_combout\,
	sload => VCC,
	ena => \u1|step_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|step_counter\(6));

-- Location: MLABCELL_X87_Y18_N51
\u1|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add5~13_sumout\ = SUM(( \u1|step_counter\(7) ) + ( GND ) + ( \u1|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_step_counter\(7),
	cin => \u1|Add5~18\,
	sumout => \u1|Add5~13_sumout\);

-- Location: FF_X87_Y18_N29
\u1|step_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \u1|Add5~13_sumout\,
	sclr => \u1|ALT_INV_state~7_combout\,
	sload => VCC,
	ena => \u1|step_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|step_counter\(7));

-- Location: MLABCELL_X87_Y18_N57
\u1|accel_factor~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|accel_factor~0_combout\ = ( \u1|step_counter\(4) & ( ((\u1|step_counter\(2) & \u1|step_counter\(1))) # (\u1|step_counter\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_step_counter\(2),
	datab => \u1|ALT_INV_step_counter\(3),
	datac => \u1|ALT_INV_step_counter\(1),
	dataf => \u1|ALT_INV_step_counter\(4),
	combout => \u1|accel_factor~0_combout\);

-- Location: MLABCELL_X87_Y18_N54
\u1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan0~0_combout\ = ( \u1|step_counter\(5) & ( (\u1|step_counter\(4) & (((\u1|step_counter\(1)) # (\u1|step_counter\(3))) # (\u1|step_counter\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000111000011110000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_step_counter\(2),
	datab => \u1|ALT_INV_step_counter\(3),
	datac => \u1|ALT_INV_step_counter\(4),
	datad => \u1|ALT_INV_step_counter\(1),
	dataf => \u1|ALT_INV_step_counter\(5),
	combout => \u1|LessThan0~0_combout\);

-- Location: LABCELL_X83_Y16_N18
\u1|accel_factor~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|accel_factor~1_combout\ = ( \u1|LessThan0~0_combout\ & ( \u1|step_counter\(6) & ( (\u1|step_counter\(7) & \u1|start_200_steps~q\) ) ) ) # ( !\u1|LessThan0~0_combout\ & ( \u1|step_counter\(6) & ( (\u1|step_counter\(7) & \u1|start_200_steps~q\) ) ) ) # 
-- ( \u1|LessThan0~0_combout\ & ( !\u1|step_counter\(6) & ( (\u1|step_counter\(7) & (\u1|start_200_steps~q\ & ((\u1|step_counter\(5)) # (\u1|accel_factor~0_combout\)))) ) ) ) # ( !\u1|LessThan0~0_combout\ & ( !\u1|step_counter\(6) & ( (\u1|start_200_steps~q\ 
-- & ((!\u1|step_counter\(7)) # ((\u1|step_counter\(5)) # (\u1|accel_factor~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011000000010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_step_counter\(7),
	datab => \u1|ALT_INV_start_200_steps~q\,
	datac => \u1|ALT_INV_accel_factor~0_combout\,
	datad => \u1|ALT_INV_step_counter\(5),
	datae => \u1|ALT_INV_LessThan0~0_combout\,
	dataf => \u1|ALT_INV_step_counter\(6),
	combout => \u1|accel_factor~1_combout\);

-- Location: MLABCELL_X87_Y18_N0
\u1|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add2~25_sumout\ = SUM(( \u1|step_counter\(1) ) + ( \u1|step_counter\(2) ) + ( !VCC ))
-- \u1|Add2~26\ = CARRY(( \u1|step_counter\(1) ) + ( \u1|step_counter\(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_step_counter\(2),
	datad => \u1|ALT_INV_step_counter\(1),
	cin => GND,
	sumout => \u1|Add2~25_sumout\,
	cout => \u1|Add2~26\);

-- Location: MLABCELL_X87_Y18_N3
\u1|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add2~21_sumout\ = SUM(( \u1|step_counter\(3) ) + ( VCC ) + ( \u1|Add2~26\ ))
-- \u1|Add2~22\ = CARRY(( \u1|step_counter\(3) ) + ( VCC ) + ( \u1|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_step_counter\(3),
	cin => \u1|Add2~26\,
	sumout => \u1|Add2~21_sumout\,
	cout => \u1|Add2~22\);

-- Location: MLABCELL_X87_Y18_N6
\u1|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add2~17_sumout\ = SUM(( \u1|step_counter\(4) ) + ( GND ) + ( \u1|Add2~22\ ))
-- \u1|Add2~18\ = CARRY(( \u1|step_counter\(4) ) + ( GND ) + ( \u1|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_step_counter\(4),
	cin => \u1|Add2~22\,
	sumout => \u1|Add2~17_sumout\,
	cout => \u1|Add2~18\);

-- Location: MLABCELL_X87_Y18_N9
\u1|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add2~13_sumout\ = SUM(( \u1|step_counter\(5) ) + ( VCC ) + ( \u1|Add2~18\ ))
-- \u1|Add2~14\ = CARRY(( \u1|step_counter\(5) ) + ( VCC ) + ( \u1|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_step_counter\(5),
	cin => \u1|Add2~18\,
	sumout => \u1|Add2~13_sumout\,
	cout => \u1|Add2~14\);

-- Location: MLABCELL_X87_Y18_N12
\u1|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add2~9_sumout\ = SUM(( \u1|step_counter\(6) ) + ( VCC ) + ( \u1|Add2~14\ ))
-- \u1|Add2~10\ = CARRY(( \u1|step_counter\(6) ) + ( VCC ) + ( \u1|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_step_counter\(6),
	cin => \u1|Add2~14\,
	sumout => \u1|Add2~9_sumout\,
	cout => \u1|Add2~10\);

-- Location: MLABCELL_X87_Y18_N15
\u1|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add2~5_sumout\ = SUM(( \u1|step_counter\(7) ) + ( GND ) + ( \u1|Add2~10\ ))
-- \u1|Add2~6\ = CARRY(( \u1|step_counter\(7) ) + ( GND ) + ( \u1|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_step_counter\(7),
	cin => \u1|Add2~10\,
	sumout => \u1|Add2~5_sumout\,
	cout => \u1|Add2~6\);

-- Location: MLABCELL_X87_Y18_N18
\u1|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add2~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u1|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u1|Add2~6\,
	sumout => \u1|Add2~1_sumout\);

-- Location: MLABCELL_X84_Y16_N30
\u1|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~0_combout\ = ( \u1|start_200_steps~q\ & ( \u1|step_counter\(6) & ( \u1|Add2~1_sumout\ ) ) ) # ( !\u1|start_200_steps~q\ & ( \u1|step_counter\(6) & ( \u1|Add2~1_sumout\ ) ) ) # ( \u1|start_200_steps~q\ & ( !\u1|step_counter\(6) & ( 
-- (\u1|Add2~1_sumout\ & ((\u1|LessThan0~0_combout\) # (\u1|step_counter\(7)))) ) ) ) # ( !\u1|start_200_steps~q\ & ( !\u1|step_counter\(6) & ( \u1|Add2~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_step_counter\(7),
	datac => \u1|ALT_INV_Add2~1_sumout\,
	datad => \u1|ALT_INV_LessThan0~0_combout\,
	datae => \u1|ALT_INV_start_200_steps~q\,
	dataf => \u1|ALT_INV_step_counter\(6),
	combout => \u1|Add1~0_combout\);

-- Location: LABCELL_X85_Y18_N0
\u1|Div1|auto_generated|divider|my_abs_num|op_1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|my_abs_num|op_1~33_sumout\ = SUM(( !\u1|Add2~1_sumout\ $ (!\u1|step_counter\(0)) ) + ( \u1|Add2~1_sumout\ ) + ( !VCC ))
-- \u1|Div1|auto_generated|divider|my_abs_num|op_1~34\ = CARRY(( !\u1|Add2~1_sumout\ $ (!\u1|step_counter\(0)) ) + ( \u1|Add2~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_Add2~1_sumout\,
	datad => \u1|ALT_INV_step_counter\(0),
	cin => GND,
	sumout => \u1|Div1|auto_generated|divider|my_abs_num|op_1~33_sumout\,
	cout => \u1|Div1|auto_generated|divider|my_abs_num|op_1~34\);

-- Location: LABCELL_X85_Y18_N3
\u1|Div1|auto_generated|divider|my_abs_num|op_1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|my_abs_num|op_1~29_sumout\ = SUM(( !\u1|Add2~1_sumout\ $ (\u1|step_counter\(1)) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~34\ ))
-- \u1|Div1|auto_generated|divider|my_abs_num|op_1~30\ = CARRY(( !\u1|Add2~1_sumout\ $ (\u1|step_counter\(1)) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_Add2~1_sumout\,
	datad => \u1|ALT_INV_step_counter\(1),
	cin => \u1|Div1|auto_generated|divider|my_abs_num|op_1~34\,
	sumout => \u1|Div1|auto_generated|divider|my_abs_num|op_1~29_sumout\,
	cout => \u1|Div1|auto_generated|divider|my_abs_num|op_1~30\);

-- Location: LABCELL_X85_Y18_N6
\u1|Div1|auto_generated|divider|my_abs_num|op_1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|my_abs_num|op_1~25_sumout\ = SUM(( !\u1|Add2~1_sumout\ $ (!\u1|Add2~25_sumout\) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~30\ ))
-- \u1|Div1|auto_generated|divider|my_abs_num|op_1~26\ = CARRY(( !\u1|Add2~1_sumout\ $ (!\u1|Add2~25_sumout\) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_Add2~1_sumout\,
	datad => \u1|ALT_INV_Add2~25_sumout\,
	cin => \u1|Div1|auto_generated|divider|my_abs_num|op_1~30\,
	sumout => \u1|Div1|auto_generated|divider|my_abs_num|op_1~25_sumout\,
	cout => \u1|Div1|auto_generated|divider|my_abs_num|op_1~26\);

-- Location: LABCELL_X85_Y18_N9
\u1|Div1|auto_generated|divider|my_abs_num|op_1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|my_abs_num|op_1~21_sumout\ = SUM(( !\u1|Add2~1_sumout\ $ (!\u1|Add2~21_sumout\) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~26\ ))
-- \u1|Div1|auto_generated|divider|my_abs_num|op_1~22\ = CARRY(( !\u1|Add2~1_sumout\ $ (!\u1|Add2~21_sumout\) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_Add2~1_sumout\,
	datad => \u1|ALT_INV_Add2~21_sumout\,
	cin => \u1|Div1|auto_generated|divider|my_abs_num|op_1~26\,
	sumout => \u1|Div1|auto_generated|divider|my_abs_num|op_1~21_sumout\,
	cout => \u1|Div1|auto_generated|divider|my_abs_num|op_1~22\);

-- Location: LABCELL_X85_Y18_N12
\u1|Div1|auto_generated|divider|my_abs_num|op_1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|my_abs_num|op_1~17_sumout\ = SUM(( !\u1|Add2~1_sumout\ $ (!\u1|Add2~17_sumout\) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~22\ ))
-- \u1|Div1|auto_generated|divider|my_abs_num|op_1~18\ = CARRY(( !\u1|Add2~1_sumout\ $ (!\u1|Add2~17_sumout\) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_Add2~1_sumout\,
	datad => \u1|ALT_INV_Add2~17_sumout\,
	cin => \u1|Div1|auto_generated|divider|my_abs_num|op_1~22\,
	sumout => \u1|Div1|auto_generated|divider|my_abs_num|op_1~17_sumout\,
	cout => \u1|Div1|auto_generated|divider|my_abs_num|op_1~18\);

-- Location: LABCELL_X85_Y18_N15
\u1|Div1|auto_generated|divider|my_abs_num|op_1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|my_abs_num|op_1~13_sumout\ = SUM(( !\u1|Add2~1_sumout\ $ (!\u1|Add2~13_sumout\) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~18\ ))
-- \u1|Div1|auto_generated|divider|my_abs_num|op_1~14\ = CARRY(( !\u1|Add2~1_sumout\ $ (!\u1|Add2~13_sumout\) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_Add2~1_sumout\,
	datad => \u1|ALT_INV_Add2~13_sumout\,
	cin => \u1|Div1|auto_generated|divider|my_abs_num|op_1~18\,
	sumout => \u1|Div1|auto_generated|divider|my_abs_num|op_1~13_sumout\,
	cout => \u1|Div1|auto_generated|divider|my_abs_num|op_1~14\);

-- Location: LABCELL_X85_Y18_N18
\u1|Div1|auto_generated|divider|my_abs_num|op_1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|my_abs_num|op_1~9_sumout\ = SUM(( !\u1|Add2~1_sumout\ $ (!\u1|Add2~9_sumout\) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~14\ ))
-- \u1|Div1|auto_generated|divider|my_abs_num|op_1~10\ = CARRY(( !\u1|Add2~1_sumout\ $ (!\u1|Add2~9_sumout\) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_Add2~1_sumout\,
	datad => \u1|ALT_INV_Add2~9_sumout\,
	cin => \u1|Div1|auto_generated|divider|my_abs_num|op_1~14\,
	sumout => \u1|Div1|auto_generated|divider|my_abs_num|op_1~9_sumout\,
	cout => \u1|Div1|auto_generated|divider|my_abs_num|op_1~10\);

-- Location: LABCELL_X85_Y18_N21
\u1|Div1|auto_generated|divider|my_abs_num|op_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|my_abs_num|op_1~1_sumout\ = SUM(( !\u1|Add2~1_sumout\ $ (!\u1|Add2~5_sumout\) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~10\ ))
-- \u1|Div1|auto_generated|divider|my_abs_num|op_1~2\ = CARRY(( !\u1|Add2~1_sumout\ $ (!\u1|Add2~5_sumout\) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_Add2~1_sumout\,
	datac => \u1|ALT_INV_Add2~5_sumout\,
	cin => \u1|Div1|auto_generated|divider|my_abs_num|op_1~10\,
	sumout => \u1|Div1|auto_generated|divider|my_abs_num|op_1~1_sumout\,
	cout => \u1|Div1|auto_generated|divider|my_abs_num|op_1~2\);

-- Location: LABCELL_X85_Y18_N24
\u1|Div1|auto_generated|divider|my_abs_num|op_1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|my_abs_num|op_1~5_sumout\ = SUM(( GND ) + ( GND ) + ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div1|auto_generated|divider|my_abs_num|op_1~2\,
	sumout => \u1|Div1|auto_generated|divider|my_abs_num|op_1~5_sumout\);

-- Location: LABCELL_X85_Y18_N30
\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\ = SUM(( \u1|Div1|auto_generated|divider|my_abs_num|op_1~17_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~26\ = CARRY(( \u1|Div1|auto_generated|divider|my_abs_num|op_1~17_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~27\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~17_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~26\,
	shareout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~27\);

-- Location: LABCELL_X85_Y18_N33
\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~21_sumout\ = SUM(( \u1|Div1|auto_generated|divider|my_abs_num|op_1~13_sumout\ ) + ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~27\ ) + ( 
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~26\ ))
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~22\ = CARRY(( \u1|Div1|auto_generated|divider|my_abs_num|op_1~13_sumout\ ) + ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~27\ ) + ( 
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~26\ ))
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~23\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~13_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~26\,
	sharein => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~27\,
	sumout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~21_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~22\,
	shareout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~23\);

-- Location: LABCELL_X85_Y18_N36
\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~17_sumout\ = SUM(( !\u1|Div1|auto_generated|divider|my_abs_num|op_1~9_sumout\ ) + ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~23\ ) + ( 
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~22\ ))
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~18\ = CARRY(( !\u1|Div1|auto_generated|divider|my_abs_num|op_1~9_sumout\ ) + ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~23\ ) + ( 
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~22\ ))
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~19\ = SHARE(\u1|Div1|auto_generated|divider|my_abs_num|op_1~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~9_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~22\,
	sharein => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~23\,
	sumout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~17_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~18\,
	shareout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~19\);

-- Location: LABCELL_X85_Y18_N39
\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_sumout\ = SUM(( !\u1|Div1|auto_generated|divider|my_abs_num|op_1~1_sumout\ ) + ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~19\ ) + ( 
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~18\ ))
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ = CARRY(( !\u1|Div1|auto_generated|divider|my_abs_num|op_1~1_sumout\ ) + ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~19\ ) + ( 
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~18\ ))
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ = SHARE(\u1|Div1|auto_generated|divider|my_abs_num|op_1~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~1_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~18\,
	sharein => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~19\,
	sumout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~6\,
	shareout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~7\);

-- Location: LABCELL_X85_Y18_N42
\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~9_sumout\ = SUM(( \u1|Div1|auto_generated|divider|my_abs_num|op_1~5_sumout\ ) + ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ ) + ( 
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ ))
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~10\ = CARRY(( \u1|Div1|auto_generated|divider|my_abs_num|op_1~5_sumout\ ) + ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ ) + ( 
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ ))
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~5_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~6\,
	sharein => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~7\,
	sumout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~9_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~10\,
	shareout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~11\);

-- Location: LABCELL_X85_Y18_N45
\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~13_sumout\ = SUM(( GND ) + ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~11\ ) + ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~10\ ))
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~14\ = CARRY(( GND ) + ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~11\ ) + ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~10\ ))
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~10\,
	sharein => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~11\,
	sumout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~13_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~14\,
	shareout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~15\);

-- Location: LABCELL_X85_Y18_N48
\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ = SUM(( VCC ) + ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~15\ ) + ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~14\,
	sharein => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~15\,
	sumout => \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\);

-- Location: LABCELL_X85_Y18_N57
\u1|Div1|auto_generated|divider|divider|StageOut[43]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[43]~9_combout\ = ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_sumout\ & ( !\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[3]~5_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[43]~9_combout\);

-- Location: MLABCELL_X84_Y18_N12
\u1|Div1|auto_generated|divider|divider|StageOut[43]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[43]~10_combout\ = ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~1_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[43]~10_combout\);

-- Location: MLABCELL_X84_Y18_N21
\u1|Div1|auto_generated|divider|divider|StageOut[41]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[41]~20_combout\ = ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~21_sumout\ & ( !\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[1]~21_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[41]~20_combout\);

-- Location: MLABCELL_X84_Y18_N54
\u1|Div1|auto_generated|divider|divider|StageOut[41]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[41]~21_combout\ = ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~13_sumout\ & ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	dataf => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~13_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[41]~21_combout\);

-- Location: MLABCELL_X84_Y18_N24
\u1|Div1|auto_generated|divider|divider|op_7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_7~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u1|Div1|auto_generated|divider|divider|op_7~34_cout\);

-- Location: MLABCELL_X84_Y18_N27
\u1|Div1|auto_generated|divider|divider|op_7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_7~29_sumout\ = SUM(( \u1|Div1|auto_generated|divider|my_abs_num|op_1~21_sumout\ ) + ( VCC ) + ( \u1|Div1|auto_generated|divider|divider|op_7~34_cout\ ))
-- \u1|Div1|auto_generated|divider|divider|op_7~30\ = CARRY(( \u1|Div1|auto_generated|divider|my_abs_num|op_1~21_sumout\ ) + ( VCC ) + ( \u1|Div1|auto_generated|divider|divider|op_7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~21_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_7~34_cout\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_7~29_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_7~30\);

-- Location: MLABCELL_X84_Y18_N30
\u1|Div1|auto_generated|divider|divider|op_7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_7~25_sumout\ = SUM(( (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\))) # 
-- (\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & (\u1|Div1|auto_generated|divider|my_abs_num|op_1~17_sumout\)) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|divider|op_7~30\ ))
-- \u1|Div1|auto_generated|divider|divider|op_7~26\ = CARRY(( (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\))) # 
-- (\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & (\u1|Div1|auto_generated|divider|my_abs_num|op_1~17_sumout\)) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|divider|op_7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~17_sumout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[0]~25_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_7~30\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_7~25_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_7~26\);

-- Location: MLABCELL_X84_Y18_N33
\u1|Div1|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( (\u1|Div1|auto_generated|divider|divider|StageOut[41]~21_combout\) # (\u1|Div1|auto_generated|divider|divider|StageOut[41]~20_combout\) ) + ( VCC ) + ( 
-- \u1|Div1|auto_generated|divider|divider|op_7~26\ ))
-- \u1|Div1|auto_generated|divider|divider|op_7~22\ = CARRY(( (\u1|Div1|auto_generated|divider|divider|StageOut[41]~21_combout\) # (\u1|Div1|auto_generated|divider|divider|StageOut[41]~20_combout\) ) + ( VCC ) + ( 
-- \u1|Div1|auto_generated|divider|divider|op_7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[41]~20_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[41]~21_combout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_7~26\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_7~22\);

-- Location: MLABCELL_X84_Y18_N36
\u1|Div1|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~17_sumout\))) # 
-- (\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & (\u1|Div1|auto_generated|divider|my_abs_num|op_1~9_sumout\)) ) + ( VCC ) + ( \u1|Div1|auto_generated|divider|divider|op_7~22\ ))
-- \u1|Div1|auto_generated|divider|divider|op_7~18\ = CARRY(( (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~17_sumout\))) # 
-- (\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & (\u1|Div1|auto_generated|divider|my_abs_num|op_1~9_sumout\)) ) + ( VCC ) + ( \u1|Div1|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~9_sumout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[2]~17_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_7~22\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_7~18\);

-- Location: MLABCELL_X84_Y18_N39
\u1|Div1|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( GND ) + ( (\u1|Div1|auto_generated|divider|divider|StageOut[43]~10_combout\) # (\u1|Div1|auto_generated|divider|divider|StageOut[43]~9_combout\) ) + ( 
-- \u1|Div1|auto_generated|divider|divider|op_7~18\ ))
-- \u1|Div1|auto_generated|divider|divider|op_7~6\ = CARRY(( GND ) + ( (\u1|Div1|auto_generated|divider|divider|StageOut[43]~10_combout\) # (\u1|Div1|auto_generated|divider|divider|StageOut[43]~9_combout\) ) + ( 
-- \u1|Div1|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[43]~9_combout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[43]~10_combout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_7~18\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_7~6\);

-- Location: MLABCELL_X84_Y18_N42
\u1|Div1|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~9_sumout\))) # 
-- (\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & (\u1|Div1|auto_generated|divider|my_abs_num|op_1~5_sumout\)) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|divider|op_7~6\ ))
-- \u1|Div1|auto_generated|divider|divider|op_7~10\ = CARRY(( (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~9_sumout\))) # 
-- (\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & (\u1|Div1|auto_generated|divider|my_abs_num|op_1~5_sumout\)) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|divider|op_7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	datab => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~5_sumout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[4]~9_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_7~6\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_7~10\);

-- Location: MLABCELL_X84_Y18_N45
\u1|Div1|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~13_sumout\) ) + ( VCC ) + ( 
-- \u1|Div1|auto_generated|divider|divider|op_7~10\ ))
-- \u1|Div1|auto_generated|divider|divider|op_7~14\ = CARRY(( (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~13_sumout\) ) + ( VCC ) + ( 
-- \u1|Div1|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~13_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_7~10\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_7~14\);

-- Location: MLABCELL_X84_Y18_N48
\u1|Div1|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u1|Div1|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div1|auto_generated|divider|divider|op_7~14\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: MLABCELL_X84_Y18_N9
\u1|Div1|auto_generated|divider|divider|StageOut[43]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[43]~2_combout\ = ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_sumout\ & ( (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\) # 
-- (\u1|Div1|auto_generated|divider|my_abs_num|op_1~1_sumout\) ) ) # ( !\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_sumout\ & ( (\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & 
-- \u1|Div1|auto_generated|divider|my_abs_num|op_1~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	datad => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~1_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[3]~5_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[43]~2_combout\);

-- Location: MLABCELL_X82_Y18_N48
\u1|Div1|auto_generated|divider|divider|StageOut[42]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[42]~12_combout\ = ( !\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[2]~17_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[42]~12_combout\);

-- Location: MLABCELL_X84_Y18_N6
\u1|Div1|auto_generated|divider|divider|StageOut[42]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[42]~13_combout\ = ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~9_sumout\ & ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	dataf => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~9_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[42]~13_combout\);

-- Location: MLABCELL_X84_Y18_N0
\u1|Div1|auto_generated|divider|divider|StageOut[41]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[41]~17_combout\ = ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~13_sumout\ ) ) # ( 
-- !\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~13_sumout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[1]~21_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[41]~17_combout\);

-- Location: MLABCELL_X82_Y18_N15
\u1|Div1|auto_generated|divider|divider|StageOut[40]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[40]~23_combout\ = ( !\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[0]~25_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[40]~23_combout\);

-- Location: MLABCELL_X84_Y18_N57
\u1|Div1|auto_generated|divider|divider|StageOut[40]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[40]~24_combout\ = ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~17_sumout\ & ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	dataf => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~17_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[40]~24_combout\);

-- Location: LABCELL_X83_Y18_N0
\u1|Div1|auto_generated|divider|divider|op_8~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_8~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u1|Div1|auto_generated|divider|divider|op_8~38_cout\);

-- Location: LABCELL_X83_Y18_N3
\u1|Div1|auto_generated|divider|divider|op_8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_8~33_sumout\ = SUM(( \u1|Div1|auto_generated|divider|my_abs_num|op_1~25_sumout\ ) + ( VCC ) + ( \u1|Div1|auto_generated|divider|divider|op_8~38_cout\ ))
-- \u1|Div1|auto_generated|divider|divider|op_8~34\ = CARRY(( \u1|Div1|auto_generated|divider|my_abs_num|op_1~25_sumout\ ) + ( VCC ) + ( \u1|Div1|auto_generated|divider|divider|op_8~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~25_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_8~38_cout\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_8~33_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_8~34\);

-- Location: LABCELL_X83_Y18_N6
\u1|Div1|auto_generated|divider|divider|op_8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_8~29_sumout\ = SUM(( (!\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|op_7~29_sumout\))) # (\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u1|Div1|auto_generated|divider|my_abs_num|op_1~21_sumout\)) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|divider|op_8~34\ ))
-- \u1|Div1|auto_generated|divider|divider|op_8~30\ = CARRY(( (!\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|op_7~29_sumout\))) # (\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u1|Div1|auto_generated|divider|my_abs_num|op_1~21_sumout\)) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|divider|op_8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~21_sumout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_8~34\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_8~29_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_8~30\);

-- Location: LABCELL_X83_Y18_N9
\u1|Div1|auto_generated|divider|divider|op_8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_8~25_sumout\ = SUM(( (!\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (\u1|Div1|auto_generated|divider|divider|op_7~25_sumout\)) # (\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\u1|Div1|auto_generated|divider|divider|StageOut[40]~24_combout\) # (\u1|Div1|auto_generated|divider|divider|StageOut[40]~23_combout\)))) ) + ( VCC ) + ( \u1|Div1|auto_generated|divider|divider|op_8~30\ ))
-- \u1|Div1|auto_generated|divider|divider|op_8~26\ = CARRY(( (!\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (\u1|Div1|auto_generated|divider|divider|op_7~25_sumout\)) # (\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\u1|Div1|auto_generated|divider|divider|StageOut[40]~24_combout\) # (\u1|Div1|auto_generated|divider|divider|StageOut[40]~23_combout\)))) ) + ( VCC ) + ( \u1|Div1|auto_generated|divider|divider|op_8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[40]~23_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[40]~24_combout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_8~30\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_8~25_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_8~26\);

-- Location: LABCELL_X83_Y18_N12
\u1|Div1|auto_generated|divider|divider|op_8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_8~21_sumout\ = SUM(( (!\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|op_7~21_sumout\))) # (\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[41]~17_combout\)) ) + ( VCC ) + ( \u1|Div1|auto_generated|divider|divider|op_8~26\ ))
-- \u1|Div1|auto_generated|divider|divider|op_8~22\ = CARRY(( (!\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|op_7~21_sumout\))) # (\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[41]~17_combout\)) ) + ( VCC ) + ( \u1|Div1|auto_generated|divider|divider|op_8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[41]~17_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_8~26\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_8~21_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_8~22\);

-- Location: LABCELL_X83_Y18_N15
\u1|Div1|auto_generated|divider|divider|op_8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_8~17_sumout\ = SUM(( (!\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (((\u1|Div1|auto_generated|divider|divider|op_7~17_sumout\)))) # (\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\u1|Div1|auto_generated|divider|divider|StageOut[42]~13_combout\)) # (\u1|Div1|auto_generated|divider|divider|StageOut[42]~12_combout\))) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|divider|op_8~22\ ))
-- \u1|Div1|auto_generated|divider|divider|op_8~18\ = CARRY(( (!\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (((\u1|Div1|auto_generated|divider|divider|op_7~17_sumout\)))) # (\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\u1|Div1|auto_generated|divider|divider|StageOut[42]~13_combout\)) # (\u1|Div1|auto_generated|divider|divider|StageOut[42]~12_combout\))) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|divider|op_8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[42]~12_combout\,
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[42]~13_combout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_8~22\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_8~17_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_8~18\);

-- Location: LABCELL_X83_Y18_N18
\u1|Div1|auto_generated|divider|divider|op_8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_8~9_sumout\ = SUM(( GND ) + ( (!\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|op_7~5_sumout\))) # (\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[43]~2_combout\)) ) + ( \u1|Div1|auto_generated|divider|divider|op_8~18\ ))
-- \u1|Div1|auto_generated|divider|divider|op_8~10\ = CARRY(( GND ) + ( (!\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|op_7~5_sumout\))) # (\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[43]~2_combout\)) ) + ( \u1|Div1|auto_generated|divider|divider|op_8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[43]~2_combout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_8~18\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_8~9_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_8~10\);

-- Location: LABCELL_X85_Y18_N54
\u1|Div1|auto_generated|divider|divider|StageOut[44]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[44]~6_combout\ = ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~9_sumout\ & ( !\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[4]~9_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[44]~6_combout\);

-- Location: MLABCELL_X82_Y18_N3
\u1|Div1|auto_generated|divider|divider|StageOut[44]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[44]~7_combout\ = ( \u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~5_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[44]~7_combout\);

-- Location: LABCELL_X83_Y18_N21
\u1|Div1|auto_generated|divider|divider|op_8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_8~13_sumout\ = SUM(( VCC ) + ( (!\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (((\u1|Div1|auto_generated|divider|divider|op_7~9_sumout\)))) # (\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\u1|Div1|auto_generated|divider|divider|StageOut[44]~7_combout\)) # (\u1|Div1|auto_generated|divider|divider|StageOut[44]~6_combout\))) ) + ( \u1|Div1|auto_generated|divider|divider|op_8~10\ ))
-- \u1|Div1|auto_generated|divider|divider|op_8~14\ = CARRY(( VCC ) + ( (!\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (((\u1|Div1|auto_generated|divider|divider|op_7~9_sumout\)))) # (\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\u1|Div1|auto_generated|divider|divider|StageOut[44]~7_combout\)) # (\u1|Div1|auto_generated|divider|divider|StageOut[44]~6_combout\))) ) + ( \u1|Div1|auto_generated|divider|divider|op_8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101100000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[44]~6_combout\,
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[44]~7_combout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_8~10\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_8~13_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_8~14\);

-- Location: LABCELL_X83_Y18_N24
\u1|Div1|auto_generated|divider|divider|op_8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_8~6_cout\ = CARRY(( VCC ) + ( (!\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (((\u1|Div1|auto_generated|divider|divider|op_7~13_sumout\)))) # (\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (!\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & (\u1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~13_sumout\))) ) + ( \u1|Div1|auto_generated|divider|divider|op_8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010011000100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~13_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_8~14\,
	cout => \u1|Div1|auto_generated|divider|divider|op_8~6_cout\);

-- Location: LABCELL_X83_Y18_N27
\u1|Div1|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u1|Div1|auto_generated|divider|divider|op_8~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div1|auto_generated|divider|divider|op_8~6_cout\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_8~1_sumout\);

-- Location: MLABCELL_X82_Y18_N0
\u1|Div1|auto_generated|divider|divider|StageOut[61]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[61]~0_combout\ = ( !\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ( \u1|Div1|auto_generated|divider|divider|op_8~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[61]~0_combout\);

-- Location: MLABCELL_X82_Y18_N9
\u1|Div1|auto_generated|divider|divider|StageOut[53]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[53]~5_combout\ = ( !\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & ( \u1|Div1|auto_generated|divider|divider|op_7~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[53]~5_combout\);

-- Location: MLABCELL_X82_Y18_N42
\u1|Div1|auto_generated|divider|divider|StageOut[53]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[53]~8_combout\ = ( \u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & ( (\u1|Div1|auto_generated|divider|divider|StageOut[44]~7_combout\) # 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[44]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[44]~6_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[44]~7_combout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[53]~8_combout\);

-- Location: MLABCELL_X84_Y18_N3
\u1|Div1|auto_generated|divider|divider|StageOut[52]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[52]~1_combout\ = ( !\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & ( \u1|Div1|auto_generated|divider|divider|op_7~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[52]~1_combout\);

-- Location: MLABCELL_X84_Y18_N15
\u1|Div1|auto_generated|divider|divider|StageOut[52]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[52]~3_combout\ = ( \u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & ( \u1|Div1|auto_generated|divider|divider|StageOut[43]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[43]~2_combout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[52]~3_combout\);

-- Location: MLABCELL_X82_Y18_N27
\u1|Div1|auto_generated|divider|divider|StageOut[51]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[51]~14_combout\ = ( \u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & ( (\u1|Div1|auto_generated|divider|divider|StageOut[42]~13_combout\) # 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[42]~12_combout\) ) ) # ( !\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & ( \u1|Div1|auto_generated|divider|divider|op_7~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[42]~12_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[42]~13_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[51]~14_combout\);

-- Location: MLABCELL_X82_Y18_N30
\u1|Div1|auto_generated|divider|divider|StageOut[50]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[50]~16_combout\ = ( \u1|Div1|auto_generated|divider|divider|op_7~21_sumout\ & ( !\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[50]~16_combout\);

-- Location: MLABCELL_X82_Y18_N33
\u1|Div1|auto_generated|divider|divider|StageOut[50]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[50]~18_combout\ = ( \u1|Div1|auto_generated|divider|divider|StageOut[41]~17_combout\ & ( \u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[41]~17_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[50]~18_combout\);

-- Location: MLABCELL_X82_Y18_N12
\u1|Div1|auto_generated|divider|divider|StageOut[49]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[49]~25_combout\ = ( \u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & ( (\u1|Div1|auto_generated|divider|divider|StageOut[40]~24_combout\) # 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[40]~23_combout\) ) ) # ( !\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & ( \u1|Div1|auto_generated|divider|divider|op_7~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[40]~23_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[40]~24_combout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[49]~25_combout\);

-- Location: MLABCELL_X82_Y18_N18
\u1|Div1|auto_generated|divider|divider|StageOut[48]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[48]~27_combout\ = ( !\u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & ( \u1|Div1|auto_generated|divider|divider|op_7~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[48]~27_combout\);

-- Location: MLABCELL_X82_Y18_N57
\u1|Div1|auto_generated|divider|divider|StageOut[48]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[48]~28_combout\ = ( \u1|Div1|auto_generated|divider|divider|op_7~1_sumout\ & ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~21_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[48]~28_combout\);

-- Location: LABCELL_X83_Y18_N30
\u1|Div1|auto_generated|divider|divider|op_9~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_9~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u1|Div1|auto_generated|divider|divider|op_9~38_cout\);

-- Location: LABCELL_X83_Y18_N33
\u1|Div1|auto_generated|divider|divider|op_9~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_9~33_sumout\ = SUM(( \u1|Div1|auto_generated|divider|my_abs_num|op_1~29_sumout\ ) + ( VCC ) + ( \u1|Div1|auto_generated|divider|divider|op_9~38_cout\ ))
-- \u1|Div1|auto_generated|divider|divider|op_9~34\ = CARRY(( \u1|Div1|auto_generated|divider|my_abs_num|op_1~29_sumout\ ) + ( VCC ) + ( \u1|Div1|auto_generated|divider|divider|op_9~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~29_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_9~38_cout\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_9~33_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_9~34\);

-- Location: LABCELL_X83_Y18_N36
\u1|Div1|auto_generated|divider|divider|op_9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_9~29_sumout\ = SUM(( (!\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|op_8~33_sumout\))) # (\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\u1|Div1|auto_generated|divider|my_abs_num|op_1~25_sumout\)) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|divider|op_9~34\ ))
-- \u1|Div1|auto_generated|divider|divider|op_9~30\ = CARRY(( (!\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|op_8~33_sumout\))) # (\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\u1|Div1|auto_generated|divider|my_abs_num|op_1~25_sumout\)) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|divider|op_9~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~25_sumout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_9~34\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_9~29_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_9~30\);

-- Location: LABCELL_X83_Y18_N39
\u1|Div1|auto_generated|divider|divider|op_9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_9~25_sumout\ = SUM(( (!\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\u1|Div1|auto_generated|divider|divider|op_8~29_sumout\)))) # (\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\u1|Div1|auto_generated|divider|divider|StageOut[48]~28_combout\)) # (\u1|Div1|auto_generated|divider|divider|StageOut[48]~27_combout\))) ) + ( VCC ) + ( \u1|Div1|auto_generated|divider|divider|op_9~30\ ))
-- \u1|Div1|auto_generated|divider|divider|op_9~26\ = CARRY(( (!\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\u1|Div1|auto_generated|divider|divider|op_8~29_sumout\)))) # (\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\u1|Div1|auto_generated|divider|divider|StageOut[48]~28_combout\)) # (\u1|Div1|auto_generated|divider|divider|StageOut[48]~27_combout\))) ) + ( VCC ) + ( \u1|Div1|auto_generated|divider|divider|op_9~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[48]~27_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[48]~28_combout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_9~30\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_9~25_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_9~26\);

-- Location: LABCELL_X83_Y18_N42
\u1|Div1|auto_generated|divider|divider|op_9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_9~21_sumout\ = SUM(( VCC ) + ( (!\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|op_8~25_sumout\))) # (\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[49]~25_combout\)) ) + ( \u1|Div1|auto_generated|divider|divider|op_9~26\ ))
-- \u1|Div1|auto_generated|divider|divider|op_9~22\ = CARRY(( VCC ) + ( (!\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|op_8~25_sumout\))) # (\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[49]~25_combout\)) ) + ( \u1|Div1|auto_generated|divider|divider|op_9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[49]~25_combout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_9~26\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_9~21_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_9~22\);

-- Location: LABCELL_X83_Y18_N45
\u1|Div1|auto_generated|divider|divider|op_9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_9~17_sumout\ = SUM(( (!\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\u1|Div1|auto_generated|divider|divider|op_8~21_sumout\)))) # (\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\u1|Div1|auto_generated|divider|divider|StageOut[50]~18_combout\)) # (\u1|Div1|auto_generated|divider|divider|StageOut[50]~16_combout\))) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|divider|op_9~22\ ))
-- \u1|Div1|auto_generated|divider|divider|op_9~18\ = CARRY(( (!\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\u1|Div1|auto_generated|divider|divider|op_8~21_sumout\)))) # (\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\u1|Div1|auto_generated|divider|divider|StageOut[50]~18_combout\)) # (\u1|Div1|auto_generated|divider|divider|StageOut[50]~16_combout\))) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|divider|op_9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~16_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~18_combout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_9~22\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_9~17_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_9~18\);

-- Location: LABCELL_X83_Y18_N48
\u1|Div1|auto_generated|divider|divider|op_9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_9~13_sumout\ = SUM(( GND ) + ( (!\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|op_8~17_sumout\))) # (\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[51]~14_combout\)) ) + ( \u1|Div1|auto_generated|divider|divider|op_9~18\ ))
-- \u1|Div1|auto_generated|divider|divider|op_9~14\ = CARRY(( GND ) + ( (!\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|op_8~17_sumout\))) # (\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[51]~14_combout\)) ) + ( \u1|Div1|auto_generated|divider|divider|op_9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[51]~14_combout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_9~18\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_9~13_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_9~14\);

-- Location: LABCELL_X83_Y18_N51
\u1|Div1|auto_generated|divider|divider|op_9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_9~9_sumout\ = SUM(( (!\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\u1|Div1|auto_generated|divider|divider|op_8~9_sumout\)) # (\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\u1|Div1|auto_generated|divider|divider|StageOut[52]~3_combout\) # (\u1|Div1|auto_generated|divider|divider|StageOut[52]~1_combout\)))) ) + ( VCC ) + ( \u1|Div1|auto_generated|divider|divider|op_9~14\ ))
-- \u1|Div1|auto_generated|divider|divider|op_9~10\ = CARRY(( (!\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\u1|Div1|auto_generated|divider|divider|op_8~9_sumout\)) # (\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\u1|Div1|auto_generated|divider|divider|StageOut[52]~3_combout\) # (\u1|Div1|auto_generated|divider|divider|StageOut[52]~1_combout\)))) ) + ( VCC ) + ( \u1|Div1|auto_generated|divider|divider|op_9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~1_combout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~3_combout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_9~14\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_9~9_sumout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_9~10\);

-- Location: LABCELL_X83_Y18_N54
\u1|Div1|auto_generated|divider|divider|op_9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_9~6_cout\ = CARRY(( (!\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\u1|Div1|auto_generated|divider|divider|op_8~13_sumout\)) # (\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\u1|Div1|auto_generated|divider|divider|StageOut[53]~8_combout\) # (\u1|Div1|auto_generated|divider|divider|StageOut[53]~5_combout\)))) ) + ( VCC ) + ( \u1|Div1|auto_generated|divider|divider|op_9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[53]~5_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[53]~8_combout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_9~10\,
	cout => \u1|Div1|auto_generated|divider|divider|op_9~6_cout\);

-- Location: LABCELL_X83_Y18_N57
\u1|Div1|auto_generated|divider|divider|op_9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_9~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u1|Div1|auto_generated|divider|divider|op_9~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div1|auto_generated|divider|divider|op_9~6_cout\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_9~1_sumout\);

-- Location: MLABCELL_X84_Y18_N18
\u1|Div1|auto_generated|divider|divider|StageOut[61]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[61]~4_combout\ = ( \u1|Div1|auto_generated|divider|divider|StageOut[52]~3_combout\ & ( \u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ ) ) # ( 
-- !\u1|Div1|auto_generated|divider|divider|StageOut[52]~3_combout\ & ( (\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & \u1|Div1|auto_generated|divider|divider|StageOut[52]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~1_combout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~3_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[61]~4_combout\);

-- Location: MLABCELL_X82_Y18_N45
\u1|Div1|auto_generated|divider|divider|StageOut[60]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[60]~11_combout\ = ( !\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ( \u1|Div1|auto_generated|divider|divider|op_8~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[60]~11_combout\);

-- Location: MLABCELL_X82_Y18_N24
\u1|Div1|auto_generated|divider|divider|StageOut[60]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[60]~15_combout\ = ( \u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ( \u1|Div1|auto_generated|divider|divider|StageOut[51]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[51]~14_combout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[60]~15_combout\);

-- Location: MLABCELL_X82_Y18_N51
\u1|Div1|auto_generated|divider|divider|StageOut[59]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[59]~19_combout\ = ( \u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ( (\u1|Div1|auto_generated|divider|divider|StageOut[50]~16_combout\) # 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[50]~18_combout\) ) ) # ( !\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ( \u1|Div1|auto_generated|divider|divider|op_8~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~18_combout\,
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~16_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[59]~19_combout\);

-- Location: MLABCELL_X82_Y18_N36
\u1|Div1|auto_generated|divider|divider|StageOut[58]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[58]~22_combout\ = ( !\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ( \u1|Div1|auto_generated|divider|divider|op_8~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[58]~22_combout\);

-- Location: MLABCELL_X82_Y18_N39
\u1|Div1|auto_generated|divider|divider|StageOut[58]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[58]~26_combout\ = ( \u1|Div1|auto_generated|divider|divider|StageOut[49]~25_combout\ & ( \u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[49]~25_combout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[58]~26_combout\);

-- Location: MLABCELL_X82_Y18_N54
\u1|Div1|auto_generated|divider|divider|StageOut[57]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[57]~29_combout\ = ( \u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ( (\u1|Div1|auto_generated|divider|divider|StageOut[48]~28_combout\) # 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[48]~27_combout\) ) ) # ( !\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ( \u1|Div1|auto_generated|divider|divider|op_8~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[48]~27_combout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[48]~28_combout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[57]~29_combout\);

-- Location: MLABCELL_X82_Y18_N6
\u1|Div1|auto_generated|divider|divider|StageOut[56]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[56]~30_combout\ = ( !\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ( \u1|Div1|auto_generated|divider|divider|op_8~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[56]~30_combout\);

-- Location: MLABCELL_X82_Y18_N21
\u1|Div1|auto_generated|divider|divider|StageOut[56]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|StageOut[56]~31_combout\ = ( \u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ( \u1|Div1|auto_generated|divider|my_abs_num|op_1~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~25_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \u1|Div1|auto_generated|divider|divider|StageOut[56]~31_combout\);

-- Location: MLABCELL_X82_Y16_N24
\u1|Div1|auto_generated|divider|divider|op_10~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_10~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u1|Div1|auto_generated|divider|divider|op_10~38_cout\);

-- Location: MLABCELL_X82_Y16_N27
\u1|Div1|auto_generated|divider|divider|op_10~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_10~34_cout\ = CARRY(( \u1|Div1|auto_generated|divider|my_abs_num|op_1~33_sumout\ ) + ( VCC ) + ( \u1|Div1|auto_generated|divider|divider|op_10~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~33_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_10~38_cout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_10~34_cout\);

-- Location: MLABCELL_X82_Y16_N30
\u1|Div1|auto_generated|divider|divider|op_10~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_10~30_cout\ = CARRY(( GND ) + ( (!\u1|Div1|auto_generated|divider|divider|op_9~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|op_9~33_sumout\))) # (\u1|Div1|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\u1|Div1|auto_generated|divider|my_abs_num|op_1~29_sumout\)) ) + ( \u1|Div1|auto_generated|divider|divider|op_10~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \u1|Div1|auto_generated|divider|my_abs_num|ALT_INV_op_1~29_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_10~34_cout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_10~30_cout\);

-- Location: MLABCELL_X82_Y16_N33
\u1|Div1|auto_generated|divider|divider|op_10~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_10~26_cout\ = CARRY(( VCC ) + ( (!\u1|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (((\u1|Div1|auto_generated|divider|divider|op_9~29_sumout\)))) # (\u1|Div1|auto_generated|divider|divider|op_9~1_sumout\ 
-- & (((\u1|Div1|auto_generated|divider|divider|StageOut[56]~31_combout\)) # (\u1|Div1|auto_generated|divider|divider|StageOut[56]~30_combout\))) ) + ( \u1|Div1|auto_generated|divider|divider|op_10~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101100000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[56]~30_combout\,
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[56]~31_combout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_10~30_cout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_10~26_cout\);

-- Location: MLABCELL_X82_Y16_N36
\u1|Div1|auto_generated|divider|divider|op_10~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_10~22_cout\ = CARRY(( VCC ) + ( (!\u1|Div1|auto_generated|divider|divider|op_9~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|op_9~25_sumout\))) # (\u1|Div1|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[57]~29_combout\)) ) + ( \u1|Div1|auto_generated|divider|divider|op_10~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[57]~29_combout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_10~26_cout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_10~22_cout\);

-- Location: MLABCELL_X82_Y16_N39
\u1|Div1|auto_generated|divider|divider|op_10~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_10~18_cout\ = CARRY(( (!\u1|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (((\u1|Div1|auto_generated|divider|divider|op_9~21_sumout\)))) # (\u1|Div1|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\u1|Div1|auto_generated|divider|divider|StageOut[58]~26_combout\)) # (\u1|Div1|auto_generated|divider|divider|StageOut[58]~22_combout\))) ) + ( GND ) + ( \u1|Div1|auto_generated|divider|divider|op_10~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[58]~22_combout\,
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[58]~26_combout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_10~22_cout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_10~18_cout\);

-- Location: MLABCELL_X82_Y16_N42
\u1|Div1|auto_generated|divider|divider|op_10~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_10~14_cout\ = CARRY(( GND ) + ( (!\u1|Div1|auto_generated|divider|divider|op_9~1_sumout\ & ((\u1|Div1|auto_generated|divider|divider|op_9~17_sumout\))) # (\u1|Div1|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\u1|Div1|auto_generated|divider|divider|StageOut[59]~19_combout\)) ) + ( \u1|Div1|auto_generated|divider|divider|op_10~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[59]~19_combout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_10~18_cout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_10~14_cout\);

-- Location: MLABCELL_X82_Y16_N45
\u1|Div1|auto_generated|divider|divider|op_10~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_10~10_cout\ = CARRY(( (!\u1|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (((\u1|Div1|auto_generated|divider|divider|op_9~13_sumout\)))) # (\u1|Div1|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\u1|Div1|auto_generated|divider|divider|StageOut[60]~15_combout\)) # (\u1|Div1|auto_generated|divider|divider|StageOut[60]~11_combout\))) ) + ( VCC ) + ( \u1|Div1|auto_generated|divider|divider|op_10~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[60]~11_combout\,
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[60]~15_combout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_10~14_cout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_10~10_cout\);

-- Location: MLABCELL_X82_Y16_N48
\u1|Div1|auto_generated|divider|divider|op_10~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_10~6_cout\ = CARRY(( (!\u1|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (((\u1|Div1|auto_generated|divider|divider|op_9~9_sumout\)))) # (\u1|Div1|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\u1|Div1|auto_generated|divider|divider|StageOut[61]~4_combout\)) # (\u1|Div1|auto_generated|divider|divider|StageOut[61]~0_combout\))) ) + ( VCC ) + ( \u1|Div1|auto_generated|divider|divider|op_10~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[61]~0_combout\,
	datab => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_StageOut[61]~4_combout\,
	cin => \u1|Div1|auto_generated|divider|divider|op_10~10_cout\,
	cout => \u1|Div1|auto_generated|divider|divider|op_10~6_cout\);

-- Location: MLABCELL_X82_Y16_N51
\u1|Div1|auto_generated|divider|divider|op_10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|divider|op_10~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u1|Div1|auto_generated|divider|divider|op_10~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div1|auto_generated|divider|divider|op_10~6_cout\,
	sumout => \u1|Div1|auto_generated|divider|divider|op_10~1_sumout\);

-- Location: MLABCELL_X82_Y16_N0
\u1|Div1|auto_generated|divider|op_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|op_1~1_sumout\ = SUM(( \u1|Div1|auto_generated|divider|divider|op_10~1_sumout\ ) + ( VCC ) + ( !VCC ))
-- \u1|Div1|auto_generated|divider|op_1~2\ = CARRY(( \u1|Div1|auto_generated|divider|divider|op_10~1_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	cin => GND,
	sumout => \u1|Div1|auto_generated|divider|op_1~1_sumout\,
	cout => \u1|Div1|auto_generated|divider|op_1~2\);

-- Location: LABCELL_X83_Y16_N30
\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\ = SUM(( \u1|step_counter\(2) ) + ( !VCC ) + ( !VCC ))
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~26\ = CARRY(( \u1|step_counter\(2) ) + ( !VCC ) + ( !VCC ))
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~27\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_step_counter\(2),
	cin => GND,
	sharein => GND,
	sumout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~26\,
	shareout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~27\);

-- Location: LABCELL_X83_Y16_N33
\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~21_sumout\ = SUM(( \u1|step_counter\(3) ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~27\ ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~26\ ))
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~22\ = CARRY(( \u1|step_counter\(3) ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~27\ ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~26\ ))
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~23\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_step_counter\(3),
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~26\,
	sharein => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~27\,
	sumout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~21_sumout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~22\,
	shareout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~23\);

-- Location: LABCELL_X83_Y16_N36
\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~17_sumout\ = SUM(( !\u1|step_counter\(4) ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~23\ ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~22\ ))
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~18\ = CARRY(( !\u1|step_counter\(4) ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~23\ ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~22\ ))
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~19\ = SHARE(\u1|step_counter\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_step_counter\(4),
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~22\,
	sharein => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~23\,
	sumout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~17_sumout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~18\,
	shareout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~19\);

-- Location: LABCELL_X83_Y16_N39
\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~13_sumout\ = SUM(( !\u1|step_counter\(5) ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~19\ ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~18\ ))
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~14\ = CARRY(( !\u1|step_counter\(5) ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~19\ ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~18\ ))
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~15\ = SHARE(\u1|step_counter\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_step_counter\(5),
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~18\,
	sharein => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~19\,
	sumout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~13_sumout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~14\,
	shareout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~15\);

-- Location: LABCELL_X83_Y16_N42
\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9_sumout\ = SUM(( \u1|step_counter\(6) ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~15\ ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~14\ ))
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~10\ = CARRY(( \u1|step_counter\(6) ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~15\ ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~14\ ))
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_step_counter\(6),
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~14\,
	sharein => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~15\,
	sumout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9_sumout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~10\,
	shareout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~11\);

-- Location: LABCELL_X83_Y16_N45
\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~5_sumout\ = SUM(( \u1|step_counter\(7) ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~11\ ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~10\ ))
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~6\ = CARRY(( \u1|step_counter\(7) ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~11\ ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~10\ ))
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_step_counter\(7),
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~10\,
	sharein => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~11\,
	sumout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~5_sumout\,
	cout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~6\,
	shareout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~7\);

-- Location: LABCELL_X83_Y16_N48
\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ = SUM(( VCC ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~7\ ) + ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~6\,
	sharein => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~7\,
	sumout => \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\);

-- Location: LABCELL_X83_Y17_N39
\u1|Div0|auto_generated|divider|divider|StageOut[40]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[40]~2_combout\ = ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~5_sumout\ & ( !\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	dataf => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~5_sumout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[40]~2_combout\);

-- Location: LABCELL_X83_Y17_N42
\u1|Div0|auto_generated|divider|divider|StageOut[40]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[40]~3_combout\ = ( \u1|step_counter\(7) & ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	dataf => \u1|ALT_INV_step_counter\(7),
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[40]~3_combout\);

-- Location: LABCELL_X83_Y17_N48
\u1|Div0|auto_generated|divider|divider|StageOut[38]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[38]~4_combout\ = ( !\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[3]~13_sumout\,
	dataf => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[38]~4_combout\);

-- Location: LABCELL_X81_Y16_N57
\u1|Div0|auto_generated|divider|divider|StageOut[38]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[38]~5_combout\ = ( \u1|step_counter\(5) & ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \u1|ALT_INV_step_counter\(5),
	dataf => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[38]~5_combout\);

-- Location: LABCELL_X83_Y17_N54
\u1|Div0|auto_generated|divider|divider|StageOut[36]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[36]~9_combout\ = ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~21_sumout\ & ( !\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	dataf => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[1]~21_sumout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[36]~9_combout\);

-- Location: LABCELL_X83_Y17_N57
\u1|Div0|auto_generated|divider|divider|StageOut[36]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ = ( \u1|step_counter\(3) & ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	dataf => \u1|ALT_INV_step_counter\(3),
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\);

-- Location: LABCELL_X83_Y17_N6
\u1|Div0|auto_generated|divider|divider|op_7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|op_7~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u1|Div0|auto_generated|divider|divider|op_7~34_cout\);

-- Location: LABCELL_X83_Y17_N9
\u1|Div0|auto_generated|divider|divider|op_7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|op_7~29_sumout\ = SUM(( \u1|step_counter\(1) ) + ( VCC ) + ( \u1|Div0|auto_generated|divider|divider|op_7~34_cout\ ))
-- \u1|Div0|auto_generated|divider|divider|op_7~30\ = CARRY(( \u1|step_counter\(1) ) + ( VCC ) + ( \u1|Div0|auto_generated|divider|divider|op_7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_step_counter\(1),
	cin => \u1|Div0|auto_generated|divider|divider|op_7~34_cout\,
	sumout => \u1|Div0|auto_generated|divider|divider|op_7~29_sumout\,
	cout => \u1|Div0|auto_generated|divider|divider|op_7~30\);

-- Location: LABCELL_X83_Y17_N12
\u1|Div0|auto_generated|divider|divider|op_7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|op_7~25_sumout\ = SUM(( (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\))) # 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & (\u1|step_counter\(2))) ) + ( GND ) + ( \u1|Div0|auto_generated|divider|divider|op_7~30\ ))
-- \u1|Div0|auto_generated|divider|divider|op_7~26\ = CARRY(( (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\))) # 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & (\u1|step_counter\(2))) ) + ( GND ) + ( \u1|Div0|auto_generated|divider|divider|op_7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	datac => \u1|ALT_INV_step_counter\(2),
	datad => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[0]~25_sumout\,
	cin => \u1|Div0|auto_generated|divider|divider|op_7~30\,
	sumout => \u1|Div0|auto_generated|divider|divider|op_7~25_sumout\,
	cout => \u1|Div0|auto_generated|divider|divider|op_7~26\);

-- Location: LABCELL_X83_Y17_N15
\u1|Div0|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( (\u1|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\) # (\u1|Div0|auto_generated|divider|divider|StageOut[36]~9_combout\) ) + ( VCC ) + ( 
-- \u1|Div0|auto_generated|divider|divider|op_7~26\ ))
-- \u1|Div0|auto_generated|divider|divider|op_7~22\ = CARRY(( (\u1|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\) # (\u1|Div0|auto_generated|divider|divider|StageOut[36]~9_combout\) ) + ( VCC ) + ( 
-- \u1|Div0|auto_generated|divider|divider|op_7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~9_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~10_combout\,
	cin => \u1|Div0|auto_generated|divider|divider|op_7~26\,
	sumout => \u1|Div0|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \u1|Div0|auto_generated|divider|divider|op_7~22\);

-- Location: LABCELL_X83_Y17_N18
\u1|Div0|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( VCC ) + ( (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~17_sumout\))) # 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & (\u1|step_counter\(4))) ) + ( \u1|Div0|auto_generated|divider|divider|op_7~22\ ))
-- \u1|Div0|auto_generated|divider|divider|op_7~18\ = CARRY(( VCC ) + ( (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~17_sumout\))) # 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & (\u1|step_counter\(4))) ) + ( \u1|Div0|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	datac => \u1|ALT_INV_step_counter\(4),
	dataf => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[2]~17_sumout\,
	cin => \u1|Div0|auto_generated|divider|divider|op_7~22\,
	sumout => \u1|Div0|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \u1|Div0|auto_generated|divider|divider|op_7~18\);

-- Location: LABCELL_X83_Y17_N21
\u1|Div0|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( (\u1|Div0|auto_generated|divider|divider|StageOut[38]~5_combout\) # (\u1|Div0|auto_generated|divider|divider|StageOut[38]~4_combout\) ) + ( GND ) + ( 
-- \u1|Div0|auto_generated|divider|divider|op_7~18\ ))
-- \u1|Div0|auto_generated|divider|divider|op_7~14\ = CARRY(( (\u1|Div0|auto_generated|divider|divider|StageOut[38]~5_combout\) # (\u1|Div0|auto_generated|divider|divider|StageOut[38]~4_combout\) ) + ( GND ) + ( 
-- \u1|Div0|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[38]~4_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[38]~5_combout\,
	cin => \u1|Div0|auto_generated|divider|divider|op_7~18\,
	sumout => \u1|Div0|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \u1|Div0|auto_generated|divider|divider|op_7~14\);

-- Location: LABCELL_X83_Y17_N24
\u1|Div0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( GND ) + ( (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9_sumout\))) # 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & (\u1|step_counter\(6))) ) + ( \u1|Div0|auto_generated|divider|divider|op_7~14\ ))
-- \u1|Div0|auto_generated|divider|divider|op_7~10\ = CARRY(( GND ) + ( (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ((\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9_sumout\))) # 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & (\u1|step_counter\(6))) ) + ( \u1|Div0|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	datac => \u1|ALT_INV_step_counter\(6),
	dataf => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[4]~9_sumout\,
	cin => \u1|Div0|auto_generated|divider|divider|op_7~14\,
	sumout => \u1|Div0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \u1|Div0|auto_generated|divider|divider|op_7~10\);

-- Location: LABCELL_X83_Y17_N27
\u1|Div0|auto_generated|divider|divider|op_7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|op_7~6_cout\ = CARRY(( VCC ) + ( (\u1|Div0|auto_generated|divider|divider|StageOut[40]~3_combout\) # (\u1|Div0|auto_generated|divider|divider|StageOut[40]~2_combout\) ) + ( 
-- \u1|Div0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~2_combout\,
	dataf => \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~3_combout\,
	cin => \u1|Div0|auto_generated|divider|divider|op_7~10\,
	cout => \u1|Div0|auto_generated|divider|divider|op_7~6_cout\);

-- Location: LABCELL_X83_Y17_N30
\u1|Div0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u1|Div0|auto_generated|divider|divider|op_7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div0|auto_generated|divider|divider|op_7~6_cout\,
	sumout => \u1|Div0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: LABCELL_X83_Y17_N3
\u1|Div0|auto_generated|divider|divider|StageOut[39]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[39]~0_combout\ = ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9_sumout\ & ( !\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	dataf => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[4]~9_sumout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[39]~0_combout\);

-- Location: LABCELL_X81_Y20_N33
\u1|Div0|auto_generated|divider|divider|StageOut[39]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[39]~1_combout\ = ( \u1|step_counter\(6) & ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	dataf => \u1|ALT_INV_step_counter\(6),
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[39]~1_combout\);

-- Location: LABCELL_X83_Y17_N51
\u1|Div0|auto_generated|divider|divider|StageOut[38]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[38]~6_combout\ = ( \u1|Div0|auto_generated|divider|divider|StageOut[38]~4_combout\ ) # ( !\u1|Div0|auto_generated|divider|divider|StageOut[38]~4_combout\ & ( 
-- \u1|Div0|auto_generated|divider|divider|StageOut[38]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[38]~5_combout\,
	dataf => \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[38]~4_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[38]~6_combout\);

-- Location: LABCELL_X83_Y19_N3
\u1|Div0|auto_generated|divider|divider|StageOut[37]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[37]~7_combout\ = ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~17_sumout\ & ( !\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[2]~17_sumout\,
	dataf => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[37]~7_combout\);

-- Location: LABCELL_X81_Y20_N30
\u1|Div0|auto_generated|divider|divider|StageOut[37]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[37]~8_combout\ = ( \u1|step_counter\(4) & ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	dataf => \u1|ALT_INV_step_counter\(4),
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[37]~8_combout\);

-- Location: LABCELL_X83_Y17_N36
\u1|Div0|auto_generated|divider|divider|StageOut[36]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ = (\u1|Div0|auto_generated|divider|divider|StageOut[36]~9_combout\) # (\u1|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~10_combout\,
	datac => \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~9_combout\,
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\);

-- Location: LABCELL_X83_Y17_N45
\u1|Div0|auto_generated|divider|divider|StageOut[35]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ = (!\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & (\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~25_sumout\)) # 
-- (\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ((\u1|step_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[0]~25_sumout\,
	datab => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	datad => \u1|ALT_INV_step_counter\(2),
	combout => \u1|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\);

-- Location: LABCELL_X79_Y19_N0
\u1|Div0|auto_generated|divider|divider|op_8~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|op_8~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u1|Div0|auto_generated|divider|divider|op_8~34_cout\);

-- Location: LABCELL_X79_Y19_N3
\u1|Div0|auto_generated|divider|divider|op_8~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|op_8~30_cout\ = CARRY(( \u1|step_counter\(0) ) + ( VCC ) + ( \u1|Div0|auto_generated|divider|divider|op_8~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_step_counter\(0),
	cin => \u1|Div0|auto_generated|divider|divider|op_8~34_cout\,
	cout => \u1|Div0|auto_generated|divider|divider|op_8~30_cout\);

-- Location: LABCELL_X79_Y19_N6
\u1|Div0|auto_generated|divider|divider|op_8~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|op_8~26_cout\ = CARRY(( (!\u1|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\u1|Div0|auto_generated|divider|divider|op_7~29_sumout\))) # (\u1|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u1|step_counter\(1))) ) + ( GND ) + ( \u1|Div0|auto_generated|divider|divider|op_8~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \u1|ALT_INV_step_counter\(1),
	datad => \u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	cin => \u1|Div0|auto_generated|divider|divider|op_8~30_cout\,
	cout => \u1|Div0|auto_generated|divider|divider|op_8~26_cout\);

-- Location: LABCELL_X79_Y19_N9
\u1|Div0|auto_generated|divider|divider|op_8~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|op_8~22_cout\ = CARRY(( (!\u1|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\u1|Div0|auto_generated|divider|divider|op_7~25_sumout\))) # (\u1|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u1|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)) ) + ( VCC ) + ( \u1|Div0|auto_generated|divider|divider|op_8~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~12_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	cin => \u1|Div0|auto_generated|divider|divider|op_8~26_cout\,
	cout => \u1|Div0|auto_generated|divider|divider|op_8~22_cout\);

-- Location: LABCELL_X79_Y19_N12
\u1|Div0|auto_generated|divider|divider|op_8~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|op_8~18_cout\ = CARRY(( (!\u1|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\u1|Div0|auto_generated|divider|divider|op_7~21_sumout\))) # (\u1|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u1|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\)) ) + ( VCC ) + ( \u1|Div0|auto_generated|divider|divider|op_8~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~11_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	cin => \u1|Div0|auto_generated|divider|divider|op_8~22_cout\,
	cout => \u1|Div0|auto_generated|divider|divider|op_8~18_cout\);

-- Location: LABCELL_X79_Y19_N15
\u1|Div0|auto_generated|divider|divider|op_8~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|op_8~14_cout\ = CARRY(( GND ) + ( (!\u1|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\u1|Div0|auto_generated|divider|divider|op_7~17_sumout\)) # (\u1|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\u1|Div0|auto_generated|divider|divider|StageOut[37]~8_combout\) # (\u1|Div0|auto_generated|divider|divider|StageOut[37]~7_combout\)))) ) + ( \u1|Div0|auto_generated|divider|divider|op_8~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	datac => \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~7_combout\,
	dataf => \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~8_combout\,
	cin => \u1|Div0|auto_generated|divider|divider|op_8~18_cout\,
	cout => \u1|Div0|auto_generated|divider|divider|op_8~14_cout\);

-- Location: LABCELL_X79_Y19_N18
\u1|Div0|auto_generated|divider|divider|op_8~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|op_8~10_cout\ = CARRY(( (!\u1|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\u1|Div0|auto_generated|divider|divider|op_7~13_sumout\))) # (\u1|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u1|Div0|auto_generated|divider|divider|StageOut[38]~6_combout\)) ) + ( GND ) + ( \u1|Div0|auto_generated|divider|divider|op_8~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[38]~6_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	cin => \u1|Div0|auto_generated|divider|divider|op_8~14_cout\,
	cout => \u1|Div0|auto_generated|divider|divider|op_8~10_cout\);

-- Location: LABCELL_X79_Y19_N21
\u1|Div0|auto_generated|divider|divider|op_8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|op_8~6_cout\ = CARRY(( (!\u1|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\u1|Div0|auto_generated|divider|divider|op_7~9_sumout\)) # (\u1|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\u1|Div0|auto_generated|divider|divider|StageOut[39]~1_combout\) # (\u1|Div0|auto_generated|divider|divider|StageOut[39]~0_combout\)))) ) + ( VCC ) + ( \u1|Div0|auto_generated|divider|divider|op_8~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	datac => \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[39]~0_combout\,
	datad => \u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[39]~1_combout\,
	cin => \u1|Div0|auto_generated|divider|divider|op_8~10_cout\,
	cout => \u1|Div0|auto_generated|divider|divider|op_8~6_cout\);

-- Location: LABCELL_X79_Y19_N24
\u1|Div0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u1|Div0|auto_generated|divider|divider|op_8~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u1|Div0|auto_generated|divider|divider|op_8~6_cout\,
	sumout => \u1|Div0|auto_generated|divider|divider|op_8~1_sumout\);

-- Location: LABCELL_X83_Y16_N57
\u1|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|process_0~2_combout\ = ( !\u1|step_counter\(6) & ( (!\u1|step_counter\(7) & !\u1|LessThan0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_step_counter\(7),
	datad => \u1|ALT_INV_LessThan0~0_combout\,
	dataf => \u1|ALT_INV_step_counter\(6),
	combout => \u1|process_0~2_combout\);

-- Location: MLABCELL_X82_Y16_N12
\u1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~1_combout\ = ( \u1|Div1|auto_generated|divider|divider|op_10~1_sumout\ & ( (\u1|start_200_steps~q\ & (\u1|Div0|auto_generated|divider|divider|op_8~1_sumout\ & \u1|process_0~2_combout\)) ) ) # ( 
-- !\u1|Div1|auto_generated|divider|divider|op_10~1_sumout\ & ( (!\u1|start_200_steps~q\ & (!\u1|Add2~1_sumout\)) # (\u1|start_200_steps~q\ & ((!\u1|process_0~2_combout\ & (!\u1|Add2~1_sumout\)) # (\u1|process_0~2_combout\ & 
-- ((\u1|Div0|auto_generated|divider|divider|op_8~1_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010001101110011001000110100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_start_200_steps~q\,
	datab => \u1|ALT_INV_Add2~1_sumout\,
	datac => \u1|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \u1|ALT_INV_process_0~2_combout\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \u1|Add1~1_combout\);

-- Location: LABCELL_X81_Y16_N33
\u1|accel_factor~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|accel_factor~2_combout\ = ( \u1|Add1~1_combout\ & ( \u1|accel_factor~1_combout\ ) ) # ( !\u1|Add1~1_combout\ & ( (\u1|accel_factor~1_combout\ & (\u1|Add1~0_combout\ & \u1|Div1|auto_generated|divider|op_1~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_accel_factor~1_combout\,
	datab => \u1|ALT_INV_Add1~0_combout\,
	datad => \u1|Div1|auto_generated|divider|ALT_INV_op_1~1_sumout\,
	dataf => \u1|ALT_INV_Add1~1_combout\,
	combout => \u1|accel_factor~2_combout\);

-- Location: FF_X81_Y16_N35
\u1|accel_factor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|accel_factor~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|accel_factor\(0));

-- Location: LABCELL_X83_Y16_N54
\u1|Add1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~2_combout\ = ( \u1|Div1|auto_generated|divider|divider|op_9~1_sumout\ & ( (\u1|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\u1|process_0~2_combout\ & \u1|start_200_steps~q\)) ) ) # ( 
-- !\u1|Div1|auto_generated|divider|divider|op_9~1_sumout\ & ( (!\u1|process_0~2_combout\ & (((!\u1|Add2~1_sumout\)))) # (\u1|process_0~2_combout\ & ((!\u1|start_200_steps~q\ & ((!\u1|Add2~1_sumout\))) # (\u1|start_200_steps~q\ & 
-- (\u1|Div0|auto_generated|divider|divider|op_7~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011010001111100001101000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \u1|ALT_INV_process_0~2_combout\,
	datac => \u1|ALT_INV_Add2~1_sumout\,
	datad => \u1|ALT_INV_start_200_steps~q\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	combout => \u1|Add1~2_combout\);

-- Location: MLABCELL_X82_Y16_N3
\u1|Div1|auto_generated|divider|op_1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|op_1~5_sumout\ = SUM(( \u1|Div1|auto_generated|divider|divider|op_9~1_sumout\ ) + ( GND ) + ( \u1|Div1|auto_generated|divider|op_1~2\ ))
-- \u1|Div1|auto_generated|divider|op_1~6\ = CARRY(( \u1|Div1|auto_generated|divider|divider|op_9~1_sumout\ ) + ( GND ) + ( \u1|Div1|auto_generated|divider|op_1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	cin => \u1|Div1|auto_generated|divider|op_1~2\,
	sumout => \u1|Div1|auto_generated|divider|op_1~5_sumout\,
	cout => \u1|Div1|auto_generated|divider|op_1~6\);

-- Location: LABCELL_X81_Y16_N6
\u1|Add1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~3_combout\ = ( \u1|start_200_steps~q\ & ( \u1|Div1|auto_generated|divider|divider|op_10~1_sumout\ & ( (!\u1|process_0~2_combout\ & (((\u1|Div1|auto_generated|divider|op_1~1_sumout\ & \u1|Add2~1_sumout\)))) # (\u1|process_0~2_combout\ & 
-- (!\u1|Div0|auto_generated|divider|divider|op_8~1_sumout\)) ) ) ) # ( !\u1|start_200_steps~q\ & ( \u1|Div1|auto_generated|divider|divider|op_10~1_sumout\ & ( (\u1|Div1|auto_generated|divider|op_1~1_sumout\ & \u1|Add2~1_sumout\) ) ) ) # ( 
-- \u1|start_200_steps~q\ & ( !\u1|Div1|auto_generated|divider|divider|op_10~1_sumout\ & ( (!\u1|process_0~2_combout\ & (((!\u1|Add2~1_sumout\) # (\u1|Div1|auto_generated|divider|op_1~1_sumout\)))) # (\u1|process_0~2_combout\ & 
-- (!\u1|Div0|auto_generated|divider|divider|op_8~1_sumout\)) ) ) ) # ( !\u1|start_200_steps~q\ & ( !\u1|Div1|auto_generated|divider|divider|op_10~1_sumout\ & ( (!\u1|Add2~1_sumout\) # (\u1|Div1|auto_generated|divider|op_1~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111011100010111000000000000011110010001000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \u1|ALT_INV_process_0~2_combout\,
	datac => \u1|Div1|auto_generated|divider|ALT_INV_op_1~1_sumout\,
	datad => \u1|ALT_INV_Add2~1_sumout\,
	datae => \u1|ALT_INV_start_200_steps~q\,
	dataf => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \u1|Add1~3_combout\);

-- Location: LABCELL_X81_Y16_N30
\u1|accel_factor~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|accel_factor~3_combout\ = ( \u1|Add1~3_combout\ & ( (\u1|accel_factor~1_combout\ & (!\u1|Add1~2_combout\ & ((!\u1|Add1~0_combout\) # (!\u1|Div1|auto_generated|divider|op_1~5_sumout\)))) ) ) # ( !\u1|Add1~3_combout\ & ( (\u1|accel_factor~1_combout\ & 
-- (((\u1|Add1~0_combout\ & \u1|Div1|auto_generated|divider|op_1~5_sumout\)) # (\u1|Add1~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010101000001010001010101010000010000000101000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_accel_factor~1_combout\,
	datab => \u1|ALT_INV_Add1~0_combout\,
	datac => \u1|ALT_INV_Add1~2_combout\,
	datad => \u1|Div1|auto_generated|divider|ALT_INV_op_1~5_sumout\,
	dataf => \u1|ALT_INV_Add1~3_combout\,
	combout => \u1|accel_factor~3_combout\);

-- Location: FF_X81_Y16_N31
\u1|accel_factor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|accel_factor~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|accel_factor\(1));

-- Location: LABCELL_X83_Y16_N27
\u1|accel_factor~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|accel_factor~6_combout\ = ( \u1|Add1~2_combout\ & ( ((\u1|Add1~0_combout\ & \u1|Div1|auto_generated|divider|op_1~1_sumout\)) # (\u1|Add1~1_combout\) ) ) # ( !\u1|Add1~2_combout\ & ( (\u1|Add1~0_combout\ & 
-- (\u1|Div1|auto_generated|divider|op_1~5_sumout\ & ((\u1|Add1~1_combout\) # (\u1|Div1|auto_generated|divider|op_1~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101000000010000010100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_Add1~0_combout\,
	datab => \u1|Div1|auto_generated|divider|ALT_INV_op_1~1_sumout\,
	datac => \u1|Div1|auto_generated|divider|ALT_INV_op_1~5_sumout\,
	datad => \u1|ALT_INV_Add1~1_combout\,
	dataf => \u1|ALT_INV_Add1~2_combout\,
	combout => \u1|accel_factor~6_combout\);

-- Location: LABCELL_X83_Y16_N9
\u1|accel_factor~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|accel_factor~5_combout\ = ( \u1|accel_factor~0_combout\ & ( (\u1|step_counter\(7) & \u1|start_200_steps~q\) ) ) # ( !\u1|accel_factor~0_combout\ & ( (\u1|step_counter\(7) & (\u1|start_200_steps~q\ & ((\u1|step_counter\(6)) # (\u1|step_counter\(5))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000001010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_step_counter\(7),
	datab => \u1|ALT_INV_step_counter\(5),
	datac => \u1|ALT_INV_step_counter\(6),
	datad => \u1|ALT_INV_start_200_steps~q\,
	dataf => \u1|ALT_INV_accel_factor~0_combout\,
	combout => \u1|accel_factor~5_combout\);

-- Location: LABCELL_X81_Y16_N51
\u1|accel_factor~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|accel_factor~10_combout\ = ( \u1|start_200_steps~q\ & ( !\u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ( \u1|process_0~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_process_0~2_combout\,
	datae => \u1|ALT_INV_start_200_steps~q\,
	dataf => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	combout => \u1|accel_factor~10_combout\);

-- Location: MLABCELL_X82_Y16_N54
\u1|accel_factor~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|accel_factor~11_combout\ = ( \u1|Div1|auto_generated|divider|op_1~5_sumout\ & ( \u1|Add1~1_combout\ & ( \u1|accel_factor~10_combout\ ) ) ) # ( !\u1|Div1|auto_generated|divider|op_1~5_sumout\ & ( \u1|Add1~1_combout\ & ( \u1|accel_factor~10_combout\ ) ) 
-- ) # ( \u1|Div1|auto_generated|divider|op_1~5_sumout\ & ( !\u1|Add1~1_combout\ & ( (\u1|accel_factor~10_combout\ & ((\u1|Add1~0_combout\) # (\u1|Add1~2_combout\))) ) ) ) # ( !\u1|Div1|auto_generated|divider|op_1~5_sumout\ & ( !\u1|Add1~1_combout\ & ( 
-- (\u1|accel_factor~10_combout\ & (((\u1|Div1|auto_generated|divider|op_1~1_sumout\ & \u1|Add1~0_combout\)) # (\u1|Add1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000111000000110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|ALT_INV_op_1~1_sumout\,
	datab => \u1|ALT_INV_Add1~2_combout\,
	datac => \u1|ALT_INV_accel_factor~10_combout\,
	datad => \u1|ALT_INV_Add1~0_combout\,
	datae => \u1|Div1|auto_generated|divider|ALT_INV_op_1~5_sumout\,
	dataf => \u1|ALT_INV_Add1~1_combout\,
	combout => \u1|accel_factor~11_combout\);

-- Location: MLABCELL_X82_Y16_N6
\u1|Div1|auto_generated|divider|op_1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Div1|auto_generated|divider|op_1~9_sumout\ = SUM(( \u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ ) + ( GND ) + ( \u1|Div1|auto_generated|divider|op_1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	cin => \u1|Div1|auto_generated|divider|op_1~6\,
	sumout => \u1|Div1|auto_generated|divider|op_1~9_sumout\);

-- Location: MLABCELL_X82_Y16_N15
\u1|accel_factor~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|accel_factor~4_combout\ = ( \u1|Div1|auto_generated|divider|op_1~9_sumout\ & ( (!\u1|Add2~1_sumout\ & \u1|Div1|auto_generated|divider|divider|op_8~1_sumout\) ) ) # ( !\u1|Div1|auto_generated|divider|op_1~9_sumout\ & ( 
-- (\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\) # (\u1|Add2~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_Add2~1_sumout\,
	datad => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \u1|Div1|auto_generated|divider|ALT_INV_op_1~9_sumout\,
	combout => \u1|accel_factor~4_combout\);

-- Location: LABCELL_X83_Y16_N24
\u1|accel_factor~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|accel_factor~7_combout\ = ( \u1|step_counter\(6) ) # ( !\u1|step_counter\(6) & ( (\u1|step_counter\(5)) # (\u1|accel_factor~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_accel_factor~0_combout\,
	datad => \u1|ALT_INV_step_counter\(5),
	dataf => \u1|ALT_INV_step_counter\(6),
	combout => \u1|accel_factor~7_combout\);

-- Location: LABCELL_X83_Y16_N0
\u1|accel_factor~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|accel_factor~13_combout\ = ( !\u1|Add2~1_sumout\ & ( (\u1|accel_factor~7_combout\ & (!\u1|process_0~2_combout\ & (!\u1|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\u1|start_200_steps~q\ & \u1|step_counter\(7))))) ) ) # ( \u1|Add2~1_sumout\ & 
-- ( (\u1|accel_factor~7_combout\ & (!\u1|process_0~2_combout\ & (\u1|Div1|auto_generated|divider|op_1~9_sumout\ & (\u1|start_200_steps~q\ & \u1|step_counter\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_accel_factor~7_combout\,
	datab => \u1|ALT_INV_process_0~2_combout\,
	datac => \u1|Div1|auto_generated|divider|ALT_INV_op_1~9_sumout\,
	datad => \u1|ALT_INV_start_200_steps~q\,
	datae => \u1|ALT_INV_Add2~1_sumout\,
	dataf => \u1|ALT_INV_step_counter\(7),
	datag => \u1|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \u1|accel_factor~13_combout\);

-- Location: LABCELL_X81_Y16_N42
\u1|accel_factor~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|accel_factor~8_combout\ = ( \u1|start_200_steps~q\ & ( \u1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~1_sumout\ & ( \u1|process_0~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_process_0~2_combout\,
	datae => \u1|ALT_INV_start_200_steps~q\,
	dataf => \u1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[6]~1_sumout\,
	combout => \u1|accel_factor~8_combout\);

-- Location: MLABCELL_X82_Y16_N18
\u1|accel_factor~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|accel_factor~9_combout\ = ( \u1|Div1|auto_generated|divider|op_1~5_sumout\ & ( !\u1|Add1~1_combout\ & ( (!\u1|Add1~2_combout\ & (\u1|accel_factor~8_combout\ & !\u1|Add1~0_combout\)) ) ) ) # ( !\u1|Div1|auto_generated|divider|op_1~5_sumout\ & ( 
-- !\u1|Add1~1_combout\ & ( (!\u1|Add1~2_combout\ & (\u1|accel_factor~8_combout\ & ((!\u1|Div1|auto_generated|divider|op_1~1_sumout\) # (!\u1|Add1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Div1|auto_generated|divider|ALT_INV_op_1~1_sumout\,
	datab => \u1|ALT_INV_Add1~2_combout\,
	datac => \u1|ALT_INV_accel_factor~8_combout\,
	datad => \u1|ALT_INV_Add1~0_combout\,
	datae => \u1|Div1|auto_generated|divider|ALT_INV_op_1~5_sumout\,
	dataf => \u1|ALT_INV_Add1~1_combout\,
	combout => \u1|accel_factor~9_combout\);

-- Location: LABCELL_X83_Y16_N12
\u1|accel_factor~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|accel_factor~12_combout\ = ( \u1|accel_factor~13_combout\ & ( \u1|accel_factor~9_combout\ ) ) # ( !\u1|accel_factor~13_combout\ & ( \u1|accel_factor~9_combout\ ) ) # ( \u1|accel_factor~13_combout\ & ( !\u1|accel_factor~9_combout\ & ( 
-- (!\u1|accel_factor~6_combout\) # (((\u1|accel_factor~5_combout\ & \u1|accel_factor~4_combout\)) # (\u1|accel_factor~11_combout\)) ) ) ) # ( !\u1|accel_factor~13_combout\ & ( !\u1|accel_factor~9_combout\ & ( ((\u1|accel_factor~6_combout\ & 
-- (\u1|accel_factor~5_combout\ & \u1|accel_factor~4_combout\))) # (\u1|accel_factor~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011111101011111011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_accel_factor~6_combout\,
	datab => \u1|ALT_INV_accel_factor~5_combout\,
	datac => \u1|ALT_INV_accel_factor~11_combout\,
	datad => \u1|ALT_INV_accel_factor~4_combout\,
	datae => \u1|ALT_INV_accel_factor~13_combout\,
	dataf => \u1|ALT_INV_accel_factor~9_combout\,
	combout => \u1|accel_factor~12_combout\);

-- Location: FF_X83_Y16_N13
\u1|accel_factor[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|accel_factor~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|accel_factor\(2));

-- Location: DSP_X86_Y22_N0
\u1|Mult0~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 25,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 3,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m27x27",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \u1|Mult0~mac_AX_bus\,
	ay => \u1|Mult0~mac_AY_bus\,
	resulta => \u1|Mult0~mac_RESULTA_bus\);

-- Location: MLABCELL_X87_Y21_N0
\u1|Add6~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~93_sumout\ = SUM(( \u1|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \u1|Add6~94\ = CARRY(( \u1|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_counter\(0),
	cin => GND,
	sumout => \u1|Add6~93_sumout\,
	cout => \u1|Add6~94\);

-- Location: FF_X87_Y21_N2
\u1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~93_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(0));

-- Location: MLABCELL_X87_Y21_N3
\u1|Add6~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~89_sumout\ = SUM(( \u1|counter\(1) ) + ( GND ) + ( \u1|Add6~94\ ))
-- \u1|Add6~90\ = CARRY(( \u1|counter\(1) ) + ( GND ) + ( \u1|Add6~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_counter\(1),
	cin => \u1|Add6~94\,
	sumout => \u1|Add6~89_sumout\,
	cout => \u1|Add6~90\);

-- Location: FF_X87_Y21_N5
\u1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~89_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(1));

-- Location: MLABCELL_X87_Y21_N6
\u1|Add6~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~85_sumout\ = SUM(( \u1|counter\(2) ) + ( GND ) + ( \u1|Add6~90\ ))
-- \u1|Add6~86\ = CARRY(( \u1|counter\(2) ) + ( GND ) + ( \u1|Add6~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_counter\(2),
	cin => \u1|Add6~90\,
	sumout => \u1|Add6~85_sumout\,
	cout => \u1|Add6~86\);

-- Location: FF_X87_Y21_N8
\u1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~85_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(2));

-- Location: MLABCELL_X87_Y21_N9
\u1|Add6~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~81_sumout\ = SUM(( \u1|counter\(3) ) + ( GND ) + ( \u1|Add6~86\ ))
-- \u1|Add6~82\ = CARRY(( \u1|counter\(3) ) + ( GND ) + ( \u1|Add6~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_counter\(3),
	cin => \u1|Add6~86\,
	sumout => \u1|Add6~81_sumout\,
	cout => \u1|Add6~82\);

-- Location: FF_X87_Y21_N11
\u1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~81_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(3));

-- Location: MLABCELL_X87_Y21_N12
\u1|Add6~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~77_sumout\ = SUM(( \u1|counter\(4) ) + ( GND ) + ( \u1|Add6~82\ ))
-- \u1|Add6~78\ = CARRY(( \u1|counter\(4) ) + ( GND ) + ( \u1|Add6~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_counter\(4),
	cin => \u1|Add6~82\,
	sumout => \u1|Add6~77_sumout\,
	cout => \u1|Add6~78\);

-- Location: FF_X87_Y21_N14
\u1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~77_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(4));

-- Location: MLABCELL_X87_Y21_N15
\u1|Add6~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~73_sumout\ = SUM(( \u1|counter\(5) ) + ( GND ) + ( \u1|Add6~78\ ))
-- \u1|Add6~74\ = CARRY(( \u1|counter\(5) ) + ( GND ) + ( \u1|Add6~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_counter\(5),
	cin => \u1|Add6~78\,
	sumout => \u1|Add6~73_sumout\,
	cout => \u1|Add6~74\);

-- Location: FF_X87_Y21_N17
\u1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~73_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(5));

-- Location: MLABCELL_X87_Y21_N18
\u1|Add6~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~69_sumout\ = SUM(( \u1|counter\(6) ) + ( GND ) + ( \u1|Add6~74\ ))
-- \u1|Add6~70\ = CARRY(( \u1|counter\(6) ) + ( GND ) + ( \u1|Add6~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_counter\(6),
	cin => \u1|Add6~74\,
	sumout => \u1|Add6~69_sumout\,
	cout => \u1|Add6~70\);

-- Location: FF_X87_Y21_N20
\u1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~69_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(6));

-- Location: MLABCELL_X87_Y21_N21
\u1|Add6~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~65_sumout\ = SUM(( \u1|counter\(7) ) + ( GND ) + ( \u1|Add6~70\ ))
-- \u1|Add6~66\ = CARRY(( \u1|counter\(7) ) + ( GND ) + ( \u1|Add6~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_counter\(7),
	cin => \u1|Add6~70\,
	sumout => \u1|Add6~65_sumout\,
	cout => \u1|Add6~66\);

-- Location: FF_X87_Y21_N23
\u1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~65_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(7));

-- Location: MLABCELL_X87_Y21_N24
\u1|Add6~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~61_sumout\ = SUM(( \u1|counter\(8) ) + ( GND ) + ( \u1|Add6~66\ ))
-- \u1|Add6~62\ = CARRY(( \u1|counter\(8) ) + ( GND ) + ( \u1|Add6~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_counter\(8),
	cin => \u1|Add6~66\,
	sumout => \u1|Add6~61_sumout\,
	cout => \u1|Add6~62\);

-- Location: FF_X87_Y21_N26
\u1|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~61_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(8));

-- Location: MLABCELL_X87_Y21_N27
\u1|Add6~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~57_sumout\ = SUM(( \u1|counter\(9) ) + ( GND ) + ( \u1|Add6~62\ ))
-- \u1|Add6~58\ = CARRY(( \u1|counter\(9) ) + ( GND ) + ( \u1|Add6~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_counter\(9),
	cin => \u1|Add6~62\,
	sumout => \u1|Add6~57_sumout\,
	cout => \u1|Add6~58\);

-- Location: FF_X87_Y21_N29
\u1|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~57_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(9));

-- Location: MLABCELL_X87_Y20_N0
\u1|Add6~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~53_sumout\ = SUM(( \u1|counter\(10) ) + ( GND ) + ( \u1|Add6~58\ ))
-- \u1|Add6~54\ = CARRY(( \u1|counter\(10) ) + ( GND ) + ( \u1|Add6~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_counter\(10),
	cin => \u1|Add6~58\,
	sumout => \u1|Add6~53_sumout\,
	cout => \u1|Add6~54\);

-- Location: FF_X87_Y20_N2
\u1|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~53_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(10));

-- Location: MLABCELL_X87_Y20_N3
\u1|Add6~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~49_sumout\ = SUM(( \u1|counter\(11) ) + ( GND ) + ( \u1|Add6~54\ ))
-- \u1|Add6~50\ = CARRY(( \u1|counter\(11) ) + ( GND ) + ( \u1|Add6~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_counter\(11),
	cin => \u1|Add6~54\,
	sumout => \u1|Add6~49_sumout\,
	cout => \u1|Add6~50\);

-- Location: FF_X87_Y20_N5
\u1|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~49_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(11));

-- Location: MLABCELL_X87_Y20_N6
\u1|Add6~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~45_sumout\ = SUM(( \u1|counter\(12) ) + ( GND ) + ( \u1|Add6~50\ ))
-- \u1|Add6~46\ = CARRY(( \u1|counter\(12) ) + ( GND ) + ( \u1|Add6~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_counter\(12),
	cin => \u1|Add6~50\,
	sumout => \u1|Add6~45_sumout\,
	cout => \u1|Add6~46\);

-- Location: FF_X87_Y20_N8
\u1|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~45_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(12));

-- Location: MLABCELL_X87_Y20_N9
\u1|Add6~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~41_sumout\ = SUM(( \u1|counter\(13) ) + ( GND ) + ( \u1|Add6~46\ ))
-- \u1|Add6~42\ = CARRY(( \u1|counter\(13) ) + ( GND ) + ( \u1|Add6~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_counter\(13),
	cin => \u1|Add6~46\,
	sumout => \u1|Add6~41_sumout\,
	cout => \u1|Add6~42\);

-- Location: FF_X87_Y20_N11
\u1|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~41_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(13));

-- Location: MLABCELL_X87_Y20_N12
\u1|Add6~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~37_sumout\ = SUM(( \u1|counter\(14) ) + ( GND ) + ( \u1|Add6~42\ ))
-- \u1|Add6~38\ = CARRY(( \u1|counter\(14) ) + ( GND ) + ( \u1|Add6~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_counter\(14),
	cin => \u1|Add6~42\,
	sumout => \u1|Add6~37_sumout\,
	cout => \u1|Add6~38\);

-- Location: FF_X87_Y20_N14
\u1|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~37_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(14));

-- Location: MLABCELL_X87_Y20_N15
\u1|Add6~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~33_sumout\ = SUM(( \u1|counter\(15) ) + ( GND ) + ( \u1|Add6~38\ ))
-- \u1|Add6~34\ = CARRY(( \u1|counter\(15) ) + ( GND ) + ( \u1|Add6~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_counter\(15),
	cin => \u1|Add6~38\,
	sumout => \u1|Add6~33_sumout\,
	cout => \u1|Add6~34\);

-- Location: FF_X87_Y20_N17
\u1|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~33_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(15));

-- Location: MLABCELL_X87_Y20_N18
\u1|Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~29_sumout\ = SUM(( \u1|counter\(16) ) + ( GND ) + ( \u1|Add6~34\ ))
-- \u1|Add6~30\ = CARRY(( \u1|counter\(16) ) + ( GND ) + ( \u1|Add6~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_counter\(16),
	cin => \u1|Add6~34\,
	sumout => \u1|Add6~29_sumout\,
	cout => \u1|Add6~30\);

-- Location: FF_X87_Y20_N20
\u1|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~29_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(16));

-- Location: MLABCELL_X87_Y20_N21
\u1|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~25_sumout\ = SUM(( \u1|counter\(17) ) + ( GND ) + ( \u1|Add6~30\ ))
-- \u1|Add6~26\ = CARRY(( \u1|counter\(17) ) + ( GND ) + ( \u1|Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_counter\(17),
	cin => \u1|Add6~30\,
	sumout => \u1|Add6~25_sumout\,
	cout => \u1|Add6~26\);

-- Location: FF_X87_Y20_N23
\u1|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~25_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(17));

-- Location: MLABCELL_X87_Y20_N24
\u1|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~21_sumout\ = SUM(( \u1|counter\(18) ) + ( GND ) + ( \u1|Add6~26\ ))
-- \u1|Add6~22\ = CARRY(( \u1|counter\(18) ) + ( GND ) + ( \u1|Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_counter\(18),
	cin => \u1|Add6~26\,
	sumout => \u1|Add6~21_sumout\,
	cout => \u1|Add6~22\);

-- Location: FF_X87_Y20_N26
\u1|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~21_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(18));

-- Location: MLABCELL_X87_Y20_N27
\u1|Add6~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~101_sumout\ = SUM(( \u1|counter\(19) ) + ( GND ) + ( \u1|Add6~22\ ))
-- \u1|Add6~102\ = CARRY(( \u1|counter\(19) ) + ( GND ) + ( \u1|Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_counter\(19),
	cin => \u1|Add6~22\,
	sumout => \u1|Add6~101_sumout\,
	cout => \u1|Add6~102\);

-- Location: FF_X87_Y20_N29
\u1|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~101_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(19));

-- Location: MLABCELL_X87_Y20_N30
\u1|Add6~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~97_sumout\ = SUM(( \u1|counter\(20) ) + ( GND ) + ( \u1|Add6~102\ ))
-- \u1|Add6~98\ = CARRY(( \u1|counter\(20) ) + ( GND ) + ( \u1|Add6~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_counter\(20),
	cin => \u1|Add6~102\,
	sumout => \u1|Add6~97_sumout\,
	cout => \u1|Add6~98\);

-- Location: FF_X87_Y20_N32
\u1|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~97_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(20));

-- Location: MLABCELL_X87_Y20_N33
\u1|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~17_sumout\ = SUM(( \u1|counter\(21) ) + ( GND ) + ( \u1|Add6~98\ ))
-- \u1|Add6~18\ = CARRY(( \u1|counter\(21) ) + ( GND ) + ( \u1|Add6~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_counter\(21),
	cin => \u1|Add6~98\,
	sumout => \u1|Add6~17_sumout\,
	cout => \u1|Add6~18\);

-- Location: FF_X87_Y20_N35
\u1|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~17_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(21));

-- Location: MLABCELL_X87_Y20_N36
\u1|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~13_sumout\ = SUM(( \u1|counter\(22) ) + ( GND ) + ( \u1|Add6~18\ ))
-- \u1|Add6~14\ = CARRY(( \u1|counter\(22) ) + ( GND ) + ( \u1|Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_counter\(22),
	cin => \u1|Add6~18\,
	sumout => \u1|Add6~13_sumout\,
	cout => \u1|Add6~14\);

-- Location: FF_X87_Y20_N38
\u1|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~13_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(22));

-- Location: MLABCELL_X87_Y20_N39
\u1|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~9_sumout\ = SUM(( \u1|counter\(23) ) + ( GND ) + ( \u1|Add6~14\ ))
-- \u1|Add6~10\ = CARRY(( \u1|counter\(23) ) + ( GND ) + ( \u1|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_counter\(23),
	cin => \u1|Add6~14\,
	sumout => \u1|Add6~9_sumout\,
	cout => \u1|Add6~10\);

-- Location: FF_X87_Y20_N41
\u1|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~9_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(23));

-- Location: MLABCELL_X87_Y20_N42
\u1|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~5_sumout\ = SUM(( \u1|counter\(24) ) + ( GND ) + ( \u1|Add6~10\ ))
-- \u1|Add6~6\ = CARRY(( \u1|counter\(24) ) + ( GND ) + ( \u1|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_counter\(24),
	cin => \u1|Add6~10\,
	sumout => \u1|Add6~5_sumout\,
	cout => \u1|Add6~6\);

-- Location: FF_X87_Y20_N44
\u1|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~5_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(24));

-- Location: MLABCELL_X87_Y22_N48
\u1|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~3_combout\ = ( \u1|topCounter\(17) & ( !\u1|counter\(17) ) ) # ( !\u1|topCounter\(17) & ( \u1|counter\(17) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_counter\(17),
	dataf => \u1|ALT_INV_topCounter\(17),
	combout => \u1|LessThan3~3_combout\);

-- Location: MLABCELL_X87_Y21_N30
\u1|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~6_combout\ = (!\u1|counter\(7) & \u1|topCounter\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_counter\(7),
	datac => \u1|ALT_INV_topCounter\(7),
	combout => \u1|LessThan3~6_combout\);

-- Location: MLABCELL_X87_Y21_N42
\u1|LessThan3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~8_combout\ = ( \u1|counter\(0) & ( \u1|topCounter\(1) & ( (!\u1|counter\(2) & ((!\u1|counter\(1)) # (\u1|topCounter\(2)))) # (\u1|counter\(2) & (!\u1|counter\(1) & \u1|topCounter\(2))) ) ) ) # ( !\u1|counter\(0) & ( \u1|topCounter\(1) & ( 
-- (!\u1|counter\(2) & (((!\u1|counter\(1)) # (\u1|topCounter\(2))) # (\u1|topCounter\(0)))) # (\u1|counter\(2) & (\u1|topCounter\(2) & ((!\u1|counter\(1)) # (\u1|topCounter\(0))))) ) ) ) # ( \u1|counter\(0) & ( !\u1|topCounter\(1) & ( (!\u1|counter\(2) & 
-- \u1|topCounter\(2)) ) ) ) # ( !\u1|counter\(0) & ( !\u1|topCounter\(1) & ( (!\u1|counter\(2) & (((\u1|topCounter\(0) & !\u1|counter\(1))) # (\u1|topCounter\(2)))) # (\u1|counter\(2) & (\u1|topCounter\(0) & (!\u1|counter\(1) & \u1|topCounter\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011011100000000001100110011000100111111011100000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_topCounter\(0),
	datab => \u1|ALT_INV_counter\(2),
	datac => \u1|ALT_INV_counter\(1),
	datad => \u1|ALT_INV_topCounter\(2),
	datae => \u1|ALT_INV_counter\(0),
	dataf => \u1|ALT_INV_topCounter\(1),
	combout => \u1|LessThan3~8_combout\);

-- Location: MLABCELL_X87_Y21_N36
\u1|LessThan3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~9_combout\ = ( \u1|counter\(3) & ( (!\u1|topCounter\(4) & (!\u1|counter\(4) & (\u1|topCounter\(3) & \u1|LessThan3~8_combout\))) # (\u1|topCounter\(4) & ((!\u1|counter\(4)) # ((\u1|topCounter\(3) & \u1|LessThan3~8_combout\)))) ) ) # ( 
-- !\u1|counter\(3) & ( (!\u1|topCounter\(4) & (!\u1|counter\(4) & ((\u1|LessThan3~8_combout\) # (\u1|topCounter\(3))))) # (\u1|topCounter\(4) & ((!\u1|counter\(4)) # ((\u1|LessThan3~8_combout\) # (\u1|topCounter\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110111011101010011011101110101000100010011010100010001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_topCounter\(4),
	datab => \u1|ALT_INV_counter\(4),
	datac => \u1|ALT_INV_topCounter\(3),
	datad => \u1|ALT_INV_LessThan3~8_combout\,
	dataf => \u1|ALT_INV_counter\(3),
	combout => \u1|LessThan3~9_combout\);

-- Location: MLABCELL_X87_Y21_N39
\u1|LessThan3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~7_combout\ = !\u1|counter\(7) $ (!\u1|topCounter\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_counter\(7),
	datad => \u1|ALT_INV_topCounter\(7),
	combout => \u1|LessThan3~7_combout\);

-- Location: MLABCELL_X87_Y21_N48
\u1|LessThan3~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~10_combout\ = ( \u1|LessThan3~9_combout\ & ( !\u1|LessThan3~7_combout\ & ( (!\u1|counter\(6) & ((!\u1|counter\(5)) # ((\u1|topCounter\(5)) # (\u1|topCounter\(6))))) # (\u1|counter\(6) & (\u1|topCounter\(6) & ((!\u1|counter\(5)) # 
-- (\u1|topCounter\(5))))) ) ) ) # ( !\u1|LessThan3~9_combout\ & ( !\u1|LessThan3~7_combout\ & ( (!\u1|counter\(6) & (((!\u1|counter\(5) & \u1|topCounter\(5))) # (\u1|topCounter\(6)))) # (\u1|counter\(6) & (!\u1|counter\(5) & (\u1|topCounter\(6) & 
-- \u1|topCounter\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010001110100011101010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_counter\(6),
	datab => \u1|ALT_INV_counter\(5),
	datac => \u1|ALT_INV_topCounter\(6),
	datad => \u1|ALT_INV_topCounter\(5),
	datae => \u1|ALT_INV_LessThan3~9_combout\,
	dataf => \u1|ALT_INV_LessThan3~7_combout\,
	combout => \u1|LessThan3~10_combout\);

-- Location: MLABCELL_X87_Y21_N54
\u1|LessThan3~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~11_combout\ = ( \u1|counter\(9) & ( \u1|LessThan3~10_combout\ & ( (!\u1|topCounter\(9)) # ((\u1|counter\(8) & !\u1|topCounter\(8))) ) ) ) # ( !\u1|counter\(9) & ( \u1|LessThan3~10_combout\ & ( (\u1|counter\(8) & (!\u1|topCounter\(8) & 
-- !\u1|topCounter\(9))) ) ) ) # ( \u1|counter\(9) & ( !\u1|LessThan3~10_combout\ & ( (!\u1|topCounter\(9)) # ((!\u1|counter\(8) & (!\u1|topCounter\(8) & !\u1|LessThan3~6_combout\)) # (\u1|counter\(8) & ((!\u1|topCounter\(8)) # (!\u1|LessThan3~6_combout\)))) 
-- ) ) ) # ( !\u1|counter\(9) & ( !\u1|LessThan3~10_combout\ & ( (!\u1|topCounter\(9) & ((!\u1|counter\(8) & (!\u1|topCounter\(8) & !\u1|LessThan3~6_combout\)) # (\u1|counter\(8) & ((!\u1|topCounter\(8)) # (!\u1|LessThan3~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000001000000111111011111010001000000010000001111010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_counter\(8),
	datab => \u1|ALT_INV_topCounter\(8),
	datac => \u1|ALT_INV_topCounter\(9),
	datad => \u1|ALT_INV_LessThan3~6_combout\,
	datae => \u1|ALT_INV_counter\(9),
	dataf => \u1|ALT_INV_LessThan3~10_combout\,
	combout => \u1|LessThan3~11_combout\);

-- Location: MLABCELL_X87_Y22_N54
\u1|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~5_combout\ = ( \u1|topCounter\(12) & ( !\u1|counter\(12) ) ) # ( !\u1|topCounter\(12) & ( \u1|counter\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_counter\(12),
	dataf => \u1|ALT_INV_topCounter\(12),
	combout => \u1|LessThan3~5_combout\);

-- Location: MLABCELL_X87_Y22_N0
\u1|LessThan3~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~12_combout\ = ( \u1|LessThan3~11_combout\ & ( !\u1|LessThan3~5_combout\ & ( (!\u1|topCounter\(11) & (!\u1|counter\(11) & (\u1|topCounter\(10) & !\u1|counter\(10)))) # (\u1|topCounter\(11) & ((!\u1|counter\(11)) # ((\u1|topCounter\(10) & 
-- !\u1|counter\(10))))) ) ) ) # ( !\u1|LessThan3~11_combout\ & ( !\u1|LessThan3~5_combout\ & ( (!\u1|topCounter\(11) & (!\u1|counter\(11) & ((!\u1|counter\(10)) # (\u1|topCounter\(10))))) # (\u1|topCounter\(11) & ((!\u1|counter\(11)) # ((!\u1|counter\(10)) 
-- # (\u1|topCounter\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110101001101010011010100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_topCounter\(11),
	datab => \u1|ALT_INV_counter\(11),
	datac => \u1|ALT_INV_topCounter\(10),
	datad => \u1|ALT_INV_counter\(10),
	datae => \u1|ALT_INV_LessThan3~11_combout\,
	dataf => \u1|ALT_INV_LessThan3~5_combout\,
	combout => \u1|LessThan3~12_combout\);

-- Location: MLABCELL_X87_Y22_N51
\u1|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~4_combout\ = ( \u1|topCounter\(12) & ( !\u1|counter\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_counter\(12),
	dataf => \u1|ALT_INV_topCounter\(12),
	combout => \u1|LessThan3~4_combout\);

-- Location: MLABCELL_X87_Y22_N6
\u1|LessThan3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~13_combout\ = ( \u1|LessThan3~12_combout\ & ( \u1|LessThan3~4_combout\ & ( (!\u1|counter\(14) & (\u1|counter\(13) & (!\u1|topCounter\(13) & !\u1|topCounter\(14)))) # (\u1|counter\(14) & ((!\u1|topCounter\(14)) # ((\u1|counter\(13) & 
-- !\u1|topCounter\(13))))) ) ) ) # ( !\u1|LessThan3~12_combout\ & ( \u1|LessThan3~4_combout\ & ( (!\u1|counter\(14) & (\u1|counter\(13) & (!\u1|topCounter\(13) & !\u1|topCounter\(14)))) # (\u1|counter\(14) & ((!\u1|topCounter\(14)) # ((\u1|counter\(13) & 
-- !\u1|topCounter\(13))))) ) ) ) # ( \u1|LessThan3~12_combout\ & ( !\u1|LessThan3~4_combout\ & ( (!\u1|counter\(14) & (\u1|counter\(13) & (!\u1|topCounter\(13) & !\u1|topCounter\(14)))) # (\u1|counter\(14) & ((!\u1|topCounter\(14)) # ((\u1|counter\(13) & 
-- !\u1|topCounter\(13))))) ) ) ) # ( !\u1|LessThan3~12_combout\ & ( !\u1|LessThan3~4_combout\ & ( (!\u1|counter\(14) & (!\u1|topCounter\(14) & ((!\u1|topCounter\(13)) # (\u1|counter\(13))))) # (\u1|counter\(14) & (((!\u1|topCounter\(13)) # 
-- (!\u1|topCounter\(14))) # (\u1|counter\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100110001011100110001000001110011000100000111001100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_counter\(13),
	datab => \u1|ALT_INV_counter\(14),
	datac => \u1|ALT_INV_topCounter\(13),
	datad => \u1|ALT_INV_topCounter\(14),
	datae => \u1|ALT_INV_LessThan3~12_combout\,
	dataf => \u1|ALT_INV_LessThan3~4_combout\,
	combout => \u1|LessThan3~13_combout\);

-- Location: MLABCELL_X87_Y22_N42
\u1|LessThan3~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~14_combout\ = ( \u1|topCounter\(16) & ( \u1|LessThan3~13_combout\ & ( (!\u1|LessThan3~3_combout\ & ((!\u1|counter\(16)) # ((\u1|topCounter\(15) & !\u1|counter\(15))))) ) ) ) # ( !\u1|topCounter\(16) & ( \u1|LessThan3~13_combout\ & ( 
-- (!\u1|LessThan3~3_combout\ & (\u1|topCounter\(15) & (!\u1|counter\(15) & !\u1|counter\(16)))) ) ) ) # ( \u1|topCounter\(16) & ( !\u1|LessThan3~13_combout\ & ( (!\u1|LessThan3~3_combout\ & (((!\u1|counter\(15)) # (!\u1|counter\(16))) # 
-- (\u1|topCounter\(15)))) ) ) ) # ( !\u1|topCounter\(16) & ( !\u1|LessThan3~13_combout\ & ( (!\u1|LessThan3~3_combout\ & (!\u1|counter\(16) & ((!\u1|counter\(15)) # (\u1|topCounter\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000000000101010101010001000100000000000001010101000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan3~3_combout\,
	datab => \u1|ALT_INV_topCounter\(15),
	datac => \u1|ALT_INV_counter\(15),
	datad => \u1|ALT_INV_counter\(16),
	datae => \u1|ALT_INV_topCounter\(16),
	dataf => \u1|ALT_INV_LessThan3~13_combout\,
	combout => \u1|LessThan3~14_combout\);

-- Location: MLABCELL_X87_Y22_N30
\u1|LessThan3~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~16_combout\ = (!\u1|topCounter\(20) & (!\u1|counter\(19) & (\u1|topCounter\(19) & !\u1|counter\(20)))) # (\u1|topCounter\(20) & ((!\u1|counter\(20)) # ((!\u1|counter\(19) & \u1|topCounter\(19)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110100000100010111010000010001011101000001000101110100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_topCounter\(20),
	datab => \u1|ALT_INV_counter\(19),
	datac => \u1|ALT_INV_topCounter\(19),
	datad => \u1|ALT_INV_counter\(20),
	combout => \u1|LessThan3~16_combout\);

-- Location: MLABCELL_X87_Y22_N39
\u1|LessThan3~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~15_combout\ = ( \u1|counter\(20) & ( (\u1|topCounter\(20) & (!\u1|topCounter\(19) $ (\u1|counter\(19)))) ) ) # ( !\u1|counter\(20) & ( (!\u1|topCounter\(20) & (!\u1|topCounter\(19) $ (\u1|counter\(19)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_topCounter\(19),
	datac => \u1|ALT_INV_counter\(19),
	datad => \u1|ALT_INV_topCounter\(20),
	dataf => \u1|ALT_INV_counter\(20),
	combout => \u1|LessThan3~15_combout\);

-- Location: MLABCELL_X87_Y22_N15
\u1|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~2_combout\ = ( \u1|topCounter\(17) & ( !\u1|counter\(17) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_counter\(17),
	dataf => \u1|ALT_INV_topCounter\(17),
	combout => \u1|LessThan3~2_combout\);

-- Location: MLABCELL_X87_Y22_N18
\u1|LessThan3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~17_combout\ = ( \u1|counter\(18) & ( \u1|LessThan3~2_combout\ & ( (!\u1|LessThan3~16_combout\ & ((!\u1|topCounter\(18)) # (!\u1|LessThan3~15_combout\))) ) ) ) # ( !\u1|counter\(18) & ( \u1|LessThan3~2_combout\ & ( (!\u1|LessThan3~16_combout\ 
-- & !\u1|LessThan3~15_combout\) ) ) ) # ( \u1|counter\(18) & ( !\u1|LessThan3~2_combout\ & ( (!\u1|LessThan3~16_combout\ & ((!\u1|topCounter\(18)) # ((!\u1|LessThan3~14_combout\) # (!\u1|LessThan3~15_combout\)))) ) ) ) # ( !\u1|counter\(18) & ( 
-- !\u1|LessThan3~2_combout\ & ( (!\u1|LessThan3~16_combout\ & ((!\u1|LessThan3~15_combout\) # ((!\u1|topCounter\(18) & !\u1|LessThan3~14_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010000000111100001110000011110000000000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_topCounter\(18),
	datab => \u1|ALT_INV_LessThan3~14_combout\,
	datac => \u1|ALT_INV_LessThan3~16_combout\,
	datad => \u1|ALT_INV_LessThan3~15_combout\,
	datae => \u1|ALT_INV_counter\(18),
	dataf => \u1|ALT_INV_LessThan3~2_combout\,
	combout => \u1|LessThan3~17_combout\);

-- Location: MLABCELL_X87_Y22_N36
\u1|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~1_combout\ = ( \u1|topCounter\(23) & ( !\u1|counter\(23) ) ) # ( !\u1|topCounter\(23) & ( \u1|counter\(23) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_counter\(23),
	dataf => \u1|ALT_INV_topCounter\(23),
	combout => \u1|LessThan3~1_combout\);

-- Location: MLABCELL_X87_Y20_N54
\u1|LessThan3~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~18_combout\ = ( \u1|counter\(22) & ( !\u1|LessThan3~1_combout\ & ( (\u1|topCounter\(22) & ((!\u1|counter\(21) & ((!\u1|LessThan3~17_combout\) # (\u1|topCounter\(21)))) # (\u1|counter\(21) & (\u1|topCounter\(21) & 
-- !\u1|LessThan3~17_combout\)))) ) ) ) # ( !\u1|counter\(22) & ( !\u1|LessThan3~1_combout\ & ( ((!\u1|counter\(21) & ((!\u1|LessThan3~17_combout\) # (\u1|topCounter\(21)))) # (\u1|counter\(21) & (\u1|topCounter\(21) & !\u1|LessThan3~17_combout\))) # 
-- (\u1|topCounter\(22)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100101111000010110000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_counter\(21),
	datab => \u1|ALT_INV_topCounter\(21),
	datac => \u1|ALT_INV_topCounter\(22),
	datad => \u1|ALT_INV_LessThan3~17_combout\,
	datae => \u1|ALT_INV_counter\(22),
	dataf => \u1|ALT_INV_LessThan3~1_combout\,
	combout => \u1|LessThan3~18_combout\);

-- Location: MLABCELL_X87_Y20_N45
\u1|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add6~1_sumout\ = SUM(( \u1|counter\(25) ) + ( GND ) + ( \u1|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_counter\(25),
	cin => \u1|Add6~6\,
	sumout => \u1|Add6~1_sumout\);

-- Location: FF_X87_Y20_N47
\u1|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|Add6~1_sumout\,
	sclr => \u1|LessThan3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(25));

-- Location: MLABCELL_X87_Y22_N33
\u1|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~0_combout\ = ( \u1|topCounter\(23) & ( !\u1|counter\(23) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_counter\(23),
	dataf => \u1|ALT_INV_topCounter\(23),
	combout => \u1|LessThan3~0_combout\);

-- Location: MLABCELL_X87_Y20_N51
\u1|LessThan3~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan3~19_combout\ = ( \u1|counter\(25) & ( \u1|LessThan3~0_combout\ & ( (!\u1|topCounter\(25)) # ((\u1|counter\(24) & !\u1|topCounter\(24))) ) ) ) # ( !\u1|counter\(25) & ( \u1|LessThan3~0_combout\ & ( (!\u1|topCounter\(25) & (\u1|counter\(24) & 
-- !\u1|topCounter\(24))) ) ) ) # ( \u1|counter\(25) & ( !\u1|LessThan3~0_combout\ & ( (!\u1|topCounter\(25)) # ((!\u1|counter\(24) & (!\u1|topCounter\(24) & !\u1|LessThan3~18_combout\)) # (\u1|counter\(24) & ((!\u1|topCounter\(24)) # 
-- (!\u1|LessThan3~18_combout\)))) ) ) ) # ( !\u1|counter\(25) & ( !\u1|LessThan3~0_combout\ & ( (!\u1|topCounter\(25) & ((!\u1|counter\(24) & (!\u1|topCounter\(24) & !\u1|LessThan3~18_combout\)) # (\u1|counter\(24) & ((!\u1|topCounter\(24)) # 
-- (!\u1|LessThan3~18_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000100000111110111011101000100000001000001011101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_topCounter\(25),
	datab => \u1|ALT_INV_counter\(24),
	datac => \u1|ALT_INV_topCounter\(24),
	datad => \u1|ALT_INV_LessThan3~18_combout\,
	datae => \u1|ALT_INV_counter\(25),
	dataf => \u1|ALT_INV_LessThan3~0_combout\,
	combout => \u1|LessThan3~19_combout\);

-- Location: FF_X87_Y20_N50
\u1|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \u1|LessThan3~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|enable~q\);

-- Location: LABCELL_X81_Y16_N39
\u1|state~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|state~7_combout\ = ( \u1|start_200_steps~q\ & ( \stepmotor_en~input_o\ & ( (\u1|enable~q\ & !\u1|process_0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_enable~q\,
	datac => \u1|ALT_INV_process_0~0_combout\,
	datae => \u1|ALT_INV_start_200_steps~q\,
	dataf => \ALT_INV_stepmotor_en~input_o\,
	combout => \u1|state~7_combout\);

-- Location: FF_X45_Y9_N53
\u1|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|state~10_combout\,
	ena => \u1|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|state.s3~q\);

-- Location: LABCELL_X45_Y9_N12
\u1|state~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|state~9_combout\ = ( \stepmotor_dir~input_o\ & ( \u1|state.s3~q\ & ( \u1|state.s1~q\ ) ) ) # ( !\stepmotor_dir~input_o\ & ( \u1|state.s3~q\ ) ) # ( \stepmotor_dir~input_o\ & ( !\u1|state.s3~q\ & ( \u1|state.s1~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_state.s1~q\,
	datae => \ALT_INV_stepmotor_dir~input_o\,
	dataf => \u1|ALT_INV_state.s3~q\,
	combout => \u1|state~9_combout\);

-- Location: FF_X45_Y9_N14
\u1|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|state~9_combout\,
	ena => \u1|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|state.s2~q\);

-- Location: LABCELL_X45_Y9_N6
\u1|state~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|state~8_combout\ = ( !\stepmotor_dir~input_o\ & ( \u1|state.s0~q\ & ( \u1|state.s2~q\ ) ) ) # ( \stepmotor_dir~input_o\ & ( !\u1|state.s0~q\ ) ) # ( !\stepmotor_dir~input_o\ & ( !\u1|state.s0~q\ & ( \u1|state.s2~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_state.s2~q\,
	datae => \ALT_INV_stepmotor_dir~input_o\,
	dataf => \u1|ALT_INV_state.s0~q\,
	combout => \u1|state~8_combout\);

-- Location: FF_X45_Y9_N8
\u1|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|state~8_combout\,
	ena => \u1|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|state.s1~q\);

-- Location: LABCELL_X45_Y9_N33
\u1|state~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|state~6_combout\ = ( !\stepmotor_dir~input_o\ & ( \u1|state.s3~q\ & ( !\u1|state.s1~q\ ) ) ) # ( \stepmotor_dir~input_o\ & ( !\u1|state.s3~q\ ) ) # ( !\stepmotor_dir~input_o\ & ( !\u1|state.s3~q\ & ( !\u1|state.s1~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111111110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_state.s1~q\,
	datae => \ALT_INV_stepmotor_dir~input_o\,
	dataf => \u1|ALT_INV_state.s3~q\,
	combout => \u1|state~6_combout\);

-- Location: FF_X45_Y9_N35
\u1|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \u1|state~6_combout\,
	ena => \u1|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|state.s0~q\);

-- Location: LABCELL_X45_Y31_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


