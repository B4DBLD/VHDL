library ieee; 
use ieee.std_logic_1164.all;

entity HAFA8 is 
  port (
        A, B: in std_logic;
		S, C: out std_logic);
end HAFA8;

architecture HAFA80 of HAFA8 is 
begin
  S <= A xor B;
  C<= A and B;
end HAFA80;