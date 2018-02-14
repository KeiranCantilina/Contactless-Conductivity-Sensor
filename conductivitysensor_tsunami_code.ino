/** 
 * SineOutput.ino
 * Generates a 400Hz sine wave using the Tsunami.
 */

#include <SPI.h>
#include <tsunami.h>
int measurements[100];
float measurements_sum = 0;
void setup() {
  // Initialize the Tsunami
  Serial.begin(115200);
  Tsunami.begin();
}

void loop() { // For whatever the reason, frequency values must be floats. IDK WHY
	Tsunami.setFrequency(1520696.0);
  for (int i=0; i<100; i++){
    measurements[i] = Tsunami.measurePeakVoltage();
    measurements_sum = measurements_sum + measurements[i];
    delay(10);
  }
  Serial.print(Tsunami.measureFrequency());
  Serial.print(" ");
  Serial.println(measurements_sum/100);
  measurements_sum = 0;
}
