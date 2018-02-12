/** Processing Arduino Webcam face Tracking v.1 20170527 */
import gab.opencv.*;                                  // Скачиваем! Подключаем библиотеку "OpenCV" - для компьютерного зрения
import processing.video.*;                            // Скачиваем! Подключаем библиотеку "processing.video" - для захвата видео с Веб-камеры
import processing.serial.*;                           // Подключаем библиотеку - для работы с serial COM port
Serial myPort;                                        // создаем объект, для serial port
import java.awt.*;                                    // Преобразовать массив объектов OpenCV Rect в массив java.awt.
Capture video;                                        // Захват видео
OpenCV opencv;                                        // создаем объект opencv
int x, y, w;                                          // координаты лица - (координаты-x, координаты-y, ширина-w)
void setup() {
  size(640, 480);                                     // размер окна программы - при запуске
  textSize(32);                                       // размер текста
  fill(color(#0000FF));                               // Цвет текста - можно и так fill(0, 0, 225); 
  surface.setAlwaysOnTop(true);                       // поверх всех окон
  surface.setResizable(true);                         // Изменение размера окна программы, мышкой
  /** разные способы выбора Веб-камеры, для захвата видео */
  video = new Capture(this, 640/2, 480/2);            // если у вас только одна камера, подключаем камеру по умолчанию, для захвата
  // video = new Capture(this, 640/2, 480/2, "Logitech QuickCam Ultra Vision", 30);// если много камер (this, Ширина, Высота, "имя камеры", частота кадров)
  // video = new Capture(this, 640/2, 480/2, Capture.list()[216], 30);//если много камер (this, Ширина, Высота, Capture.list()[№ устройства], частота кадров)
  /** ____________________ */

  opencv = new OpenCV(this, 640/2, 480/2);            // Создание объекта OpenCV 
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);     // Какой «каскад» мы будем использовать? 
  video.start();
  stroke(0, 255, 0);                                  // цвет границ окна Обнаружение лица
  strokeWeight(3);                                    // ширина границ окна Обнаружение лица
  //myPort=new Serial(this, "COM22", 57600);            // вручную - указываем номер Serial COM port и скорость
}

void draw() {                                         // в скетчах Processing используется функция draw() - вместо loop().
  textSize(32);                                       // размер текста
  background(color(#EDFF00));                         // Цвет заливки окна программы, - желтый - можно и так background(237, 255, 0);
  opencv.loadImage(video);                            // постоянно отправляем изображение с камеры в OpenCV 
  Rectangle[] faces = opencv.detect();                // включить Обнаружение лица 
  scale(2);                                           // scale(установка масштаба(2) видео)
  image(video, 0, 0 );                                // показывать видео в окне программы - тормозит отправку в serial port !можно закомментировать!
  noFill();                                           // не Заливать окошко границ - Обнаружение лица

  for (int i = 0; i < faces.length; i++) {            // Если Обнаруживаем лицо
    rect(x=faces[i].x, y=faces[i].y, w=faces[i].width, faces[i].height); // получаем координаты лица - (координаты-x, координаты-y, ширина, высота)

    x = constrain(x, 1, 255);                         // на всякий случай, ограничиваем диапазон int x до размера byte
    y = constrain(y, 1, 255);                         // на Arduino принимаем / работаем с byte

    //myPort.write(x);                                  // отправляем на Arduino координату-x
    //myPort.write(y);                                  // отправляем на Arduino координату-y
    //myPort.write(w);                                  // отправляем на Arduino (ширину - лица) = "расстояние - лица от Веб-камеры"

    //  /**                                           // можно закомментировать
    fill(color(#0000FF));                             // меняем Цвет текста 
    text(" x:↔ " + x, 0, 30);                         // выводим в окно координату-x  лица
    fill(color(#FF082D));                             // меняем Цвет текста 
    text("y: ↨ " + y, 170, 30);                       // выводим в окно координату-y  лица
    fill(color(#63FC4C));                             // меняем Цвет текста 

    text("distance: " + (w), 10, 230);                // выводим в окно (ширина, высота) лица = "расстояние лица от Веб-камеры"
    textSize(w);                                      // изменяем размер текста 
    text(" ☻ ", 200, 230);
    // */                                             // можно закомментировать
  }
}
void captureEvent(Capture c) {                        // функция для захвата изображения с Веб-камеры
  c.read();
}