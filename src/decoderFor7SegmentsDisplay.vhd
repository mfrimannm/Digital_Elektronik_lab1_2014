library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity Segment7 is
port( input: in std_logic_vector(3 downto 0);
	segment : out std_logic_vector(6 downto 0)
	--clk : in std_logic;
	--en : in std_logic;
	--reset : in std_logic
	);
end Segment7 ;

Architecture display of Segment7 is 
begin	


process (input)
	begin 
		case input is
		when "0000" =>
			segment <= not "0111111";
		when "0001" =>
			segment <= not "0000110";
		when "0010" =>
			segment <= not "1011011";
		when "0011" =>
			segment <= not "1001111";
		when "0100" =>
			segment <= not "1100110";
		when "0101" =>
			segment <= not "1101101";
		when "0110" =>
			segment <= not "1111101";
		when "0111" =>
			segment <= not "0000111";
		when "1000" =>
			segment <= not "1111111";
		when "1001" =>
			segment <= not "1101111";
		when "1010" =>
			segment <= not "1110111";
		when "1011" =>
			segment <= not "1111100";
		when "1100" =>
			segment <= not "0111001";
		when "1101" =>
			segment <= not "1011110";
		when "1110" =>
			segment <= not "1111001";
		when "1111" =>
			segment <= not "1110001";
		when others =>
			segment <= not "0000000";
	end case;
end process;

end display;