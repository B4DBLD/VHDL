library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;


entity multilib00TB is
end multilib00TB;

architecture testbench of multilib00TB is
    component multilib00
        port (
            a: in std_logic_vector(0 to 3);
            b: in std_logic_vector(0 to 3);
            c: out std_logic_vector(0 to 7)
        );
    end component;
    signal sA, sB: std_logic_vector(0 to 3);
    signal sC: std_logic_vector(0 to 7);
begin
    uut: multilib00 port map (
            a => sA,
            b => sB,
            c => sC
        );

    process
    begin
        sA <= "0000";
        sB <= "0000";
        wait for 10 ns;
        sa <= "0001";
        sb <= "0001";
        wait for 10 ns;
        sa <= "0010";
        sb <= "0010";
        wait for 10 ns;
        sa <= "0011";
        sb <= "0011";
        wait for 10 ns;
        sa <= "0100";
        sb <= "0100";
        wait for 10 ns;
        sa <= "0101";
        sb <= "0101";
        wait for 10 ns;
        sa <= "0110";
        sb <= "0110";
        wait for 10 ns;
        sa <= "0111";
        sb <= "0111";
        wait for 10 ns;
        sa <= "1000";
        sb <= "1000";
        wait for 10 ns;
        sa <= "1001";
        sb <= "1001";
        wait for 10 ns;
        sa <= "1010";
        sb <= "1010";
        wait for 10 ns;
        sa <= "1011";
        sb <= "1011";
        wait for 10 ns;
        sa <= "1100";
        sb <= "1100";
        wait for 10 ns;
        sa <= "1101";
        sb <= "1101";
        wait for 10 ns;
        sa <= "1110";
        sb <= "1110";
        wait for 10 ns;
        sa <= "1111";
        sb <= "1111";
        wait for 10 ns;
        sa <= "0000";
        sb <= "0000";
        wait;
    end process;
end testbench;
