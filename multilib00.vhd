library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity multilib00 is
port(
    a: in std_logic_vector(0 to 3);
    b: in std_logic_vector(0 to 3);
    c: out std_logic_vector(0 to 7)
);
end multilib00;

architecture miltilib0 of multilib00 is
Signal Qt: std_logic_vector(0 to 7);
begin
    Qt <= a * b;
	c <= Qt;
end miltilib0;

