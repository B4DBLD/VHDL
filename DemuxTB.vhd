library ieee;
use ieee.std_logic_1164.all;

entity DemuxTB is 
end DemuxTB;

architecture DemuxTBComp of DemuxTB is
 component Demux1a4
  port( 
       Q: in std_logic_vector(0 to 4);
	   S: in std_logic_vector(0 to 1);
	   A,B,C,D: out std_logic_vector(0 to 4));
  end component;
Signal sA, sB, sC, sD, sQ: std_logic_vector(0 to 4);
Signal sS: std_logic_vector(0 to 1);
begin
 Sec1: Demux1a4 port map (
                        A => sA, 
                        B => sB,
                        C => sC,
                        D => sD, 
                        S => sS,
                        Q => sQ);
 estimulos: process 
 begin
  sQ <= "00001";
  sS <= "00";
  wait for 50 ns;
--------------------
  sQ <= "00010";
  sS <= "01";
  wait for 50 ns;
-------------------- 
  sQ <= "00011";
  sS <= "10";
  wait for 50 ns;
-------------------- 
  sQ <= "00100";
  sS <= "11";
  wait for 50 ns;
-------------------- 
  wait;
 end process;
end DemuxTBComp;