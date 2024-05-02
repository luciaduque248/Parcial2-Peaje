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

  // Configura los pines como entradas
  pinMode(pinTiempo, INPUT);
  pinMode(pinMensaje2, INPUT);
  pinMode(pinMensaje3, INPUT);
  pinMode(pinMensaje4, INPUT);
  pinMode(pinMensaje5, INPUT);
  pinMode(pinMensaje6, INPUT);
  pinMode(pinMensaje7, INPUT);
  pinMode(pinMensaje8, INPUT);
}

void loop() {
    char cadena[8];

    cadena[0] = digitalRead(pinTiempo); 
    cadena[1] = digitalRead(pinMensaje2); 
    cadena[2] = digitalRead(pinMensaje3); 
    cadena[3] = digitalRead(pinMensaje4); 
    cadena[4] = digitalRead(pinMensaje5); 
    cadena[5] = digitalRead(pinMensaje6); 
    cadena[6] = digitalRead(pinMensaje7); 
    cadena[7] = digitalRead(pinMensaje8); 
    
    long valorBinario = strtol(cadena, NULL, 2); 

    // Procesa los datos según el estado del peaje
    switch (valorBinario) {
      case 1: // EsperandoVehiculo
        if (digitalRead(pinTiempo) == HIGH) {
            lcd.clear();
            lcd.print("Tiempo: ");
            Serial.println("Esperando vehiculo");
        }
        break;
      case 2: // LeyendoTag
        if (digitalRead(pinMensaje2) == HIGH) {
            lcd.clear();
            lcd.print("Leyendo Tag");
            Serial.println("Leyendo tag");
        }
        break;
      case 3: // TagValida
        if (digitalRead(pinMensaje3) == HIGH) {
            lcd.clear();
            lcd.print("Categoria: ");
            Serial.println("Categoria valida");
        }
        break;
      case 4: // TagInvalida
        if (digitalRead(pinMensaje4) == HIGH) {
            lcd.clear();
            lcd.print("Tag Invalido");
            Serial.println("Tag invalido");
        }
        break;
      case 5: // AbriendoBarreraEntrada
        if (digitalRead(pinMensaje5) == HIGH) {
            lcd.clear();
            lcd.print("Abriendo");
            Serial.println("Abriendo barrera de entrada");
        }
        break;
      case 6: // VehiculoDentro
        if (digitalRead(pinMensaje6) == HIGH) {
            lcd.clear();
            lcd.print("Vehiculo Dentro");
            Serial.println("Vehiculo dentro");
        }
        break;
      case 7: // CerrandoBarreraEntrada
        if (digitalRead(pinMensaje7) == HIGH) {
            lcd.clear();
            lcd.print("Cerrando");
            Serial.println("Cerrando barrera de entrada");
        }
        break;
      case 8: // AbriendoBarreraSalida
        if (digitalRead(pinMensaje8) == HIGH) {
            lcd.clear();
            lcd.print("Abriendo");
            Serial.println("Abriendo barrera de salida");
        }
        break;
      default:
        break;
    }
}
