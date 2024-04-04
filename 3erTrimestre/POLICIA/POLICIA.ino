const int ledPIN1 = 9;
const int ledPIN2 = 10;

void setup() {
  pinMode(ledPIN1 , OUTPUT);  //definir pin como salida
  pinMode(ledPIN2 , OUTPUT);  //definir pin como salida
}

void loop() {
  digitalWrite(ledPIN1 , HIGH);   // poner el Pin en HIGH
  digitalWrite(ledPIN2 , LOW);       
  delay(200);      
  digitalWrite(ledPIN1 , LOW);    // poner el Pin en LOW
  digitalWrite(ledPIN2 , HIGH);
  delay(200); 
}
