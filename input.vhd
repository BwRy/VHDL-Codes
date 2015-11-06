-- INPUT Buffer VHDL Code

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity input is
    Port ( data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           enable : in  STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (7 downto 0));
end input;

architecture Behavioral of input is
	
begin
	data_out <= data_in when(enable='1') else "ZZZZZZZZ";

end Behavioral;
