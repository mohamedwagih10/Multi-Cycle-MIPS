-------------------------------------------------------------------------------
--
-- Title       : shift_left
-- Design      : ALU
-- Author      : Dell
-- Company     : student
--
-------------------------------------------------------------------------------
--
-- File        : C:/My_Designs/hardware/ALU/src/shift_left.vhd
-- Generated   : Fri May  2 19:39:37 2025
-- From        : Interface description file
-- By          : ItfToHdl ver. 1.0
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--    and may be overwritten
--{entity {shift_left} architecture {Behavioral}}

library IEEE;
use IEEE.std_logic_1164.all;

entity shift_left is
	port(
	    input : in STD_LOGIC_VECTOR(31 downto 0);  
		output : out STD_LOGIC_VECTOR(31 downto 0)
	);
end shift_left;

--}} End of automatically maintained section

architecture Behavioral of shift_left is
begin
	output <= input(29 downto 0) & "00";

end Behavioral;
