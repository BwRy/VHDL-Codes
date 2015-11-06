-- ACC Register VHDL Code

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity acc is
    Port ( D : inout  STD_LOGIC_VECTOR (7 downto 0);
           LE : in  STD_LOGIC;
           OC : in  STD_LOGIC);
end acc;

architecture Behavioral of acc is
signal Temp : STD_LOGIC_VECTOR (7 downto 0) :="ZZZZZZZZ" ;
begin
	Process(LE,D,OC)
		begin
			if(LE='1') then 
				Temp <= D ;
				
			end if;
			
			if(OC='1') then
				
				D <= Temp ;
			else
				D <= "ZZZZZZZZ" ;
			end if ;
end Process ;
end Behavioral;
