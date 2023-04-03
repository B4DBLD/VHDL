library ieee;
use ieee.std_logic_1164.all;

entity ComparadorTB00 is
end ComparadorTB00;

architecture ComparadorTB0 of ComparadorTB00 is    
 component Comparador00 is
    port(
        A, B : in std_logic_vector(0 to 7);
        c : out std_logic_vector(0 to 5)
    );
    end component;
    signal sA, sB : std_logic_vector(0 to 7);
    signal sc : std_logic_vector(0 to 5);
    begin
        comp: Comparador00 port map(
            A => sA,
            B => sB,
            c => sc
        );
        estimulos: process is
        begin
            sA <= "00000000";
            sB <= "00000000";
            wait for 20 ns;
            ----------------------------------
            sA <= "00000000";
            sB <= "00000001";
            wait for 20 ns;
            ----------------------------------
            sA <= "00000001";
            sB <= "00000000";
            wait for 20 ns;
            ----------------------------------
            wait;
        end process;

end ComparadorTB0;
