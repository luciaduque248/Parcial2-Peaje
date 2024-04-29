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
    signal contadorIntentos : integer range 0 to 3 := 0;

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

            when EsperandoVehiculo =>
                if entradaTag /= "00000" then -- Entrada de tag válida
                    proximoEstado <= LeyendoTag;
                else
                    proximoEstado <= EsperandoVehiculo;
                end if;

            when LeyendoTag =>
                if contadorIntentos < 3 then
                    if entradaTag(4 downto 3) = "01" then -- Categoría I
                        proximoEstado <= TagValida;
                        categoriaVehiculo <= unsigned(entradaTag(2 downto 0));
                    elsif entradaTag(4 downto 3) = "10" then -- Categoría II
                        proximoEstado <= TagValida;
                        categoriaVehiculo <= unsigned(entradaTag(2 downto 0));
                    elsif entradaTag(4 downto 3) = "11" then -- Categoría III
                        proximoEstado <= TagValida;
                        categoriaVehiculo <= unsigned(entradaTag(2 downto 0));
                    else
                        proximoEstado <= TagInvalida;
                        contadorIntentos <= contadorIntentos + 1;
                    end if;
                else
                    proximoEstado <= Alarma;
                end if;

            when TagValida =>
                proximoEstado <= AbriendoBarreraEntrada;

            when TagInvalida =>
                if contadorIntentos < 3 then
                    proximoEstado <= LeyendoTag;
                else
                    proximoEstado <= Alarma;
                end if;

            when AbriendoBarreraEntrada =>
                proximoEstado <= VehiculoDentro;

            when VehiculoDentro =>
                if sensorTrasero = '1' then
                    proximoEstado <= CerrandoBarreraEntrada;
                else
                    proximoEstado <= VehiculoDentro;
                end if;

            when CerrandoBarreraEntrada =>
                proximoEstado <= AbriendoBarreraSalida;

            when AbriendoBarreraSalida =>
                proximoEstado <= CerrandoBarreraSalida;

            when CerrandoBarreraSalida =>
                proximoEstado <= Inactivo;

            when Alarma =>
                -- Transición de salida de Alarma (por ejemplo, después de un tiempo determinado)
                proximoEstado <= Inactivo;

            when others =>
                proximoEstado <= Inactivo;
        end case;
    end process logicaProximoEstado;

    -- Proceso de lógica de salida
	 -------- Inactivo: No se asigna ninguna salida específica.
	 -------- EsperandoVehiculo: Se enciende el semáforo de entrada en verde.
	 -------- LeyendoTag: Se muestra el mensaje "Leyendo Tag" en el display de 7 segmentos.
	 -------- TagValida: Se enciende el LED verde y se muestra la categoría del vehículo en los LEDs correspondientes.
	 -------- TagInvalida: Se enciende el LED rojo y se muestra un mensaje de error en el display de 7 segmentos.
	 -------- AbriendoBarreraEntrada: Se activa la señal para abrir la barrera de entrada.
	 -------- VehiculoDentro: Se enciende el semáforo de salida en rojo y se muestra el tiempo transcurrido del vehículo en el display de 7 segmentos.
	 -------- CerrandoBarreraEntrada: Se cierra la barrera de entrada.
	 -------- AbriendoBarreraSalida: Se activa la señal para abrir la barrera de salida y se enciende el semáforo de salida en verde.
	 -------- CerrandoBarreraSalida: Se cierra la barrera de salida y se muestra la tarifa del peaje en el display de 7 segmentos.
	 -------- Alarma: Se activa la señal de alarma, se enciende el LED rojo y se muestra un mensaje de alarma en el display de 7 segmentos.
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
                -- Apagar todos los LEDs, displays y semáforos
                -- Cerrar ambas barreras

            when EsperandoVehiculo =>
                semaforoVerde <= '1'; -- Encender semáforo de entrada en verde

            when LeyendoTag =>
                displaySieteSegmentos <= "0101010"; -- Mostrar mensaje "Leyendo Tag"

            when TagValida =>
                ledVerde <= '1';
                ledsCategoria <= std_logic_vector(categoriaVehiculo);

            when TagInvalida =>
                ledRojo <= '1';
                displaySieteSegmentos <= "1001000"; -- Mostrar mensaje de error

            when AbriendoBarreraEntrada =>
                barreraEntrada <= '1'; -- Activar señal para abrir barrera de entrada

            when VehiculoDentro =>
                semaforoRojo <= '1'; -- Encender semáforo de salida en rojo
                -- Mostrar tiempo transcurrido del vehículo en el display de 7 segmentos

            when CerrandoBarreraEntrada =>
                barreraEntrada <= '0'; -- Cerrar barrera de entrada

            when AbriendoBarreraSalida =>
                barreraSalida <= '1'; -- Activar señal para abrir barrera de salida
                semaforoVerde <= '1'; -- Encender semáforo de salida en verde

            when CerrandoBarreraSalida =>
                barreraSalida <= '0'; -- Cerrar barrera de salida
                -- Mostrar tarifa del peaje en el display de 7 segmentos
                displaySieteSegmentos <= std_logic_vector(tarifaPeaje(6 downto 0));

            when Alarma =>
                senalAlarma <= '1'; -- Activar señal de alarma
                ledRojo <= '1'; -- Encender LED rojo
                displaySieteSegmentos <= "0101010"; -- Mostrar mensaje de alarma

            when others =>
                null;
        end case;

        -- Asignar el contador de vehículos al display de 7 segmentos (truncado a los 7 bits menos significativos)
        displaySieteSegmentos <= std_logic_vector(contadorVehiculos(6 downto 0));
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