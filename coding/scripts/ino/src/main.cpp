#include <Arduino.h>
/* exemplo simples
int R = 11;
int G = 10;
int B = 9;

void led_normal();
void led_RGB();
void RGB(int, int, int, int);

void setup() {
  pinMode(0, OUTPUT);
  pinMode(1, OUTPUT);
  pinMode(2, OUTPUT);
  pinMode(R, OUTPUT);
  pinMode(G, OUTPUT);
  pinMode(B, OUTPUT);
}

void loop() {
  led_RGB();
  led_normal();
}

void led_RGB() {
  RGB(255, 0, 0, 500);
  RGB(0, 255, 0, 500);
  RGB(0, 0, 255, 500);
  RGB(255, 255, 0, 500);
  RGB(0, 255, 255, 500);
  RGB(255, 0, 255, 500);
  RGB(0, 0, 0, 500);
}

void RGB(int r, int g, int b, int t) {
  analogWrite(R, r);
  analogWrite(G, g);
  analogWrite(B, b);
  delay(t);
}

void led_normal() {
  digitalWrite(0, HIGH);
  digitalWrite(1, LOW);
  digitalWrite(2, LOW);
  delay(1000);
  digitalWrite(0, LOW);
  digitalWrite(1, HIGH);
  digitalWrite(2, LOW);
  delay(1000);
  digitalWrite(0, LOW);
  digitalWrite(1, LOW);
  digitalWrite(2, HIGH);
  delay(1000);
  digitalWrite(0, LOW);
  digitalWrite(1, LOW);
  digitalWrite(2, LOW);
  delay(1000);
}*/

/* traffic light
int l1_g = 0;
int l1_y = 1;
int l1_r = 2;
int l2_g = 4;
int l2_y = 7;
int l2_r = 8;
int B = 9;
int G = 10;
int R = 11;

void traffic_light();

void setup() {
  pinMode(l1_g, OUTPUT);
  pinMode(l1_y, OUTPUT);
  pinMode(l1_r, OUTPUT);
  pinMode(l2_g, OUTPUT);
  pinMode(l2_y, OUTPUT);
  pinMode(l2_r, OUTPUT);
  pinMode(B, OUTPUT);
  pinMode(G, OUTPUT);
  pinMode(R, OUTPUT);
}

void loop() {
  traffic_light();
}

void traffic_light() {
  for(int t = 2; t > 0; t--) {
    digitalWrite(R, 255);
    digitalWrite(G, 0);
    digitalWrite(B, 0);
    delay(1000);

    digitalWrite(l1_g, HIGH);
    digitalWrite(l2_g, LOW);
    digitalWrite(l1_y, LOW);
    digitalWrite(l2_y, LOW);
    digitalWrite(l1_r, LOW);
    digitalWrite(l2_r, HIGH);
    delay(3500);
    
    digitalWrite(l1_g, LOW);
    digitalWrite(l1_y, HIGH);
    digitalWrite(l1_r, LOW);
    delay(2000);

    digitalWrite(l1_g, LOW);
    digitalWrite(l1_y, LOW);
    digitalWrite(l1_r, HIGH);
    digitalWrite(l2_g, LOW);
    digitalWrite(l2_y, LOW);
    digitalWrite(l2_r, HIGH);
    delay(1000);

    digitalWrite(l1_g, LOW);
    digitalWrite(l2_g, HIGH);
    digitalWrite(l1_y, LOW);
    digitalWrite(l2_y, LOW);
    digitalWrite(l1_r, HIGH);
    digitalWrite(l2_r, LOW);
    delay(3500);

    digitalWrite(l2_g, LOW);
    digitalWrite(l2_y, HIGH);
    digitalWrite(l2_r, LOW);
    delay(2000);

    digitalWrite(l1_g, LOW);
    digitalWrite(l1_y, LOW);
    digitalWrite(l1_r, HIGH);
    digitalWrite(l2_g, LOW);
    digitalWrite(l2_y, LOW);
    digitalWrite(l2_r, HIGH);
    delay(1000);
  }
  
  digitalWrite(R, 0);
  digitalWrite(G, 255);
  digitalWrite(B, 0);
  delay(5000);

  digitalWrite(R, 0);
  digitalWrite(G, 0);
  digitalWrite(B, 0);
  delay(500);
  digitalWrite(R, 255);
  digitalWrite(G, 255);
  digitalWrite(B, 0);
  delay(1000);
  digitalWrite(R, 0);
  digitalWrite(G, 0);
  digitalWrite(B, 0);
  delay(500);
  digitalWrite(R, 255);
  digitalWrite(G, 255);
  digitalWrite(B, 0);
  delay(1000);
  digitalWrite(R, 0);
  digitalWrite(G, 0);
  digitalWrite(B, 0);
  delay(500);
  digitalWrite(R, 255);
  digitalWrite(G, 255);
  digitalWrite(B, 0);
  delay(1000);
}*/

