-- OUTPUT Buffer VHDL Code

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity output is
    Port ( data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           enable : in  STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (7 downto 0));
end output;

architecture Behavioral of output is
--	signal buff: std_logic_vector(7 downto 0);
begin
	data_out <= data_in when(enable='1') ;
--	else data_out;
--	data_out <= buff when(enable='1') else "ZZZZZZZZ";

end Behavioral;
