library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity Calcular_Tarifa is
    port (
        CLK : in std_logic;                           -- Señal de reloj
        CATEGORIA_VEHICULO : in std_logic_vector(2 downto 0); -- Categoría del vehículo (3 bits)
        TIEMPO_PASO : in unsigned(15 downto 0);       -- Tiempo de paso del vehículo (16 bits)
        TARIFA : out std_logic                        -- Tarifa calculada
    );
end entity Calcular_Tarifa;


architecture Calcular_Tarifa_arch of Calcular_Tarifa is
begin
    process (CLK)
    begin
        if rising_edge(CLK) then
            -- Calculamos la tarifa según la categoría del vehículo y el tiempo de paso
            case CATEGORIA_VEHICULO is
                when "000" => -- Categoría I
                    if TIEMPO_PASO <= 5000 then -- Si el tiempo de paso es menor o igual a 5 segundos
                        TARIFA <= '1'; -- Tarifa de categoría I para menos de 5 segundos
                    else
                        TARIFA <= '0'; -- Tarifa de categoría I para más de 5 segundos
                    end if;
                when "001" => -- Categoría II
                    if TIEMPO_PASO <= 5000 then
                        TARIFA <= '1'; -- Tarifa de categoría II para menos de 5 segundos
                    else
                        TARIFA <= '0'; -- Tarifa de categoría II para más de 5 segundos
                    end if;
                when "010" => -- Categoría III
                    if TIEMPO_PASO <= 5000 then
                        TARIFA <= '1'; -- Tarifa de categoría III para menos de 5 segundos
                    else
                        TARIFA <= '0'; -- Tarifa de categoría III para más de 5 segundos
                    end if;
                when others => -- Otras categorías
                    TARIFA <= '0'; -- No definido
            end case;
        end if;
    end process;
end architecture Calcular_Tarifa_arch;
