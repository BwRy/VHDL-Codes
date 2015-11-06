library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity ram is
port( cs,rd,wr :in std_logic:='0';
		addr:in std_logic_vector(2 downto 0);
		output :inout std_logic_vector(7 downto 0));
end ram;

architecture Behavioral of Ram is
Type data_array is array (7 downto 0) of std_logic_vector(7 downto 0) ;
signal data:data_array;
begin
			
	output<= data(conv_integer(addr))when( cs='1' and rd='1' and wr='0') else "ZZZZZZZZ";
					
	data(conv_integer(addr))<= output when (cs='1' and rd='0' and wr='1' );
				

end Behavioral;


