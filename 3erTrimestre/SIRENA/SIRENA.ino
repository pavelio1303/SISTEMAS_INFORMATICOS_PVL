const int pinBuzzer = 9;

void setup() {
  // put your setup code here, to run once:

}

void loop() {
  //generar tono de 440Hz durante 1000 ms
  //generar tono de 440Hz durante 1000 ms
  tone(pinBuzzer, 500);
  delay(300);

  //detener tono durante 500ms  
  noTone(pinBuzzer);
  delay(10);

  //generar tono de 523Hz durante 500ms, y detenerlo durante 500ms.
  tone(pinBuzzer, 600);
  delay(300);
  noTone(pinBuzzer);
  delay(10);
}
