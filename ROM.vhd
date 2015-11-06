library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ROM is
    Port ( add : in  STD_LOGIC_VECTOR (3 downto 0);
           rd : in  STD_LOGIC;
           cs : in  STD_LOGIC;
           data : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end ROM;

architecture Behavioral of ROM is

type memory is array (0 to 15) of std_logic_vector (7 downto 0) ;
signal mem : memory := ("00011101" , "10111111" , "01101000" , "11100000" ,
									"00111110" , "01001111" , "00000000" , "00000000" ,
									"11100000" , "10111110" , "00111110" , "01001111" ,
									"00000000" , "00000000" , "10000000" , "00000000" ) ;

begin

data <= mem(conv_integer(add)) when (cs = '1' and rd = '1') else "ZZZZZZZZ" ;

end Behavioral;