/* button
int red = 9;
int green = 10;
int blue = 11;
int button = 3;
int pressed = 0;
int handle = 0;

void setup() {
  pinMode(red, OUTPUT);
  pinMode(green, OUTPUT);
  pinMode(blue, OUTPUT);
  pinMode(button, INPUT);
}

void loop() {
  pressed = digitalRead(button);
  if(pressed == HIGH && handle == 0) {
    delay(250);
    handle = 1;
    analogWrite(red, 255);
    analogWrite(green, 0);
    analogWrite(blue, 0);
  } else if (pressed == HIGH && handle == 1) {
    delay(250);
    handle = 2;
    analogWrite(red, 0);
    analogWrite(green, 255);
    analogWrite(blue, 0);
  } else if (pressed == HIGH && handle == 2) {
    delay(250);
    handle = 3;
    analogWrite(red, 0);
    analogWrite(green, 0);
    analogWrite(blue, 255);
  } else if (pressed == HIGH && handle == 3) {
    delay(250);
    handle = 0;
    analogWrite(red, 0);
    analogWrite(green, 0);
    analogWrite(blue, 0);
  }
}*/

/* alarm
int alarm = 0;
int led = 1;
int buzzer = 5;
int B = 9;
int G = 10;
int R = 11;

void setColor(int, int, int, int);
void Alarm();

void setup() {
  pinMode(alarm, INPUT_PULLUP);
  pinMode(led, INPUT_PULLUP);
  pinMode(buzzer, OUTPUT);
  pinMode(R, OUTPUT);
  pinMode(G, OUTPUT);
  pinMode(B, OUTPUT);
}

void loop() {
  int alarmStatus = digitalRead(alarm);
  int ledStatus = digitalRead(led);

  if(alarmStatus != 0 && ledStatus == 0) {
    Alarm();
    setColor(0, 0, 0, 0);
  } else if (alarmStatus == 0 && ledStatus != 0) {
    setColor(255, 0, 0, 350);
    setColor(0, 0, 255, 350);
  } else if(alarmStatus == 0 && ledStatus == 0) {
    analogWrite(R, 255);
    analogWrite(G, 0);
    analogWrite(B, 0);
    tone(buzzer, 3000, 350);
    delay(350);
    analogWrite(R, 0);
    analogWrite(G, 0);
    analogWrite(B, 255);
    tone(buzzer, 1500, 350);
    delay(300);
    analogWrite(R, 0);
    analogWrite(G, 0);
    analogWrite(B, 0);
    delay(100);
  }
}

void setColor(int r, int g, int b, int t) {
  analogWrite(R, r);
  analogWrite(G, g);
  analogWrite(B, b);
  delay(t);
  // default
  analogWrite(R, 0);
  analogWrite(G, 0);
  analogWrite(B, 0);
  delay(100);
}

void Alarm() {
  tone(buzzer, 3000, 350);
  delay(350);
  tone(buzzer, 1500, 350);
  delay(300);
}*/

