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
} */

/* semáforo

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
} */

/* botão
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
} */

/* alarme
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
} */

/* potenciometro */
