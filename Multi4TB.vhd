library ieee;
use ieee.std_logic_1164.all;

entity Multi4TB is
end Multi4TB;

architecture Behavioral of Multi4TB is
component Multi4 is 
port(
    mA : in std_logic_vector(0 to 3);
    mB : in std_logic_vector(0 to 3);
    mC : out std_logic_vector(0 to 7);
    mCarry : out std_logic
);
end component;

signal smA : std_logic_vector(0 to 3);
signal smB : std_logic_vector(0 to 3);
signal smC : std_logic_vector(0 to 7);
signal smCarry : std_logic;

begin 
    UUT : Multi4 port map(
        mA => smA,
        mB => smB,
        mC => smC,
        mCarry => smCarry 
    );
    estimulos: process is 
    begin
    smA <= "0000";
    smB <= "0000";
    wait for 10 ns;
    smA <= "1011";
    smB <= "0011";
    wait for 10 ns;
    smA <= "1011";
    smB <= "0111";
    wait for 10 ns;
    smA <= "1011";
    smB <= "1111";
    wait for 10 ns;
	smA <= "1111";
    smB <= "1111";
    wait for 10 ns;
    smA <= "0010";
    smB <= "0010";
    wait for 10 ns;
    smA <= "0010";
    smB <= "0011";
    wait for 10 ns;
    smA <= "0011";
    smB <= "0101";
    wait;
    end process;
end Behavioral;