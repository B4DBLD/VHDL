library ieee;
use ieee.std_logic_1164.all;

entity Coder00 is 
 port(
  S: in std_logic_vector(0 to 4);
  Q: out std_logic_vector(0 to 2));
 end Coder00;

architecture CoderComp of Coder00 is 
begin 
 process (S) is 
  begin 
   case S is 
    when "00000" =>
	 Q <= "000";
	when "00001" =>
	 Q <= "000";
	when "00010" =>
	 Q <= "001";
	when "00011" =>
	 Q <= "001";
	when "00100" =>
	 Q <= "010";
	when "00101" =>
	 Q <= "010";
	when "00110" =>
	 Q <= "010";
	when "00111" => 
	 Q <= "010";
	when "01000" =>
	 Q <= "011";
	when "01001" =>
	 Q <= "011";
	when "01101" =>
	 Q <= "011";
	when "01100" =>
	 Q <= "011";
	when "01110" =>
	 Q <= "011";
	when "01111" =>
	 Q <= "011";
	when others =>
	 Q <= "100";
   end case;
 end process;
end CoderComp;