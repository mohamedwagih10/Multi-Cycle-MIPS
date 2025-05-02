library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity Memory is 
	port (
        clk: in std_logic;
	-- We only have 256 address available so 8 bits would be enough
        -- But we use 32 bit because we are dealing with other registers and gates
        -- that works with 32-bit format.
        address : in std_logic_vector(31 downto 0);
        dataIn : in std_logic_vector(31 downto 0); -- Data to write [used only with "SW"]

        -- Control Signals
        MemWrite : in std_logic;
        MemRead : in std_logic;
        
        -- Output Data [Data or Instructions]
        dataOut : out std_logic_vector(31 downto 0)
	);
					   			   
end entity;
-- Our Memory is a simple array of 256 words of 32 bits each
architecture Behavioral of Memory is
    type memArray is array(0 to 255) of std_logic_vector(31 downto 0); -- Creating custom type
    signal Memory: memArray := (others => (others => '0')); -- Creating an instance of that type

    begin
        process (clk) -- When clk change (rising or falling)
        begin
            if (rising_edge(clk)) then -- If that change was an uprising edge
                if (MemRead = '1') then
                    dataOut <= Memory(to_integer(unsigned(address(7 downto 0)))); -- Fetch data from address
                elsif (MemWrite = '1') then
                    Memory(to_integer(unsigned(address(7 downto 0)))) <= dataIn; -- Store data in address 
                end if;
            end if;
        end process;
end architecture;
    
