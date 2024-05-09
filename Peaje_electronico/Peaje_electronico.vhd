library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Peaje_electronico is
    port (
        --entradas
        CLK : in std_logic;                                      -- Señal de reloj
        REINICIO : in std_logic;                                 -- Señal de reinicio
        DETECTOR_VEHICULO : in std_logic;                        -- Señal que indica la detección de un vehículo
        ABRIR_TALANQUERA : in std_logic;                         -- Señal que indica el estado de la barrera manual (1 cerrado, 0 abierto)
        IDVALIDA : in std_logic;                                 -- Señal de identificación válida
		  ID_PEAJE: in std_logic_vector(2 downto 0); 
		  CATEGORIA_VEHICULO : in std_logic_vector(2 downto 0);             -- Categoría del vehículo (3 bits)
		  
		  FRONT_SENSOR_PEAJE : in std_logic;  
		  BACK_SENSOR_PEAJE : in std_logic;  
		  
		  SALIDA_SEMAFORO_VERDE_CONTROL : in std_logic;            -- Señal de control del semáforo verde
		  
		  SALIDA_SEMAFORO_VERDE_PEAJE : buffer std_logic;               -- Señal que indica el estado verde del semáforo de salida en el peaje
		
		--salidas
		salidaSemaforoVerde : out std_logic;                -- Señal que indica el estado verde del semáforo de salida
        salidaSemaforoRojo : out std_logic;   
		  
		sieteSegmentos  : out std_logic_vector(6 downto 0); 
        CONTADOR_VEHICULAR  : out unsigned(7 downto 0);          -- Contador de vehículos
        TALANQUERA_CERRADA_TIEMPO  : out unsigned(15 downto 0);  -- Tiempo en que se cerró la barrera
        SemaforoRojoPeaje : out std_logic;                            -- Semáforo de entrada rojo
        SemaforoVerdePeaje : out std_logic;                           -- Semáforo de entrada verde
        --manualBarrier  : out std_logic;                             -- Barrera de salida
        LED_AUTORIZADO_VERDE : out std_logic;                    -- LED verde para indicar identificación válida
        LED_DENEGADO_ROJO : out std_logic;                       -- LED rojo para indicar identificación inválida
		
        LED_CATEGORIA_0 : out std_logic;                        -- LED para la categoría de vehículo 0
        LED_CATEGORIA_1 : out std_logic;                        -- LED para la categoría de vehículo 1
        LED_CATEGORIA_2 : out std_logic;                        -- LED para la categoría de vehículo 2
		  
		  Servo_Talanquera_inicial : out std_logic;   
		  Servo_Talanquera_final : out std_logic;   
		  
		  datos_Salida_arduino: out std_logic_vector(7 downto 0);   
        
        clk_out_divisor : out std_logic
    );
end entity Peaje_electronico;