/* potentiometer
// values set
int setTime = 0;
int getLevel;
int lastLevel;
int pinA0 = 0;
int status = 0;
int handle = 0;
byte data = 0;
//pins
int SHCP_clockpin = 6;
int STCP_latchpin = 8;
int DS_datapin = 12; 
int led[] = {11, 10, 9};
int button = 13;

void light(int);
void shiftWrite(int, boolean);
int ledBar();

void setup() {
  Serial.begin(9600);
  for(int i = 0; i < 3; i++) {
    pinMode(led[i], OUTPUT);
  }
  pinMode(DS_datapin, OUTPUT);
  pinMode(SHCP_clockpin, OUTPUT);  
  pinMode(STCP_latchpin, OUTPUT);
  pinMode(button, INPUT);
}

void loop() {
  pinA0 = analogRead(A0);
  setTime = map(pinA0, 0, 1023, 0, 255);
  status = digitalRead(button);
  delay(250);
  // on/off
  if (status == HIGH) {
    if(handle == 0) {
      handle = 1;
    } else if(handle == 1) {
      handle = 2;
    } else if(handle == 2) {
      handle = 0;
    }
  }

  // setup leds
  switch(handle) {
  case 0: // turn off system
    for(int index = 7; index >= 0; index--){
      shiftWrite(index, LOW);
    }
    for(int i = 0; i < 3; i++) {
      analogWrite(led[i], 0);
    }
    break;
  case 1: // turn on leds RGB
    for(int index = 7; index >= 0; index--){
      shiftWrite(index, LOW);
    }
    light(setTime);
    break;
    case 2: // turn on led-bar
      for (int i = 0; i < 3; i++) {
        analogWrite(led[i], 0);
      }
      lastLevel = getLevel;
      getLevel = ledBar();
      if (getLevel > lastLevel) { 
        for (int index = lastLevel; index <= getLevel; index++) {
          shiftWrite(index, HIGH);
        }
      } else { 
        for (int index = lastLevel; index > getLevel; index--) {
          shiftWrite(index, LOW);
        }
      }
      break;
  default:
    break;
  }
}

// leds
void light(int setTime) {
  for(int i = 0; i < 3; i++) {
    analogWrite(led[i], 255);
    delay(setTime);
    analogWrite(led[i], 0);
  }
}

//led bar
void shiftWrite(int desiredPin, boolean desiredState){
  bitWrite(data, desiredPin, desiredState);
  shiftOut(DS_datapin, SHCP_clockpin, MSBFIRST, data);
  digitalWrite(STCP_latchpin, HIGH); 
  digitalWrite(STCP_latchpin, LOW);
}

int ledBar() {
  return getLevel = map(pinA0, 0, 1023, 0, 7);
}*/

/* led 7
//            a, b, c, d, e, f, g
const int A_G[7] = {2, 3, 4, 5, 6, 7, 8};
//            0, 1, 2, 3, 4, 5, 6
int button;
int handle = 0;
int status = -1;
boolean way = true;


const int Numbers[10][7] = {
  {A_G[0], A_G[1], A_G[2], A_G[3], A_G[4], A_G[5], 9}, // 0
  {9, A_G[1], A_G[2], 9, 9, 9, 9}, // 1
  {A_G[0], A_G[1], 9, A_G[3], A_G[4], 9, A_G[6]}, // 2
  {A_G[0], A_G[1], A_G[2], A_G[3], 9, 9, A_G[6]}, // 3
  {9, A_G[1], A_G[2], 9, 9, A_G[5], A_G[6]}, // 4
  {A_G[0], 9, A_G[2], A_G[3], 9, A_G[5], A_G[6]}, // 5
  {A_G[0], 9, A_G[2], A_G[3], A_G[4], A_G[5], A_G[6]}, // 6
  {A_G[0], A_G[1], A_G[2], 9, 9, 9, 9}, // 7
  {A_G[0], A_G[1], A_G[2], A_G[3], A_G[4], A_G[5], A_G[6]}, // 8
  {A_G[0], A_G[1], A_G[2], 9, 9, A_G[5], A_G[6]} // 9
};

// functions
void check();
void off();
void Number(int, int);
void automatic_counter(int);
void manual_counter(boolean);

void setup() {
  for(int i = 0; i < 7; i++) {
    pinMode(A_G[i], OUTPUT);
    digitalWrite(A_G[i], LOW);
  }
  pinMode(9, INPUT);
}

void loop() {
  manual_counter(way);
}

void check() {
  for(int i = 0; i < 7; i++) {
    digitalWrite(A_G[i], HIGH);
    delay(100);
    digitalWrite(A_G[i], LOW);
  }
}

void off() {
  for(int i = 0; i < 7; i++) {
    digitalWrite(A_G[i], LOW);
  }
}

// a linha representa o número que será exibido
void Number(int line, int time) {
  off();
  for(int column = 0; column <= 6; column++) { // na coluna estão os pinos em A_G a serem ligados/desligados
    if(Numbers[line][column] != 9) {
      digitalWrite(Numbers[line][column], HIGH);
    }
  }
  delay(time);
}

void automatic_counter(int order) {
  if(order == 0) {
    for(int number = 0; number <= 9; number++) {
      Number(number, 1000);
    }
  } else {
    for(int number = 9; number >= 0; number--) {
      Number(number, 1000);
    }
  }
}

void manual_counter(boolean WAY) {
  button = digitalRead(9);
  delay(150);
  if(WAY == true) {
    // normal counter
    if(button == HIGH) {
      if(status < 9) {
        status++;
      } else {
        status = 0;
      }
      Number(status, 0);
    }
  } else {
    // reverse counter
    if(button == HIGH && handle == 0) {
      if(status < 9) {
        status++;
      } else {
        handle = 1;
        status--;
      }
      Number(status, 0);
    } else if(button == HIGH && handle == 1) {
      if(status > 0) {
        status--;
      } else {
        handle = 0;
        status++;
      }
      Number(status, 0);
    }
  }
}*/

