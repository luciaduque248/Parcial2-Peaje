library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MaqEstados_testbench is
end MaqEstados_testbench;

architecture MaqEstados_TB_arch of MaqEstados_testbench is

    -- Component Declaration
    component Maq_estados
        port (
            clk, front_sensor, back_sensor, cobrar, reset: in std_logic;
            cat: in std_logic_vector(1 downto 0);
            id: in std_logic_vector(2 downto 0);
            tala_ini, tala_fin, alar_son, led, sema_ini, sema_fin, cont_vehiculo: out std_logic;
            contador: buffer integer range 0 to 2
        );
    end component;

    -- Signals Declaration
    signal clk_TB, front_sensor_TB, back_sensor_TB, cobrar_TB, reset_TB: std_logic;
    signal cat_TB: std_logic_vector(1 downto 0);
    signal id_TB: std_logic_vector(2 downto 0);
    signal tala_ini_TB, tala_fin_TB, alar_son_TB, led_TB, sema_ini_TB, sema_fin_TB, cont_vehiculo_TB: std_logic;
    signal contador_TB: integer := 0;

begin

    -- DUT Instantiation
    DUT1 : Maq_estados
    port map (
        clk => clk_TB,
        front_sensor => front_sensor_TB,
        back_sensor => back_sensor_TB,
        cobrar => cobrar_TB,
        reset => reset_TB,
        cat => cat_TB,
        id => id_TB,
        tala_ini => tala_ini_TB,
        tala_fin => tala_fin_TB,
        alar_son => alar_son_TB,
        led => led_TB,
        sema_ini => sema_ini_TB,
        sema_fin => sema_fin_TB,
        cont_vehiculo => cont_vehiculo_TB,
        contador => contador_TB
    );

    -- Stimulus Generation
    STIMULUS : process
    begin
        -- Reset initial state
        reset_TB <= '1';
        clk_TB <= '0';
        front_sensor_TB <= '0';
        back_sensor_TB <= '0';
        cobrar_TB <= '0';
        cat_TB <= "00";
        id_TB <= "000";

        wait for 10 ns;

        -- Release reset
        reset_TB <= '0';

        -- Espera para estabilizar el sistema después del reset
        wait for 100 ns;

        -- Estímulo para pasar al estado de identificación
        front_sensor_TB <= '1';
        wait for 10 ns;

        -- Estímulo para intentar una identificación válida
        cat_TB <= "10";
        wait for 10 ns;

        -- Estímulo para cobrar
        cobrar_TB <= '1';
        wait for 10 ns;

        -- Estímulo para salir
        back_sensor_TB <= '1';
        wait for 10 ns;

        -- Reinicio del sistema
        reset_TB <= '1';
        wait for 10 ns;
        reset_TB <= '0';

        -- Espera para estabilizar el sistema después del reset
        wait for 100 ns;

        -- Estímulo para pasar al estado de identificación
        front_sensor_TB <= '1';
        wait for 10 ns;

        -- Estímulo para identificación incorrecta
        cat_TB <= "00";
        wait for 10 ns;

        -- Estímulo para identificación incorrecta
        cat_TB <= "00";
        wait for 10 ns;

        -- Estímulo para intento de identificación correcta después de 2 intentos fallidos
        cat_TB <= "10";
        wait for 10 ns;

        -- Estímulo para cobrar sin éxito
        cobrar_TB <= '0';
        wait for 10 ns;

        -- Estímulo para salir sin éxito
        back_sensor_TB <= '0';
        wait for 10 ns;

        -- Estímulo para cobrar con éxito
        cobrar_TB <= '1';
        wait for 10 ns;

        -- Estímulo para salir con éxito
        back_sensor_TB <= '1';
        wait for 10 ns;

        -- Reinicio del sistema
        reset_TB <= '1';
        wait for 10 ns;
        reset_TB <= '0';

        -- Espera para estabilizar el sistema después del reset
        wait for 100 ns;

        -- Estímulo para pasar al estado de identificación
        front_sensor_TB <= '1';
        wait for 10 ns;

        -- Estímulo para identificación incorrecta
        cat_TB <= "00";
        wait for 10 ns;

        -- Estímulo para identificación incorrecta
        cat_TB <= "00";
        wait for 10 ns;

        -- Estímulo para intento de identificación correcta después de 2 intentos fallidos
        cat_TB <= "10";
        wait for 10 ns;

        -- Estímulo para cobrar sin éxito
        cobrar_TB <= '0';
        wait for 10 ns;

        -- Estímulo para salir sin éxito
        back_sensor_TB <= '0';
        wait for 10 ns;

        -- Estímulo para cobrar con éxito
        cobrar_TB <= '1';
        wait for 10 ns;

        -- Estímulo para salir con éxito
        back_sensor_TB <= '1';
        wait for 10 ns;

        wait;

    end process STIMULUS;

    -- Add assertion statements if needed

end MaqEstados_TB_arch;
