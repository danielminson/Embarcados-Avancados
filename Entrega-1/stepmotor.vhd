library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all; -- Include this to work with unsigned types

entity stepmotor is
    port (
        -- Globals
        clk   : in  std_logic;

        -- controls
		  start   : in std_logic; 
        en      : in std_logic;                     -- 1 on/ 0 off
        dir     : in std_logic;                     -- 1 clockwise, 0 counter-clockwise
        vel     : in std_logic_vector(1 downto 0);  -- 00: low / 11: fast

        -- I/Os
        phases  : out std_logic_vector(3 downto 0)
    );
end entity stepmotor;

architecture rtl of stepmotor is

   TYPE STATE_TYPE IS (s0, s1, s2, s3);
   SIGNAL state  : STATE_TYPE := s0;
   signal enable : std_logic  := '0';
   signal step_counter : integer range 0 to 200 := 0; -- Step counter
   signal prev_start : std_logic := '1';             -- Previous value of start signal
   signal topCounter : integer range 0 to 50000000;
   signal start_200_steps : std_logic := '0';        -- Flag to start 200 steps
   signal accel_factor : integer range 1 to 5 := 1; -- Acceleration factor
signal tempTopCounter : integer range 0 to 50000000; -- Temporary signal to store the conditional value
	
	begin

  process(clk)
begin
  if (rising_edge(clk)) then
    if (start = '0' and prev_start = '1' and en = '1'  ) then  -- Detect falling edge of start signal
      start_200_steps <= '1'; -- Set flag to start 200 steps
		step_counter <= 0; -- Reset step counter
    end if;
		
		-- Acceleration logic
    if (start_200_steps = '1' and step_counter < 50) then
	  accel_factor <= 10 - (step_counter / 50) * 9; -- Decreasing from 10 to 1 as step_counter goes from 0 to 50
	elsif (start_200_steps = '1' and step_counter >= 150) then
	  accel_factor <= 1 + (((step_counter - 150) / 50) * 9); -- Increasing from 1 to 10 as step_counter goes from 150 to 200
	else
	  accel_factor <= 1;
	end if;
	 
    if (start_200_steps = '1' and step_counter < 200) then
      if (enable = '1' and en = '1') then
        case state is
          when s0 =>
            if (dir = '1') then state <= s1; else state <= s3; end if;
          when s1 =>
            if (dir = '1') then state <= s2; else state <= s0; end if;
          when s2 =>
            if (dir = '1') then state <= s3; else state <= s1; end if;
          when s3 =>
            if (dir = '1') then state <= s0; else state <= s2; end if;
          when others =>
            state <= s0;
        end case;
        step_counter <= step_counter + 1; -- Increment step counter
      end if;
    elsif (step_counter = 200) then
      start_200_steps <= '0'; -- Reset flag
      step_counter <= 0;      -- Reset step counter
    end if;
    
    prev_start <= start; -- Update the previous value of the start signal
  end if;
end process;

  PROCESS (state)
   BEGIN
      CASE state IS
        WHEN s0 =>
          phases <= "0001";
        WHEN s1 =>
          phases <= "0010";
        WHEN s2 =>
          phases <= "0100";
        when s3 =>
          phases <= "1000";
        when others =>
          phases <= "0000";
      END CASE;
   END PROCESS;

	
	 tempTopCounter <= 10000000 when vel = "00" else
                    5000000  when vel = "01" else
                    2500000  when vel = "10" else
                    1250000;

  -- Multiply tempTopCounter with accel_factor to get the final value of topCounter
  topCounter <= tempTopCounter * accel_factor;
  


  process(clk)
    variable counter : integer range 0 to 50000000 := 0;
  begin
    if (rising_edge(clk)) then
      if (counter < topCounter) then
        counter := counter + 1;
        enable  <= '0';
      else
        counter := 0;
        enable  <= '1';
      end if;
    end if;
  end process;

end rtl;
