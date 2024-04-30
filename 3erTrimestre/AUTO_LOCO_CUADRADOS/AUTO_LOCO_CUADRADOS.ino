const int pinIN1I = 7;
const int pinIN2I = 6;

const int pinIN1D = 8;
const int pinIN2D = 9;

void setup() {
  pinMode(pinIN1I, OUTPUT);
  pinMode(pinIN2I, OUTPUT);

  pinMode(pinIN1D, OUTPUT);
  pinMode(pinIN2D, OUTPUT);
}

void loop() {
  digitalWrite(pinIN1D, HIGH);
  digitalWrite(pinIN1I, HIGH);
  digitalWrite(pinIN2D, LOW);
  digitalWrite(pinIN2I, LOW);
  delay(1500);

  digitalWrite(pinIN1D, LOW);
  digitalWrite(pinIN1I, LOW);
  digitalWrite(pinIN2D, LOW);
  digitalWrite(pinIN2I, LOW);
  delay(500);

  digitalWrite(pinIN1D, HIGH);
  digitalWrite(pinIN1I, LOW);
  digitalWrite(pinIN2D, LOW);
  digitalWrite(pinIN2I, HIGH);
  delay(500);

  digitalWrite(pinIN1D, LOW);
  digitalWrite(pinIN1I, LOW);
  digitalWrite(pinIN2D, LOW);
  digitalWrite(pinIN2I, LOW);
  delay(500);
}