architecture Peaje_electronico_arch of Peaje_electronico is


    -- Declaración de señales internas
    signal vehiclePassed : std_logic;
	 
    signal manualBarrier : std_logic;   -- Señal para indicar el estado de la barrera manual
    signal semaphoreGreen : std_logic;  -- Señal para indicar el estado verde del semáforo
    signal PasoVehicular : std_logic;   -- Señal para indicar el paso de un vehículo
	 
    -- Señales intermedias para SemaforoRojo
    signal SemaforoRojo_int_Talanquera : std_logic;
    signal SemaforoRojo_int_Salida : std_logic;
	 
    -- Cambio de nombre de la señal local
    signal ABRIR_TALANQUERA_INTERNAL : std_logic;
	 
    -- Contador de vehículos interno
    signal contador_vehiculos_int : unsigned(7 downto 0);
	 
    -- Señal para los segmentos del display
    signal seg_display : std_logic_vector(6 downto 0);
    
	 -- Señal para el tiempo de paso del vehículo
    signal tiempo_paso_int : unsigned(15 downto 0);
    
	 -- Señal para la tarifa calculada
    signal tarifa_calculada : unsigned(7 downto 0);
	 
	 signal ConexionSemaforoSalida: std_logic;
	 signal ConexionSemaforoEntrada: std_logic;
	 
	 signal tala_ini_maq : std_logic;  -- Señal de salida de la máquina de estados para la talanquera inicial
    signal tala_fin_maq : std_logic;  -- Señal de salida de la máquina de estados para la talanquera final
	 
	 
    
	 -- Señal de salida del divisor de frecuencia
    --signal clk_out_divisor : std_logic;
	 

    -- Componentes
    component Front_sensor
        port (
            --Entrada
            CLK : in std_logic;              -- Señal de reloj
            --Salida
            DETECTOR_VEHICULO : out std_logic --Detección de vehículo
        );
    end component;

    component Id_vehiculo
        port (
            --entradas
            CLK : in std_logic;                     -- Señal de reloj
            REINICIO : in std_logic;                -- Señal de reinicio
            ID : in std_logic_vector(2 downto 0);   -- Identificación vehícular categoría y ID
            IDVALIDA : in std_logic;                 -- Señal de identificación válida
            --salidas
            ABRIR_TALANQUERA : out std_logic;       -- Señal para abrir la barrera
            LED_AUTORIZADO_VERDE : out std_logic;               -- LED verde para indicar identificación válida
            LED_DENEGADO_ROJO : out std_logic                  -- LED rojo para indicar identificación inválida
        );
    end component;

    component SemaforoTalanquera
        port (
            -- entradas
            Sistema_habilitador : in std_logic;           -- Habilitador del sistema
            EstadoTalanquera : in std_logic;    -- Estado de la barrera manual (1 cerrado, 0 abierto)
            -- salidas
            SemaforoRojoTalanquera : out std_logic;     
            SemaforoVerdeTalanquera : out std_logic;   
            talanquera : out std_logic       
        );
    end component;

    component Semaforo_salida
        port (
            --entradas
            Sistema_habilitador  : in std_logic;            -- Habilitador del sistema
            PasoVehicular : in std_logic;     -- Señal que indica que un vehículo ha pasado
            --salidas
            SemaforoVerde : out std_logic;  -- Semáforo de salida verde
            SemaforoRojo : out std_logic      -- Semáforo de salida rojo
        );
    end component;

    component ControlVehicular
        port (
		  --entradas
        CLK: in std_logic;                   -- Señal de reloj
        REINICIO: in std_logic;                 -- Señal de reinicio
        DETECTOR_VEHICULO: in std_logic;       -- Señal que indica la detección de un vehículo
        ABRIR_TALANQUERA : in std_logic;           -- Señal que indica si la barrera está abierta
        SALIDA_SEMAFORO_VERDE : in std_logic;    -- Señal que indica el estado verde del semáforo de salida
        
		  --salidas
		  CONTADOR_VEHICULAR : out unsigned(7 downto 0);  -- Contador de vehículos
        TIEMPODEPASOVEHICULAR : out unsigned(15 downto 0); -- Tiempo de paso del vehículo
        TALANQUERA_CERRADA_TIEMPO : out unsigned(15 downto 0) -- Tiempo en que se cerró la barrera
    );
    end component;

    component Display_sevensegmentos
        port (
            --entrada
            num : in unsigned(3 downto 0);      -- Entrada numérica (0-9)
            --salida
            seg : out std_logic_vector(6 downto 0)  -- Salida de los segmentos (a-g)
        );
    end component;

    component Calcular_Tarifa
        port (
				CLK : in std_logic;                           -- Señal de reloj
			  CATEGORIA_VEHICULO : in std_logic_vector(2 downto 0); -- Categoría del vehículo (3 bits)
			  TIEMPO_PASO : in unsigned(15 downto 0);       -- Tiempo de paso del vehículo (16 bits)
			  TARIFA : out std_logic   			
			);
    end component;

    -- Componente Divisor de Frecuencia
    component Divisor_Frecuencia
        generic (
            DIVIDER_VALUE : integer := 25000000  -- Valor para dividir la frecuencia
        );
        port (
            CLK_IN : in std_logic;         -- Señal de entrada de reloj
            CLK_OUT : buffer std_logic        -- Señal de salida de reloj dividida
        );
    end component;
	 
	 
	 -------------------------------------- Maquina De Estados ------------------------------------------------------------------------
	 ----------------------------------------------------------------------------------------------------------------------------------
	 
	 -- Componente de la Maquina De Estados
	 component Maq_estados is
        port (
			  clk, front_sensor, back_sensor, cobrar, reset: in std_logic;
			  cat: in std_logic_vector(2 downto 0);
			  id: in std_logic_vector(2 downto 0);
			  tala_ini, tala_fin, alar_son, led, sema_ini, sema_fin: out std_logic;
			  cont_vehiculo: buffer std_logic_vector(7 downto 0);
			  contador: buffer integer range 0 to 2
		);
    end component;
	 
	 -- Señales para conectar Maq_estados
    signal front_sensor_maq : std_logic;
    signal back_sensor_maq : std_logic;
    signal cobrar_maq : std_logic;
    signal reset_maq : std_logic;
    signal cat_maq : std_logic_vector(1 downto 0);
    signal id_maq : std_logic_vector(2 downto 0);
    signal alar_son_maq, led_maq, sema_ini_maq, sema_fin_maq: std_logic;
	 signal cont_vehiculo_maq :  std_logic_vector(7 downto 0);
    signal contador_maq : integer range 0 to 2;
	 
	 --------------------------------------------------------------------------------------------------------------------------------------
	 --------------------------------------------------------------------------------------------------------------------------------------

	 -- Componente PWM
    component PWM is
        port (
            CLK : in std_logic;
            talanquera : in std_logic;
            actuadorTalanquera : out std_logic
        );
    end component;
	 
	 component LCDArduino is
        port ( 
            clk : in std_logic;
            reset : in std_logic;
            estado : in std_logic_vector(3 downto 0);                
            categoria_vehiculo : in std_logic_vector(2 downto 0);    
            tiempo_vehiculo : in std_logic_vector(15 downto 0);      
            tarifa_peaje : in std_logic_vector(7 downto 0);          
            datos_lcd : out std_logic_vector(7 downto 0);            
            habilitador_lcd : in std_logic                          
        );
    end component;
	 
