library ieee;
use ieee.std_logic_1164.all;

entity Demux1a4 is 
 port (
	   Q: in std_logic_vector(0 to 4);
	   S: in std_logic_vector(0 to 1);
	   A,B,C,D: out std_logic_vector(0 to 4));
end Demux1a4;

architecture DemuxComp of Demux1a4 is
begin
 process (Q, S) is 
  begin 
   case S is 
    when "00" =>
	 A <= Q;
	 B <="00000";
	 C <="00000";
	 D <="00000";
	when "01" =>
	 A <="00000";
	 B <= Q;
	 C <="00000";
	 D <="00000";
	when "10" => 
	 A <="00000";
	 B <="00000";
	 C <= Q;
	 D <="00000";
	when "11" =>
	 A <="00000";
	 B <="00000";
	 C <="00000";
	 D <= Q;
	when others =>
	 A <="00000";
	 B <="00000";
	 C <="00000";
	 D <="00000";
   end case;
 end process;
end DemuxComp;