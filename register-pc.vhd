-- PC Register VHDL Code


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity PC is  -- Program Counter
    Port ( d : inout  STD_LOGIC_VECTOR (7 downto 0) :="ZZZZZZZZ";
           le : in  STD_LOGIC;
           oc : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           inc : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end PC;

architecture Behavioral of PC is
	signal Temp : std_logic_vector(4 downto 0) := "ZZZZZ" ;
begin
process(clk,clr)
begin
	if(clk'event and clk='1') then
		if (clr='1') then
			Temp <= "00000" ;
		elsif le='1' then
			temp <= d(4 downto 0) ;
		elsif inc='1' then
			Temp <= Temp+"00001" ;
		end if ;
	end if ;
end process ;
	d <= "000" & Temp when(OC = '1') else  "ZZZZZZZZ" ;
end Behavioral;

