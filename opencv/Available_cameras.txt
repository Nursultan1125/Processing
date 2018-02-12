import processing.video.*;
void setup() {
  String[] cameras = Capture.list();
  println("Available cameras:");
  for (int i = 0; i < cameras.length; i++)println(cameras[i]);
}