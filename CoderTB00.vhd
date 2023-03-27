library ieee;
use ieee.std_logic_1164.all;

entity CoderTB00 is 
end CoderTB00;

architecture CoderTBComp of CoderTB00 is
 component Coder00
  port( 
       S: in std_logic_vector(0 to 4);
       Q: out std_logic_vector(0 to 2));
  end component;
Signal sS: std_logic_vector(0 to 4);
Signal sQ: std_logic_vector(0 to 2);
begin
 Sec1: Coder00 port map ( 
                        S => sS,
                        Q => sQ);
 estimulos: process 
 begin
  sS <= "00000";
  wait for 50 ns;
--------------------
  sS <= "00001";
  wait for 50 ns;
--------------------
  sS <= "00010";
  wait for 50 ns;
--------------------
  sS <= "00011";
  wait for 50 ns;
--------------------
  sS <= "00100";
  wait for 50 ns;
--------------------
  sS <= "00101";
  wait for 50 ns;
--------------------
  sS <= "00110";
  wait for 50 ns;
--------------------
  sS <= "00111";
  wait for 50 ns;
--------------------
  sS <= "01000";
  wait for 50 ns;
--------------------
  sS <= "01001";
  wait for 50 ns;
--------------------
  sS <= "01100";
  wait for 50 ns;
--------------------
  sS <= "01110";
  wait for 50 ns;
--------------------
  sS <= "01101";
  wait for 50 ns;
--------------------
  sS <= "01111";
  wait for 50 ns;
--------------------
  sS <= "10000";
  wait for 50 ns;
--------------------
  sS <= "10001";
  wait for 50 ns;
--------------------
  sS <= "11001";
  wait for 50 ns;
--------------------
  sS <= "11011";
  wait for 50 ns;
--------------------
  sS <= "11111";
  wait for 50 ns;
--------------------
  wait;
 end process;
end CoderTBComp;