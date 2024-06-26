library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Maq_estados is
    port (
        clk, front_sensor, back_sensor, cobrar, reset: in std_logic;
        cat: in std_logic_vector(2 downto 0);
        id: in std_logic_vector(2 downto 0);
        tala_ini, tala_fin, alar_son, led, sema_ini, sema_fin: out std_logic;
        cont_vehiculo: buffer std_logic_vector(7 downto 0);
        contador: buffer integer range 0 to 2
    );
end Maq_estados;

architecture arch_Maq_estados of Maq_estados is
    type state_type is (inicio, identificador, cobro, salida, incorrecto);
    signal next_state : state_type;
    signal current_state : state_type;
    signal x: std_logic;
    constant frec : integer := 100000000;
    constant retra : integer := 500;
    signal counter : integer range 0 to (frec / 1000 * retra);

begin
    STATE_MEMORY : process (clk, reset)
    begin
        if (reset = '1') then
            current_state <= inicio;
        elsif (clk'event and clk = '1') then
            current_state <= next_state;
        end if;
    end process;

    Next_state_logic: process (current_state, x)
    begin
      next_state <= current_state; 
        case current_state is
            when inicio =>
                if (front_sensor = '1') then
                    x <= '1';
                    next_state <= identificador;
                else
                    next_state <= inicio;
                end if;

            when identificador =>
                if (cat = "00" ) then
                    x <= '0';
                    next_state <= incorrecto;
                else
                    next_state <= cobro;
                end if;

            when incorrecto =>
                if (cat = "00" ) then
                    x <= '0';
                    if contador < 2 then
                        contador <= contador + 1;
                    end if;
                end if;

                if (cat = "00" and contador = 2) then
                    next_state <= salida;
                elsif (cat /= "00") then
                    x <= '1';
                    next_state <= cobro;
                end if;

            when cobro =>
                if (cobrar = '1') then
                    x <= '1';
                    next_state <= salida;
                else
                    next_state <= cobro;
                end if;

            when salida =>
                if (back_sensor = '1') then
                    x <= '1';
                    next_state <= inicio;
                else
                    next_state <= salida;
                end if;

            when others =>
                next_state <= inicio; 

        end case;
    end process;

    OUTPUT_LOGIC: process (front_sensor, back_sensor, cobrar, reset, cat, id)
    begin
        tala_ini <= '0';
        tala_fin <= '0';
        alar_son <= '0';
        led <= '0';
        sema_ini <= '0';
        sema_fin <= '0';
        cont_vehiculo <= (others => '0'); -- Inicializar el contador de vehículos

        case current_state is
            when inicio =>
                tala_ini <= '1';
                sema_ini <= '1';
                cont_vehiculo <= std_logic_vector(unsigned(cont_vehiculo) + 1); -- Incrementar el contador de vehículos

            when identificador =>
                tala_ini <= '0';
                sema_ini <= '0';

            when incorrecto =>
                tala_ini <= '0';
                sema_ini <= '0';
                alar_son <= '1';
                
            when cobro =>
                tala_ini <= '0';
                sema_ini <= '0';

            when salida =>
                sema_fin <= '1';
                tala_fin <= '1';
        end case;
    end process;
end arch_Maq_estados;
