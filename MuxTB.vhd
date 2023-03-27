library ieee;
use ieee.std_logic_1164.all;

entity muxtb is 
end muxtb;

architecture muxTBComp of muxTB is
 component mux4a1
  port( 
       A,B,C,D: in std_logic_vector(0 to 4);
	   S: in std_logic_vector(0 to 1);
	   Q: out std_logic_vector(0 to 4));
  end component;
Signal sA, sB, sC, sD, sQ: std_logic_vector(0 to 4);
Signal sS: std_logic_vector(0 to 1);
begin
 Sec1: mux4a1 port map (
                        A => sA, 
                        B => sB,
                        C => sC,
                        D => sD, 
                        S => sS,
                        Q => sQ);
 estimulos: process 
 begin
  sA <= "00001";
  sB <= "00010";
  sC <= "00011";
  sD <= "00100";
  sS <= "00";
  wait for 50 ns;
--------------------
  sA <= "00001";
  sB <= "00010";
  sC <= "00011";
  sD <= "00100";
  sS <= "01";
  wait for 50 ns;
-------------------- 
  sA <= "00001";
  sB <= "00010";
  sC <= "00011";
  sD <= "00100";
  sS <= "10";
  wait for 50 ns;
-------------------- 
  sA <= "00001";
  sB <= "00010";
  sC <= "00011";
  sD <= "00100";
  sS <= "11";
  wait for 50 ns;
-------------------- 
  wait;
 end process;
end muxTBComp;