/* Arduino Processing Webcam face Tracking v.1 20170527 */
#include <Servo.h>                                              // Подключаем библиотеку для работы с сервоприводами.                           
byte servoPins[] = {6, 5};                                      // массив Pins для servos (pin-(6) и (5)) - на Arduino UNO.
Servo servos[sizeof(servoPins)];                                // массив количество - объектов servos.
byte PC[] = {86, 95, 0};                                        // массив, для приема данных по Serial, от processing-Webcam.
byte sVal[] = {PC[0], PC[1]};                                   // массив для поворота servos.
byte sSpeed[] = {20, 35};                                       // массив значений, для (плавности / скорости) - поворота servos.
byte MAP[2][2] = {{20, 220}, {22, 125}};                        // массивы значений, для конвертации диапазона через map PC[0]иPC[1]
unsigned long ServoDetach;                                      // храним время, для отключения Servo, чтоб не дребезжали.
#define LED   3                                                 // LED - для изменения яркости, от расстояния лица и Webcam, pin(3)
void setup() {
  Serial.begin(57600);                                          // устанавливаем скорость Serial соединения
  pinMode(LED, OUTPUT);                                         // LED устанавливаем на выход.
}
void loop() {
  if (Serial.available() > 0) {                                 // Если в буфере Serial имеются принятые данные.
    Serial.readBytes(PC, sizeof(PC));                           // Записываем данные в элементы PC, и указываем сколько байт читать
    analogWrite(LED, map(PC[2], min(PC[2], 50), max(PC[2], 170), 0, 30)); // конвертируем диапазон PC[2], в диапазон для яркости LED
    ServoDetach = millis();                                     // сохраняем время, для отключения Servo, чтоб не дребезжали.
  }
  for (int i = 0; i < sizeof(servoPins); i++) {      // для плавности поворота Servo - не дёргались! youtube.com/watch?v=yVxjzu__ukI
    if (sVal[i] % 2 == millis() / sSpeed[i] % 2 && sVal[i] != map(PC[i], MAP[i][i - i], MAP[i][i + !i], 1, 179)) {
      servos[i].attach(servoPins[i]);                           // подключаем servoPins[i]
      servos[i].write(PC[i] > sVal[i] ? ++sVal[i] : --sVal[i]); // вращаем servos[i]
    }
    else if (millis() - ServoDetach > 1000)servos[i].detach();  // отключаем Servo, чтоб не дребезжали.
  }
}
