library ieee;
use ieee.std_logic_1164.all;

entity Comparador00 is
port(
    A,B: in std_logic_vector(0 to 7);
    C: out std_logic_vector(0 to 5)
);
end Comparador00;

architecture Comparador0 of Comparador00 is
begin
    process (A,B) is
    begin
        if (A /= B) then
            C <= "010011" when (A > B) else "100101";
        elsif (A > B) then -- A = B = 000010
            C <= "010010";
        elsif (A < B) then -- A = B = 000100
            C <= "100101";
        elsif (A = B) then -- A = B = 001000
            C <= "111000";
        elsif (A >= B) then -- A = B = 010000
            C <= "011000" when (A = B) else "010011";
        elsif (A <= B) then -- A = B = 100000
            C <= "101000" when (A = B) else "100101";
			-- A /= B = 000001
			-- A > B =  000010
			-- A < B =  000100
			-- A = B =  001000
			-- A >= B = 010000
			-- A <= B = 100000
        end if;
    end process;
end Comparador0;