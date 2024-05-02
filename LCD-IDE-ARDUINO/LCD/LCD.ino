#include <LiquidCrystal.h>

LiquidCrystal lcd(12, 11, 5, 4, 3, 2); // Configura los pines del LCD
const char pinTiempo = 48;    // Pin digital para el estado 1 (PC3)
const char pinMensaje2 = 46;   // Pin digital para el estado 2 (PC1)
const char pinMensaje3 = 44;   // Pin digital para el estado 3 (PD7)
const char pinMensaje4 = 42;   // Pin digital para el estado 4 (PG1)
const char pinMensaje5 = 40;   // Pin digital para el estado 5 (PL7)
const char pinMensaje6 = 38;   // Pin digital para el estado 6 (PL5)
const char pinMensaje7 = 36;   // Pin digital para el estado 7 (PL3)
const char pinMensaje8 = 34;   // Pin digital para el estado 8 (PL1)

void setup() {
  Serial.begin(9600); // Inicia la comunicación serial a 9600 baudios
  lcd.begin(16, 2);   // Inicia el LCD con 16 columnas y 2 filas

  // Configura los pines como salidas
  pinMode(pinTiempo, OUTPUT);
  pinMode(pinMensaje2, OUTPUT);
  pinMode(pinMensaje3, OUTPUT);
  pinMode(pinMensaje4, OUTPUT);
  pinMode(pinMensaje5, OUTPUT);
  pinMode(pinMensaje6, OUTPUT);
  pinMode(pinMensaje7, OUTPUT);
  pinMode(pinMensaje8, OUTPUT);
}

void loop() {
  if (Serial.available() >= 2) { // Verifica si hay al menos 2 bytes disponibles
    byte estado = Serial.read(); // Lee el estado del peaje
    byte dato = Serial.read(); // Lee el dato enviado desde la FPGA
    // Procesa los datos según el estado del peaje
    switch (estado) {
      case 1: // EsperandoVehiculo
        digitalWrite(pinTiempo, HIGH); // Activa el pin correspondiente
        lcd.clear();
        lcd.print("Tiempo: ");
        lcd.print(dato);
        Serial.println("Esperando vehiculo");
        break;
      case 2: // LeyendoTag
        digitalWrite(pinMensaje2, HIGH); // Activa el pin correspondiente
        lcd.clear();
        lcd.print("Leyendo Tag");
        Serial.println("Leyendo tag");
        break;
      case 3: // TagValida
        digitalWrite(pinMensaje3, HIGH); // Activa el pin correspondiente
        lcd.clear();
        lcd.print("Categoria: ");
        lcd.print(dato);
        Serial.println("Categoria valida");
        break;
      case 4: // TagInvalida
        digitalWrite(pinMensaje4, HIGH); // Activa el pin correspondiente
        lcd.clear();
        lcd.print("Tag Invalido");
        Serial.println("Tag invalido");
        break;
      case 5: // AbriendoBarreraEntrada
        digitalWrite(pinMensaje5, HIGH); // Activa el pin correspondiente
        lcd.clear();
        lcd.print("Abriendo");
        Serial.println("Abriendo barrera de entrada");
        break;
      case 6: // VehiculoDentro
        digitalWrite(pinMensaje6, HIGH); // Activa el pin correspondiente
        lcd.clear();
        lcd.print("Vehiculo Dentro");
        Serial.println("Vehiculo dentro");
        break;
      case 7: // CerrandoBarreraEntrada
        digitalWrite(pinMensaje7, HIGH); // Activa el pin correspondiente
        lcd.clear();
        lcd.print("Cerrando");
        Serial.println("Cerrando barrera de entrada");
        break;
      case 8: // AbriendoBarreraSalida
        digitalWrite(pinMensaje8, HIGH); // Activa el pin correspondiente
        lcd.clear();
        lcd.print("Abriendo");
        Serial.println("Abriendo barrera de salida");
        break;
      default:
        break;
    }
  }
}
