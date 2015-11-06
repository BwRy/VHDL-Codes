-- Decoder VHDL Code
-- CSROM Address Range is 00h - 0fh
-- CSRAM Address Range is 10h - 17h
-- CSIO0 Address Range is 1dh
-- CSIO1 Address Range is 1eh
-- CSIO2 Address Range is 1fh

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity decoder is
    Port ( addr : in  STD_LOGIC_VECTOR (4 downto 0);
           CSROM : out  STD_LOGIC;
           CSRAM : out  STD_LOGIC;
           CSIO0 : out  STD_LOGIC;
           CSIO1 : out  STD_LOGIC;
           CSIO2 : out  STD_LOGIC);
end decoder;

architecture Behavioral of decoder is

begin
	CSROM <= addr(4);
	CSRAM <= NOT(addr(4) AND NOT (addr(3)));
	CSIO0 <= NOT(addr(4) AND addr(3) AND addr(2) AND NOT (addr(1)) AND addr(0));
	CSIO1 <= NOT(addr(4) AND addr(3) AND addr(2) AND addr(1) AND NOT (addr(0)));
	CSIO2 <= NOT(addr(4) AND addr(3) AND addr(2) AND addr(1) AND addr(0));
end Behavioral;
