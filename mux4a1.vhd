library ieee;
use ieee.std_logic_1164.all;

entity mux4a1 is 
 port (
       A,B,C,D: in std_logic_vector(0 to 4);
	   S: in std_logic_vector(0 to 1);
	   Q: out std_logic_vector(0 to 4));
end mux4a1;

architecture muxComp of mux4a1 is
begin
 Q <= A when (S = "00") else 
      B when (S = "01") else
	  C when (S = "10") else 
	  D when (S = "11") else 
	  "00000";

end muxComp;