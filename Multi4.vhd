library ieee;
use ieee.std_logic_1164.all;

entity multi4 is
port(
    mA: in std_logic_vector(0 to 3);
    mB: in std_logic_vector(0 to 3);
    mC: out std_logic_vector(0 to 7);
    mCarry: out std_logic
);
end multi4;

architecture arch of multi4 is
    component FA88 is
    port(
        E, F: in std_logic_vector(0 to 4);
	    Ci: in std_logic;
	    Q: out std_logic_vector(0 to 4);
	    Cout: out std_logic);
    end component FA88;
    signal C: std_logic_vector(0 to 1);
    signal sA, sB, sC, sD, sE, sF: std_logic_vector(0 to 4);
    signal sRes: std_logic_vector(0 to 3);
begin
    mC(7) <= mA(3) and mB(3);
    --------------------------
    sA(4) <= mA(2) and mB(3);
    sA(3) <= mA(1) and mB(3);
    sA(2) <= mA(0) and mB(3);
    sA(1) <= '0';
    sA(0) <= '0';
    --------------------------
    sB(4) <= mA(3) and mB(2);
    sB(3) <= mA(2) and mB(2);
    sB(2) <= mA(1) and mB(2);
    sB(1) <= mA(0) and mB(2);
    sB(0) <= '0';
    --------------------------
    S1: FA88 port map(
        E => sA,
        F => sB,
        Ci => '0',
        Q(4) => mC(6),
        Q(3) => sC(4),
        Q(2) => sC(3),
        Q(1) => sC(2),
        Q(0) => sC(1),
        Cout => C(1));
    --------------------------
    sC(0) <= '0';
    --------------------------
    sD(4) <= mA(3) and mB(1);
    sD(3) <= mA(2) and mB(1);
    sD(2) <= mA(1) and mB(1);
    sD(1) <= mA(0) and mB(1);
    sD(0) <= '0';
    --------------------------
    S2: FA88 port map(
        E => sC,
        F => sD,
        Ci => C(1),
        Q(4) => mC(5),
        Q(3) => sE(4),
        Q(2) => sE(3),
        Q(1) => sE(2),
        Q(0) => sE(1),
        Cout => C(0));
    --------------------------
    sE(0) <= '0';
    --------------------------
    sF(4) <= mA(3) and mB(0);
    sF(3) <= mA(2) and mB(0);
    sF(2) <= mA(1) and mB(0);
    sF(1) <= mA(0) and mB(0);
    sF(0) <= '0';
    --------------------------
    S3: FA88 port map(
        E => sE,
        F => sF,
        Ci => C(0),
        Q(4) => mC(4),
        Q(3) => mC(3),
        Q(2) => mC(2),
        Q(1) => mC(1),
        Q(0) => mC(0),
        Cout => mCarry);

end arch;