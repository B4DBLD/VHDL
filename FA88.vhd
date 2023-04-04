library ieee;
use ieee.std_logic_1164.all;

entity FA88 is 
 port (
       E, F: in std_logic_vector(0 to 4);
	   Ci: in std_logic;
	   Q: out std_logic_vector(0 to 4);
	   Cout: out std_logic);
end FA88;

architecture FA88C of FA88 is 
 component FA8 is 
  port (
        FA, FB, Cin: in std_logic;
		FS, FC: out std_logic);
 end component;
 signal C: std_logic_vector(0 to 3);

begin 
 bit0: FA8 port map (
                               FA => E(4),
							   FB => F(4),
							   Cin => Ci,
							   FS => Q(4),
							   FC => C(3));
 bit1: FA8 port map (
                               FA => E(3),
							   FB => F(3),
							   Cin => C(3),
							   FS => Q(3),
							   FC => C(2));
 bit2: FA8 port map (
                               FA => E(2),
							   FB => F(2),
							   Cin => C(2),
							   FS => Q(2),
							   FC => C(1));
 bit3: FA8 port map (
                               FA => E(1),
							   FB => F(1),
							   Cin => C(1),
							   FS => Q(1),
							   FC => C(0));
 bit4: FA8 port map (
							   FA => E(0),
							   FB => F(0),
							   Cin => C(0),
							   FS => Q(0),
							   FC => Cout);
end FA88C;