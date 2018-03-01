/** 
 * SineOutput.ino
 * Generates a 400Hz sine wave using the Tsunami.
 */

#include <SPI.h>
#include <tsunami.h>
#include <ArduinoSort.h>

int measurements[100];
float measurements_sum_low = 0;
float measurements_sum_high = 0;
float average_low = 0;
float average_high = 0;
float results_array[4];
float sorted_results[4];
float differences[3];
float sorted_differences[3];
float minimum_difference;
float consensus_A;
float consensus_B;
float average_consensus;
int index;



void setup() {
  // Initialize the Tsunami
  Serial.begin(115200);
  Tsunami.begin();
}

void loop() { // For whatever the reason, frequency values must be floats. IDK WHY
  // Tsunami.setFrequency(1520696.0);
  // Tsunami.setFrequency(1000000.0);

  //Gather data at 0.8 Mhz
  Tsunami.setFrequency(800000.0);
  for (int i=0; i<100; i++){
    measurements[i] = Tsunami.measurePeakVoltage();
    measurements_sum_low = measurements_sum_low + measurements[i];
    delay(10);
  }

  //Gather data at 1.52 Mhz
  Tsunami.setFrequency(1520696.0);
  for (int j=0; j<100; j++){
    measurements[j] = Tsunami.measurePeakVoltage();
    measurements_sum_high = measurements_sum_high + measurements[j];
    delay(10);
  }

  //Average measurements
  average_low = measurements_sum_low/100;
  average_high = measurements_sum_high/100;

  //Plug measurements into formulas
  float low_left = FORMULA_LOW_LEFT(average_low);
  float low_right = FORMULA_LOW_RIGHT(average_low);
  float high_left = FORMULA_HIGH_LEFT(average_high);
  float high_right = FORMULA_HIGH_RIGHT(average_high);

  results_array[0] = low_left;
  results_array[1] = low_right;
  results_array[2] = high_left;
  results_array[3] = high_right;

  //sort array from smallest to largest
  sortArray(results_array, 4);
  for (int n=0; n<4; n++){
    sorted_results[n] = results_array[n];
  }

  //Find difference between sequential results
  for (int k=0; k<3; k++){
    differences[k] = sorted_results[k+1] - sorted_results[k];
  }

  //Find minimum difference (consensus)
  for (int n=0; n<3; n++){
    sorted_differences[n] = differences[n];
  }
  sortArray(sorted_differences, 3);
  minimum_difference = sorted_differences[0];

  //Map min difference back to index
  for (int m=0; m<3; m++){
    if (differences[m]==minimum_difference){
      int index = m;
    }
  }

  //Use index to retrieve consensus values
  consensus_A = sorted_results[index];
  consensus_B = sorted_results[index+1];

  //Average consensus values
  average_consensus = (consensus_A + consensus_B)/2;

  // Throw error if consensus is poor
  if(minimum_difference > 10){
    Serial.print("ERROR: Dif = ");
    Serial.println(minimum_difference);
  }

  //Print results to serial
  Serial.print(average_consensus);
  Serial.println(" uS/cm");
  Serial.println();
  measurements_sum_low = 0;
  measurements_sum_high = 0;
}


//Calibration curve function for 0.8 Mhz readings (to the left of the global min)
float FORMULA_LOW_LEFT(float reading){
  float result;
  result = -12.34904 + (434873600 - -12.34904)/(1 + pow((reading/2007.436),50.1506));
  return result;
}


//Calibration curve function for 0.8 Mhz readings (to the right of the global min)
float FORMULA_LOW_RIGHT(float reading){
  float result;
  result = 5519769000 + (662.6475 - 5519769000)/(1 + pow((reading/2980.706),209.2922));
  return result;
}


//Calibration curve function for 1.52 Mhz readings (to the left of the global min)
float FORMULA_HIGH_LEFT(float reading){
  float result;
  result = -7.41893 + (1417376000 - -7.41893)/(1 + pow((reading/1268.223),34.79597));
  return result;
}


//Calibration curve function for 1.52 Mhz readings (to the right of the global min)
float FORMULA_HIGH_RIGHT(float reading){
  float result;
  result = 4244895000 + (841.1226 - 4244895000)/(1 + pow((reading/2563.831),61.0802));
  return result;
}
