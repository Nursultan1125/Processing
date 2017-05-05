#include <Wire.h>

uint8_t MPUAdress = 0x68;

int16_t accX;
int16_t accY;
int16_t accZ;
int16_t tempRaw;
int16_t gyroX;
int16_t gyroY;
int16_t gyroZ;


int16_t gyroX_cal;
int16_t gyroY_cal;
int16_t gyroZ_cal;




void setup()
{
  Serial.begin(9600);
  Wire.begin();
  i2cWrite(0x6B,0x00);
  if(i2cRead(0x75,1)[0]!=0x68)
  {
    Serial.print(F("MPU-6050 with address 0x"));
    Serial.print(MPUAdress,HEX);
    Serial.println(F(" is not connected"));
    while(1);
  }
  Serial.print("Start call");
  for(cal_int = 0;cal_int < 2000; cal_int++)
  {
    signalen();
    gyroX_cal += gyroX;
    gyroY_cal += gyroY;
    gyroZ_cal += gyroZ;
    if(cal_int%100==0)Serial.print(".");
    delay(4);
  }
  Serial.println("done");
  gyroX_cal /=2000;
  gyroY_cal /=2000;
  gyroZ_cal /=2000;
  
  
  
}

void loop()
{
  signalen();
  printsig();
  
}



void printsig()
{
  Serial.print("Y: ");
  if(gyroY > 0) Serial.print("+");
  Serial.print(gyroY/85.14286,0);
  if(gyroY/57.14286 - 2 > 0) Serial.print("NoU");
  else if(gyroY/57.14286 + 2 < 0) Serial.print("NoD");
  else Serial.print("---");
 
}


void i2cWrite(uint8_t registerAdress,uint8_t data)
{
  Wire.beginTransmission(MPUAdress);
  Wire.write(registerAdress);
  Wire.write(data);
  Wire.endTransmission();
}


uint8_t* i2cRead(uint8_t registerAdress,uint8_t nbyte)
{
  uint8_t data[nbyte];
  Wire.beginTransmission(MPUAdress);
  Wire.write(registerAdress);
  Wire.endTransmission(false);
  Wire.requestFrom(MPUAdress,nbyte);
  for(uint8_t i=0;i<nbyte;i++)
  {
    data[i] = Wire.read();
  }
  return data;
}

void signalen()
{
  uint8_t* data = i2cRead(0x3B,14);  
  accX = ((data[0] << 8) | data[1]);
  accY = ((data[2] << 8) | data[3]);
  accZ = ((data[4] << 8) | data[5]);  
  tempRaw = ((data[6] << 8) | data[7]);  
  gyroX = ((data[8] << 8) | data[9]);
  gyroY = ((data[10] << 8) | data[11]);
  gyroZ = ((data[12] << 8) | data[13]);
  
  if(cal_int == 2000)gyroX -= gyroX_cal;
  
  gyroY *=-1;
  if(cal_int == 2000)gyroY -= gyroY_cal;
  
  gyroZ *=-1;
  if(cal_int == 2000)gyroZ -= gyroZ_cal;
 
}