begin

	 -- Asignaciones de LEDs para las categorías de vehículos
    LED_CATEGORIA_0 <= CATEGORIA_VEHICULO(0);
	 LED_CATEGORIA_1 <= CATEGORIA_VEHICULO(1);
	 LED_CATEGORIA_2 <= CATEGORIA_VEHICULO(2);


	-- Conectar SALIDA_SEMAFORO_VERDE de ControlVehicular a SALIDA_SEMAFORO_VERDE_PEAJE
    SALIDA_SEMAFORO_VERDE_PEAJE <= SALIDA_SEMAFORO_VERDE_CONTROL;
	 
	 -- Asignar la salida del contador interno al puerto CONTADOR_VEHICULAR
    CONTADOR_VEHICULAR <= contador_vehiculos_int;
	 
    -- Instanciación de los componentes
    Front_sensor_inst : Front_sensor port map (
        CLK => FRONT_SENSOR_PEAJE,
        DETECTOR_VEHICULO => PasoVehicular
    );
	 
	 Back_sensor_inst : Front_sensor port map (
        CLK => BACK_SENSOR_PEAJE,
        DETECTOR_VEHICULO => back_sensor_maq
    );

    Id_vehiculo_inst : Id_vehiculo port map (
        CLK => CLK,
        REINICIO => REINICIO,
        ID => ID_PEAJE,  -- Asegúrate de conectar correctamente la señal de ID
        IDVALIDA => IDVALIDA,
        ABRIR_TALANQUERA => ABRIR_TALANQUERA_INTERNAL,
        LED_AUTORIZADO_VERDE => LED_AUTORIZADO_VERDE,
        LED_DENEGADO_ROJO => LED_DENEGADO_ROJO
    );

    SemaforoTalanquera_inst : SemaforoTalanquera port map (
        Sistema_habilitador => ConexionSemaforoEntrada,
        EstadoTalanquera => ABRIR_TALANQUERA_INTERNAL,
        SemaforoRojoTalanquera => SemaforoRojoPeaje,
        SemaforoVerdeTalanquera => SemaforoVerdePeaje,
        talanquera => manualBarrier
    );

    Semaforo_salida_inst : Semaforo_salida port map (
        Sistema_habilitador => CLK,
        PasoVehicular => ConexionSemaforoSalida,
        SemaforoVerde => salidaSemaforoVerde,  -- Corregido
        SemaforoRojo => salidaSemaforoRojo
    );

    ControlVehicular_inst : ControlVehicular port map (
        CLK => CLK,
        REINICIO => REINICIO,
        DETECTOR_VEHICULO => DETECTOR_VEHICULO,
        ABRIR_TALANQUERA => ABRIR_TALANQUERA,  -- Conectado el pin ABRIR_TALANQUERA
        SALIDA_SEMAFORO_VERDE => SALIDA_SEMAFORO_VERDE_PEAJE,
        CONTADOR_VEHICULAR => contador_vehiculos_int,
        TIEMPODEPASOVEHICULAR => tiempo_paso_int,
        TALANQUERA_CERRADA_TIEMPO => TALANQUERA_CERRADA_TIEMPO
    );

    Display_sevensegmentos_inst : Display_sevensegmentos port map (
        num => contador_vehiculos_int(3 downto 0),
        seg => sieteSegmentos
    );

    Calcular_Tarifa_inst : Calcular_Tarifa port map (
        CLK => CLK,
        CATEGORIA_VEHICULO => CATEGORIA_VEHICULO,
        TIEMPO_PASO => tiempo_paso_int,
        TARIFA => cobrar_maq  
    );

    -- Instanciar Divisor de Frecuencia
    Divisor_Frecuencia_inst : Divisor_Frecuencia
        generic map (
            DIVIDER_VALUE => 10000  -- El valor de división deseado
        )
        port map (
            CLK_IN => CLK,                     -- Conectar la señal de reloj de entrada
            CLK_OUT => clk_out_divisor  -- Conectar la señal de reloj dividida
        );
		  
		  
	-- Instanciar PWM
    PWM_Entrada_inst : PWM port map (
        CLK => CLK,
        talanquera => tala_ini_maq,
        actuadorTalanquera => Servo_Talanquera_inicial
    );
	 
	 -- Instanciar PWM
    PWM_Final_inst : PWM port map (
        CLK => CLK,
        talanquera => tala_fin_maq,
        actuadorTalanquera => Servo_Talanquera_final
    );
	
	-------------------------------------- Maquina De Estados ------------------------------------------------------------------------
	----------------------------------------------------------------------------------------------------------------------------------
	 
	 -- Instanciación de Maq_estados
    Maq_estados_inst : Maq_estados port map (
        clk => CLK,
        front_sensor => PasoVehicular,
        back_sensor => back_sensor_maq,
        cobrar => cobrar_maq,
        reset => REINICIO,
        cat => CATEGORIA_VEHICULO,
        id => ID_PEAJE,
        tala_ini => tala_ini_maq,
        tala_fin => tala_fin_maq,
        alar_son => alar_son_maq,
        led => led_maq,
        sema_ini => ConexionSemaforoEntrada,
        sema_fin => ConexionSemaforoSalida,
        cont_vehiculo => cont_vehiculo_maq,
        contador => contador_maq
    );
	 
	 -- Instanciar LCDArduino
    LCDArduino_inst : LCDArduino port map (
        clk => CLK,
        reset => REINICIO,
        estado => "0000",                
        categoria_vehiculo => CATEGORIA_VEHICULO,    
        tiempo_vehiculo => std_logic_vector(tiempo_paso_int),  -- Convertir a std_logic_vector
		 tarifa_peaje => std_logic_vector(tarifa_calculada),    -- Convertir a std_logic_vector       
        datos_lcd => datos_Salida_arduino,            
        habilitador_lcd => SALIDA_SEMAFORO_VERDE_CONTROL
    );


end architecture Peaje_electronico_arch;