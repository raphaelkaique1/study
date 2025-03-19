#include <Arduino.h>

int R = 11;
int G = 10;
int B = 9;

void led_normal();
void led_RGB();
void RGB(int, int, int);

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
  RGB(255, 0, 0);
  delay(1000);
  RGB(0, 255, 0);
  delay(1000);
  RGB(0, 0, 255);
  delay(1000);
  RGB(255, 255, 0);
  delay(1000);
  RGB(0, 255, 255);
  delay(1000);
  RGB(255, 0, 255);
  delay(1000);
  RGB(0, 0, 0);
  delay(1000);
}

void RGB(int r, int g, int b) {
  analogWrite(R, r);
  analogWrite(G, g);
  analogWrite(B, b);
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
}