/* sensor
#include "../lib/LiquidCrystal/src/LiquidCrystal.h"
#include <../lib/Thermistor/Thermistor.h>
#include <Stepper.h>
LiquidCrystal lcd(13, 12, 7, 6, 5, 4);
Thermistor temp(A1);
//manual read:
//const float BETA = 3950;
int LDR_value = 0;
int RGB[] = {9, 10, 11};
int led = 3;
int stepsPerRevolution = 0;
Stepper myStepper(stepsPerRevolution, 0, 1, 2, 8);

// values
// temp monitoring
int temperature = 0;
String status = "";
struct Color {
  int red;
  int green;
  int blue;
};

Color great = {0, 255, 0};
Color good = {0, 100, 240};
Color normal = {100, 0, 240};
Color attention = {255, 255, 0};
Color limit = {240, 140, 0};
Color danger = {255, 0, 0};

// functions
void tmp();
void lux();
void setColor(Color);

void setup() {
  Serial.begin(9600);
  for(int pin = 0; pin <= 2; pin++) {
    pinMode(RGB[pin], OUTPUT);
  }
  pinMode(led, OUTPUT);
  lcd.begin(16, 2);
  myStepper.setSpeed(200);
}

void loop() {
  tmp();
  lux();
}

void tmp() {
  int temperature = temp.getTemp();
  stepsPerRevolution = map(temperature, -16, 96, 0, 400);
  // manual read:
  //int analogValue = analogRead(A1);
  // float temperature = 1 / (log(1 / (1023. / analogValue - 1)) / BETA + 1.0 / 298.15) - 273.15;
  if(temperature >= 0 && temperature <= 35) {
    setColor(great);
    status = "otimo";
  } else if(temperature > 35 && temperature <= 45) {
    setColor(good);
    status = "bom";
  } else if(temperature > 45 && temperature <= 65) {
    setColor(normal);
    status = "normal";
  } else if(temperature > 65 && temperature <= 80) {
    setColor(attention);
    status = "cuidado";
  } else if(temperature > 80 && temperature <= 85) {
    setColor(limit);
    status = "limite";
  } else {
    if(temperature < 0) stepsPerRevolution = 0;
    setColor(danger);
    status = "PERIGO!!!";
  }
  lcd.clear();
  lcd.print("Temperatura: ");
  lcd.setCursor(0, 1);
  lcd.print(temperature);
  lcd.print(" \xDF""C - ");
  lcd.print(status);
  Serial.print("Temperatura: ");
  Serial.print(temperature);
  Serial.print(" °C - Status: ");
  Serial.println(status);
  delay(250);
  myStepper.step(stepsPerRevolution);
}

void lux() {
  LDR_value = analogRead(A0);
  int lightness = map(LDR_value, 0, 1015, 0, 255);
  analogWrite(led, lightness);
  Serial.print("Brilho (RGB): ");
  Serial.print(lightness);
  Serial.println("%");
  delay(250);
}

void setColor(Color color) {
  analogWrite(RGB[0], color.red);
  analogWrite(RGB[1], color.green);
  analogWrite(RGB[2], color.blue);
}*/

/* servo_motor  
#include <Servo.h>

Servo motor1;
int position = 0;

void setup() {
  motor1.attach(3);
}

void loop() {
  for(int position = 0; position <= 180; position+=45) {
    motor1.write(position);
    delay(500);
  }
}*/

/* serial read 
int received = 0;
int R = LOW;
int G = LOW;
int B = LOW;

void setup() {
  Serial.begin(9600);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
}

void loop() {
  if(Serial.available() > 0){
    received = Serial.read();
    switch(received){
      case '1':
        R == HIGH ? R = LOW : R = HIGH;
        digitalWrite(9, R);
        break;
      case '2':
        G == HIGH ? G = LOW : G = HIGH;
        digitalWrite(10, G);
        break;
      case '3':
        B == HIGH ? B = LOW : B = HIGH;
        digitalWrite(11, B);
        break;
      default:
        break;
    }
  }
}*/

/* EEPROM 
#include <EEPROM.h>
int i = 0;

void setup() {
  Serial.begin(9600);
  if(EEPROM[0] != 9) {
    EEPROM[0] = 9;
    EEPROM[1] = i;
  } else {
    i = EEPROM[1];
  }
}

void loop() {
  Serial.println(i);
  i++;

  EEPROM[1] = i;
  delay(1000);
}*/

void setup() {}

void loop() {}