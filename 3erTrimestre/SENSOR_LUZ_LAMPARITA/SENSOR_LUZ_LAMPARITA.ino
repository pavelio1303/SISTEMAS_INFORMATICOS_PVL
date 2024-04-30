const int LDRPin = A0; //Pin analógico del LDR

const int PIN_LED_VERDE = 9;

int ilum;

void setup() 
{
   	Serial.begin(9600);
}

int lumniosidad(int Voltaje){
	const int A = 1000;     //Resistencia en oscuridad en KΩ
	const int B = 15;       //Resistencia a la luz (10 Lux) en KΩ
	const int Rc = 10;      //Resistencia calibracion en KΩ

  	return ((long)Voltaje*A*10)/((long)B*Rc*(1024-Voltaje));
}

void loop()
{
  	ilum = lumniosidad(analogRead(LDRPin));         

  	Serial.println(ilum);  
  	
  	if (ilum < 10) {
     	digitalWrite(PIN_LED_VERDE, HIGH);
    }else{
    	digitalWrite(PIN_LED_VERDE, LOW);
    }
  	delay(100);
}