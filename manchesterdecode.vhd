library ieee;
use ieee.std_logic_1164.all;

entity manchesterdecode  is
	port(
		clk, reset : in std_logic;
		y : in std_logic;
		v, d : out std_logic
	);
end manchesterdecode;

architecture moore_arch of manchesterdecode is
	
	type state_type is (idle, s1a, s1b, s0a, s0b);
	
	signal state_reg, state_next: state_type;
	
	begin
		process (clk, reset)
		begin
			if (reset ='1') then
				state_reg <= idle;
			elsif (clk'event and clk = '1') then
				state_reg <= state_next;
			end if;	
		end process;
		
		process (state_reg, y)
		begin
			case state_reg is
				when idle =>
					if y = '1' then
						state_next <= s1a;
					else
						state_next <= s0a;
					end if;
				
				when s1a =>
					if y = '1' then
						state_next <= idle;
					else
						state_next <= s1b;
					end if;
					
				when s1b =>
					if y = '1' then
						state_next <= s1a;
					else
						state_next <= s0a;
				   end if;
						
				when s0a =>
					if y = '1' then
						state_next <= s0b;
					else
						state_next <= idle;
					end if;
					
				when s0b =>
					if y = '1' then
						state_next <= s1a;
					else
						state_next <= s0a;
					end if;
			end case;
		end process;
		
		d <= '1' when state_reg=s1b else
			'0' when state_reg=s0b;
		v <= '1' when state_reg=s1b or state_reg=s0b else '0';	
	
end moore_arch;