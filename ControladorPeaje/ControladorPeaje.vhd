library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ControladorPeaje is
    port (
				 ------ENTRADAS------
					  reloj, reiniciar : in std_logic;
					  sensorDelantero, sensorTrasero : in std_logic;
					  entradaTag : in std_logic_vector(4 downto 0);
					  
				 ------SALIDAS------
					  barreraEntrada, barreraSalida : out std_logic;
					  senalAlarma, ledVerde, ledRojo : out std_logic;
					  ledsCategoria : out std_logic_vector(2 downto 0);
					  displaySieteSegmentos : out std_logic_vector(6 downto 0);
					  semaforoRojo, semaforoVerde : out std_logic
    );
end entity ControladorPeaje;

architecture Behavioral of ControladorPeaje is
    type tipo_estado is (Inactivo, EsperandoVehiculo, LeyendoTag, TagValida, TagInvalida,
                         AbriendoBarreraEntrada, VehiculoDentro, CerrandoBarreraEntrada,
                         AbriendoBarreraSalida, CerrandoBarreraSalida, Alarma);
    signal estadoActual, proximoEstado : tipo_estado;

    -- Señales auxiliares
    signal contadorVehiculos : unsigned(7 downto 0) := (others => '0');
    signal categoriaVehiculo : unsigned(2 downto 0);
    signal tiempoVehiculo : unsigned(15 downto 0) := (others => '0');
    signal tiempoCierreBarrera : unsigned(15 downto 0) := (others => '0');
    signal tarifaPeaje : unsigned(7 downto 0) := (others => '0');

begin
    -- Proceso de memoria de estados
    registroEstado : process(reloj, reiniciar)
    begin
        if reiniciar = '1' then
            estadoActual <= Inactivo;
        elsif rising_edge(reloj) then
            estadoActual <= proximoEstado;
        end if;
    end process registroEstado;

    -- Proceso de lógica de transición de estados
    logicaProximoEstado : process(estadoActual, sensorDelantero, sensorTrasero, entradaTag)
    begin
        case estadoActual is
            when Inactivo =>
                if sensorDelantero = '1' then
                    proximoEstado <= EsperandoVehiculo;
                else
                    proximoEstado <= Inactivo;
                end if;

            -- Agrega la lógica de transición para los demás estados
            -- ...

            when others =>
                proximoEstado <= Inactivo;
        end case;
    end process logicaProximoEstado;

    -- Proceso de lógica de salida
    logicaSalida : process(estadoActual, categoriaVehiculo, contadorVehiculos, tiempoVehiculo, tiempoCierreBarrera, tarifaPeaje)
    begin
        -- Inicializar todas las salidas a '0'
        barreraEntrada <= '0';
        barreraSalida <= '0';
        senalAlarma <= '0';
        ledVerde <= '0';
        ledRojo <= '0';
        ledsCategoria <= (others => '0');
        displaySieteSegmentos <= (others => '1'); -- Apagar display
        semaforoRojo <= '0';
        semaforoVerde <= '0';

        case estadoActual is
            when Inactivo =>
                -- Asignar salidas para estado Inactivo

            when TagValida =>
                ledVerde <= '1';
                ledsCategoria <= std_logic_vector(categoriaVehiculo);

            when TagInvalida =>
                ledRojo <= '1';

            when AbriendoBarreraEntrada =>
                barreraEntrada <= '1';

            when VehiculoDentro =>
                -- Asignar salidas para cuando un vehículo está dentro

            when CerrandoBarreraEntrada =>
                -- Asignar salidas para cerrar la barrera de entrada

            when AbriendoBarreraSalida =>
                barreraSalida <= '1';
                semaforoVerde <= '1';

            when CerrandoBarreraSalida =>
                -- Asignar salidas para cerrar la barrera de salida

            when Alarma =>
                senalAlarma <= '1';
                ledRojo <= '1';

            when others =>
                null;
        end case;

        -- Asignar el contador de vehículos al display de 7 segmentos
        displaySieteSegmentos <= std_logic_vector(contadorVehiculos(6 downto 0));
		  ---------Truncar contadorVehiculos: 
		  ---------Si solo nos interesan los 4 bits más significativos de contadorVehiculos,
		  ---------podemos truncarlos


    end process logicaSalida;

    -- Instanciar componentes existentes aquí
    -- Por ejemplo:
    -- calcularTarifa_inst : entity work.CalcularTarifa
    --     port map (
    --         ...
    --     );

    -- controlVehicular_inst : entity work.ControlVehicular
    --     port map (
    --         ...
    --     );

    -- Agregar nuevos componentes o módulos según sea necesario
end architecture Behavioral;