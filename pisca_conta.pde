/*
  Pisca Conta
  Turns on an LED received from serial input.
  
  This example code is in the public domain.
*/

void setup() {
  // initialize serial communication
  Serial.begin(9600);
  // initialize the digital pin as an output.
  // Pin 13 has an LED connected on most Arduino boards:
  pinMode(13, OUTPUT);     
}

void loop() {
  if(Serial.available()) {
    // read from serial input
    char c = Serial.read();
    
    // casting ASCII to INT
    int num = atoi(&c);
       
    int i = 0;
    while (i < num) {
      Serial.println(i);
      // turn led on 
      digitalWrite(13, HIGH);
      // wait 1s
      delay(1000);
      // turn led on
      digitalWrite(13, LOW);
      // wait 1s
      delay(1000);
      i++;
    }
  }
}
