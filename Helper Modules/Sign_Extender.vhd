-------------------------------------------------------------------------------
--
-- Title       : sign_extend
-- Design      : ALU
-- Author      : Dell
-- Company     : student
--
-------------------------------------------------------------------------------
--
-- File        : c:/My_Designs/hardware/ALU/src/sign_extend.vhd
-- Generated   : Mon Apr 28 17:01:15 2025
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
--{entity {sign_extend} architecture {convert}}

library IEEE;
use IEEE.std_logic_1164.all; 
use IEEE.NUMERIC_STD.ALL;

entity sign_extend is
	port(
	input : in STD_LOGIC_Vector(15 downto 0);
	output : out STD_LOGIC_Vector(31 downto 0)
	);
end sign_extend;

--}} End of automatically maintained section

architecture convert of sign_extend is
begin	 
	process(input)
	begin
	--	output <=(others => input(15)) & input;		
	output <= std_logic_vector(resize(signed(input),32));
		end process;
end convert;
