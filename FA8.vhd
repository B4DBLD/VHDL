library ieee; 
use ieee.std_logic_1164.all;

entity FA8 is 
  port (
        FA, FB, Cin: in std_logic;
		FS, FC: out std_logic);
end FA8;

architecture FA80 of FA8 is 
 component HAFA8 is 
   port( 
        A, B: in std_logic;
		S, C: out std_logic);
 end component;
 signal s1: std_logic;
 signal s2: std_logic;
 signal s3: std_logic;         
begin
f1: HAFA8 port map (
                         A => FA,
						 B => FB,
						 S => s1,
						 C => s2);
f2: HAFA8 port map (
                         A => s1,
						 B => Cin, 
						 S => FS, 
						 C => s3);
FC <= s2 or s3;


end FA80;