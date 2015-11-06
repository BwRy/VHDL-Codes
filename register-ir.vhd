-- IR Register VHDL Code


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity IR is  --Instruction Register
    Port ( d : inout  STD_LOGIC_VECTOR (7 downto 0) :="ZZZZZZZZ";
           i : out  STD_LOGIC_VECTOR (2 downto 0) :="000";
           le : in  STD_LOGIC;
           oc : in  STD_LOGIC);
end IR;

architecture Behavioral of IR is
	signal Temp : std_logic_vector(7 downto 0) :="ZZZZZZZZ" ;
begin
	process (D,LE,OC)
	begin
		if(le='1') then
			Temp <= d;
		end if;
		
		if(oc='1') then
			d <= Temp;
		else
			d <= "ZZZZZZZZ";
		end if;
	end process;
	i <= d(7 downto 5) ;
end Behavioral;

