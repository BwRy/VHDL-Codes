-- INPUT and OUTPUT Buffer VHDL Code

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity inout is
    Port ( data1 : inout  STD_LOGIC_VECTOR (7 downto 0);
           data2 : inout  STD_LOGIC_VECTOR (7 downto 0);
           enable : in  STD_LOGIC);
end inout;

architecture Behavioral of inout is
	signal buff: std_logic_vector(7 downto 0);
begin
	buff <= data1 when(enable='1') else buff;
	data2 <= buff when(enable='1') else "ZZZZZZZZ";
	
	data1 <= data2 when(enable='0') else "ZZZZZZZZ";

end Behavioral;

