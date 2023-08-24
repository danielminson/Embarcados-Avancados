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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/24/2023 16:18:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          toplevel
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY toplevel_vhd_vec_tst IS
END toplevel_vhd_vec_tst;
ARCHITECTURE toplevel_arch OF toplevel_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL fpga_clk_50 : STD_LOGIC;
SIGNAL stepmotor_dir : STD_LOGIC;
SIGNAL stepmotor_en : STD_LOGIC;
SIGNAL stepmotor_pio : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL stepmotor_start : STD_LOGIC;
SIGNAL stepmotor_vel : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT toplevel
	PORT (
	fpga_clk_50 : IN STD_LOGIC;
	stepmotor_dir : IN STD_LOGIC;
	stepmotor_en : IN STD_LOGIC;
	stepmotor_pio : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	stepmotor_start : IN STD_LOGIC;
	stepmotor_vel : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : toplevel
	PORT MAP (
-- list connections between master ports and signals
	fpga_clk_50 => fpga_clk_50,
	stepmotor_dir => stepmotor_dir,
	stepmotor_en => stepmotor_en,
	stepmotor_pio => stepmotor_pio,
	stepmotor_start => stepmotor_start,
	stepmotor_vel => stepmotor_vel
	);
-- stepmotor_vel[1]
t_prcs_stepmotor_vel_1: PROCESS
BEGIN
	stepmotor_vel(1) <= '0';
WAIT;
END PROCESS t_prcs_stepmotor_vel_1;
-- stepmotor_vel[0]
t_prcs_stepmotor_vel_0: PROCESS
BEGIN
	stepmotor_vel(0) <= '0';
WAIT;
END PROCESS t_prcs_stepmotor_vel_0;

-- stepmotor_start
t_prcs_stepmotor_start: PROCESS
BEGIN
	stepmotor_start <= '0';
	WAIT FOR 120000 ps;
	stepmotor_start <= '1';
	WAIT FOR 130000 ps;
	stepmotor_start <= '0';
WAIT;
END PROCESS t_prcs_stepmotor_start;

-- stepmotor_en
t_prcs_stepmotor_en: PROCESS
BEGIN
	stepmotor_en <= '1';
	WAIT FOR 999000 ps;
	stepmotor_en <= '0';
WAIT;
END PROCESS t_prcs_stepmotor_en;

-- stepmotor_dir
t_prcs_stepmotor_dir: PROCESS
BEGIN
	stepmotor_dir <= '0';
WAIT;
END PROCESS t_prcs_stepmotor_dir;

-- fpga_clk_50
t_prcs_fpga_clk_50: PROCESS
BEGIN
	FOR i IN 1 TO 49
	LOOP
		fpga_clk_50 <= '0';
		WAIT FOR 10000 ps;
		fpga_clk_50 <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	fpga_clk_50 <= '0';
	WAIT FOR 10000 ps;
	fpga_clk_50 <= '1';
	WAIT FOR 9000 ps;
	fpga_clk_50 <= '0';
WAIT;
END PROCESS t_prcs_fpga_clk_50;
END toplevel_arch;
