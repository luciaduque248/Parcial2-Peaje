library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PWM is
    port (
        CLK : in std_logic;
        talanquera : in std_logic;
        actuadorTalanquera : out std_logic
    );
end entity PWM;

architecture Behavioral of PWM is
    constant PWM_PERIOD : integer := 25000000;  -- Periodo del PWM (en ciclos de reloj)
    signal counter : unsigned(31 downto 0) := (others => '0');
begin
    PWM_process : process(CLK)
    begin
        if rising_edge(CLK) then
            if talanquera = '1' then
                counter <= (others => '0');
                actuadorTalanquera <= '1';  -- Si la señal de la talanquera está activada, se mantiene alta
            else
                counter <= counter + 1;
                if counter < (PWM_PERIOD / 2) then
                    actuadorTalanquera <= '0';  -- Duty cycle del 50%
                else
                    actuadorTalanquera <= '1';
                end if;
            end if;
        end if;
    end process PWM_process;
end architecture Behavioral;
