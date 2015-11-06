-- MAR Register VHDL Code


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity MAR is  --Memory Address Register
    Port ( d : in  STD_LOGIC_VECTOR (7 downto 0);
           a : out  STD_LOGIC_VECTOR (4 downto 0) := "ZZZZZ";
           le : in  STD_LOGIC);
end MAR;

architecture Behavioral of MAR is

begin
	Process(LE,D)
		begin
			if(LE='1') then
				A <= D(4 downto 0);
			end if;
		end Process ;

end Behavioral;
