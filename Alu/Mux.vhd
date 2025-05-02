-------------------------------------------------------------------------------
--
-- Title       : MUX
-- Design      : ALU
-- Author      : Dell
-- Company     : student
--
-------------------------------------------------------------------------------
--
-- File        : C:/My_Designs/hardware/ALU/src/MUX.vhd
-- Generated   : Fri May  2 19:34:25 2025
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
--{entity {MUX} architecture {Behavioral}}

library IEEE;
use IEEE.std_logic_1164.all;

entity MUX is
	port(
		input0 : in STD_LOGIC_VECTOR(31 downto 0);
		imm : in STD_LOGIC_VECTOR(31 downto 0);
		sel : in STD_LOGIC;
		output : out STD_LOGIC_VECTOR(31 downto 0)
	);
end MUX;

--}} End of automatically maintained section

architecture Behavioral of MUX is
begin
	output <= input0 when sel = '0' else imm;

end Behavioral;
