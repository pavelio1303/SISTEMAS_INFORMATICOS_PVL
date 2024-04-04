const int pinBuzzer = 9;
const int pinLuces1 = 12;
const int pinLuces2 = 13;

void setup() {
  // put your setup code here, to run once:

}

void loop() {
  //generar tono de 440Hz durante 1000 ms
  //generar tono de 440Hz durante 1000 ms
  tone(pinBuzzer, 500);
  digitalWrite(pinLuces1 , HIGH);   // poner el Pin en HIGH
  digitalWrite(pinLuces2 , LOW); 
  delay(300);

  //generar tono de 523Hz durante 500ms, y detenerlo durante 500ms.
  tone(pinBuzzer, 600);
  digitalWrite(pinLuces1 , LOW);    // poner el Pin en LOW
  digitalWrite(pinLuces2 , HIGH);
  delay(300);
}
