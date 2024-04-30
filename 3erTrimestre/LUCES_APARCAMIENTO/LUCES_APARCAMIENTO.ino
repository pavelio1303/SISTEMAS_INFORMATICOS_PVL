const int EchoPin = 6; // Pin conectado al pin Echo del sensor
const int TriggerPin = 5; // Pin conectado al pin Trigger del sensor

const int ledPINrojo = 9;
const int ledPINverde = 10;

void setup() {
  Serial.begin(9600); // Inicio la comunicación serial
  pinMode(TriggerPin, OUTPUT); // Configuro el pin TriggerPin como salida
  pinMode(EchoPin, INPUT); // Configuro el pin EchoPin como entrada
}


int medirDistancia(int TriggerPin, int EchoPin) {
  long duration, distanceCm;
  
  // Envío un pulso bajo al pin TriggerPin durante 4 microsegundos para generar un pulso limpio
  digitalWrite(TriggerPin, LOW);
  delayMicroseconds(4);
  
  // Envía un pulso alto al pin TriggerPin durante 10 microsegundos para generar el Trigger (disparo) del sensor
  digitalWrite(TriggerPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(TriggerPin, LOW); // Vuelvo a poner el pin TriggerPin en bajo
  
  // Mido el tiempo que tarda en llegar el eco (respuesta) al pin EchoPin en estado alto, en microsegundos
  duration = pulseIn(EchoPin, HIGH); 
  
  // Calculo la distancia en centímetros utilizando la fórmula: distancia = duración del eco * velocidad del sonido / 2
  // La velocidad del sonido se asume como 292 microsegundos por centímetro
  distanceCm = duration * 10 / 292 / 2;
  
  // Devuelve la distancia medida en centímetros
  return distanceCm;
}


void loop() {
  int cm = medirDistancia(TriggerPin, EchoPin);
  
  // Imprime la distancia medida en el monitor serial
  Serial.print("Distancia: ");
  Serial.println(cm);

  digitalWrite(ledPINrojo , LOW);
  digitalWrite(ledPINverde , HIGH);
  
  if (cm <= 20){
  	digitalWrite(ledPINrojo , HIGH);   // poner el Pin en HIGH
  	digitalWrite(ledPINverde , LOW);    // poner el Pin en LOW
  }
  
  // Espera medio segundo antes de tomar otra medida
  delay(500);
}