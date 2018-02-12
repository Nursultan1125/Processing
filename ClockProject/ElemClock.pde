class ElemClock{
    int [][] pos0 = {
    {180, 90}, {-90, 90}, {-90, 90}, {-90, 180},
    {180, 0}, {180, 90}, {-90, 180}, {0, 180},
    {180, 0}, {180, 0}, {0, 180}, {0, 180}, 
    {180, 0}, {180, 0}, {0, 180}, {0, 180},
    {-180, 0}, {90, 0}, {-90, 0}, {0, 180},
    {0, 90}, {-90, 90}, {-90, 90}, {-90, 0},
    
  };
  
  int [][] pos1 = {
    {180, 90}, {-90, 90}, {-90, 180}, {-130, -130},
    {90, 0}, {180, -90}, {0, 180}, {-130, -130},
    {-130, -130}, {180, 0}, {0, 180}, {-130, -130}, 
    {-130, -130}, {180, 0}, {0, 180}, {-130, -130},
    {-180, 90}, {-90, 0}, {90, 0}, {-90, 180},
    {0, 90}, {-90, 90}, {-90, 90}, {-90, 0},
    
  };
  
  int [][] pos2 = {
    {180, 90}, {-90, 90}, {-90, 90}, {-90, 180},
    {90, 0}, {90, -90}, {-90, 180}, {0, 180},
    {180, 90}, {-90, 90}, {0, -90}, {0, 180}, 
    {180, 0}, {180, 90}, {-90, 90}, {-90, 0},
    {180, 0}, {90, 0}, {90, -90}, {-90, 180},
    {0, 90}, {-90, 90}, {-90, 90}, {-90, 0},
  };
  
  int [][] pos3 = {
    {180, 90}, {-90, 90}, {-90, 90}, {-90, 180},
    {90, 0}, {90, -90}, {-90, 180}, {0, 180},
    {-130, -130}, {180, 90}, {0, -90}, {-130, 0}, 
    {-130, -130}, {0, 90}, {-90, 180}, {-40, 180},
    {180, 90}, {90, -90}, {-90, 0}, {0, 180},
    {0, 90}, {-90, 90}, {-90, 90}, {-90, 0},
  };
  
  int [][] pos4 = {
    {180, 90}, {-90, 180}, {180, 90}, {-90, 180},
    {180, 0}, {180, 0}, {0, 180}, {0, 180},
    {180, 0}, {0, 90}, {-90, 0}, {0, 180}, 
    {90, 0}, {-90, 90}, {-90, 180}, {0, 180},
    {-130, -130}, {-130, -130}, {180, 0}, {0, 180},
    {-130, -130}, {-130, -130}, {0, 90}, {-90, 0},
  };
  
  int [][] pos5 = {
    {180, 90}, {-90, 90}, {-90, 90}, {-90, 180},
    {180, 0}, {180, 90}, {-90, 90}, {0, -90},
    {180, 0}, {0, 90}, {-90, 90}, {-90, 180}, 
    {90, 0}, {-90, 90}, {-90, 180}, {0, 180},
    {-180, 90}, {90, -90}, {-90, 0}, {0, 180},
    {0, 90}, {-90, 90}, {-90, 90}, {-90, 0},
    
  };
  
  int [][] pos6 = {
    {180, 90}, {-90, 90}, {-90, 90}, {-90, 180},
    {180, 0}, {180, 90}, {-90, 90}, {0, -90},
    {180, 0}, {0, 90}, {-90, 90}, {-90, 180}, 
    {180, 0}, {-180, 90}, {-90, 180}, {0, 180},
    {-180, 0}, {0, 90}, {-90, 0}, {0, 180},
    {0, 90}, {-90, 90}, {-90, 90}, {-90, 0},
    
  };
  
  int [][] pos7 = {
    {180, 90}, {-90, 90}, {-90, 90}, {-90, 180},
    {0, 90}, {90, -90}, {-90, 180}, {0, 180},
    {-130, -130}, {-130, -130}, {180, 0}, {0, 180}, 
    {-130, -130}, {-130, -130}, {0, 180}, {0, 180},
    {-130, -130}, {-130, -130}, {180, 0}, {0, 180},
    {-130, -130}, {-130, -130}, {0, 90}, {-90, 0},
  };
  
  int [][] pos8 = {
    {180, 90}, {-90, 90}, {-90, 90}, {-90, 180},
    {180, 0}, {180, 90}, {-90, 180}, {0, 180},
    {150, 0}, {90, 0}, {0, -90}, {0, -140}, 
    {180, 40}, {180, 90}, {-90, 180}, {-40, 180},
    {-180, 0}, {90, 0}, {-90, 0}, {0, 180},
    {0, 90}, {-90, 90}, {-90, 90}, {-90, 0},
    
  };
  
  int [][] pos9 = {
    {180, 90}, {-90, 90}, {-90, 90}, {-90, 180},
    {180, 0}, {180, 90}, {-90, 180}, {0, 180},
    {180, 0}, {0, 90}, {-90, 0}, {0, 180}, 
    {90, 0}, {-90, 90}, {-90, 180}, {0, 180},
    {180, 90}, {90, -90}, {-90, 0}, {0, 180},
    {0, 90}, {-90, 90}, {-90, 90}, {-90, 0},
  };
  final int COUNT = 24;
  int[] [] prepos = new int [COUNT] [2];

  ElemClockItem[]  es = new ElemClockItem[COUNT];
  int x1;
  int y1;
  float speed;
  ElemClock(int x, int y){
    speed = 6;
    for(int i = 0; i < COUNT; i ++){
    es[i] = new ElemClockItem();
    
    es[i].x = x1 * 60 + x;
    es[i].y = y1 * 60 + y;
    
    
    
    x1 += 1;
    if(x1 >= 4){
      x1 = 0;
      y1 += 1;
    }
    
  }
  
  }
  
  void digit_show(int num){
    for(int i = 0; i < COUNT; i ++){
      prepos[i][0] = int(es[i].l1.angle);
      prepos[i][1] = int(es[i].l2.angle);
         
    }
    switch(num){
      case 0:
        for(int i = 0; i < COUNT; i ++){
          es[i].show();
         
            if(prepos[i][0] > pos0[i][0]){
              es[i].l1.angle -= speed;
            }else if(prepos[i][0] < pos0[i][0]){
              es[i].l1.angle += speed;
            }if(prepos[i][1] > pos0[i][1]){
              es[i].l2.angle -= speed;
            }else if(prepos[i][1] < pos0[i][1]){
              es[i].l2.angle += speed;
            }
          
          
        }
      break;
      case 1:
        for(int i = 0; i < COUNT; i ++){
          es[i].show();
          if(prepos[i][0] > pos1[i][0]){
              es[i].l1.angle -= speed;
            }else if(prepos[i][0] < pos1[i][0]){
              es[i].l1.angle += speed;
            }if(prepos[i][1] > pos1[i][1]){
              es[i].l2.angle -= speed;
            }else if(prepos[i][1] < pos1[i][1]){
              es[i].l2.angle += speed;
            }
        }
      break;
      case 2:
        for(int i = 0; i < COUNT; i ++){
          es[i].show();
          if(prepos[i][0] > pos2[i][0]){
              es[i].l1.angle -= speed;
            }else if(prepos[i][0] < pos2[i][0]){
              es[i].l1.angle += speed;
            }if(prepos[i][1] > pos2[i][1]){
              es[i].l2.angle -= speed;
            }else if(prepos[i][1] < pos2[i][1]){
              es[i].l2.angle += speed;
            }
        }
      break;
      case 3:
        for(int i = 0; i < COUNT; i ++){
          es[i].show();
          if(prepos[i][0] > pos3[i][0]){
              es[i].l1.angle -= speed;
            }else if(prepos[i][0] < pos3[i][0]){
              es[i].l1.angle += speed;
            }if(prepos[i][1] > pos3[i][1]){
              es[i].l2.angle -= speed;
            }else if(prepos[i][1] < pos3[i][1]){
              es[i].l2.angle += speed;
            }
        }
      break;
      
      case 4:
        for(int i = 0; i < COUNT; i ++){
          es[i].show();
          if(prepos[i][0] > pos4[i][0]){
              es[i].l1.angle -= speed;
            }else if(prepos[i][0] < pos4[i][0]){
              es[i].l1.angle += speed;
            }if(prepos[i][1] > pos4[i][1]){
              es[i].l2.angle -= speed;
            }else if(prepos[i][1] < pos4[i][1]){
              es[i].l2.angle += speed;
            }
        }
      break;
      
      case 5:
        for(int i = 0; i < COUNT; i ++){
          es[i].show();
          if(prepos[i][0] > pos5[i][0]){
              es[i].l1.angle -= speed;
            }else if(prepos[i][0] < pos5[i][0]){
              es[i].l1.angle += speed;
            }if(prepos[i][1] > pos5[i][1]){
              es[i].l2.angle -= speed;
            }else if(prepos[i][1] < pos5[i][1]){
              es[i].l2.angle += speed;
            }
        }
      break;
      
      case 6:
        for(int i = 0; i < COUNT; i ++){
          es[i].show();
          if(prepos[i][0] > pos6[i][0]){
              es[i].l1.angle -= speed;
            }else if(prepos[i][0] < pos6[i][0]){
              es[i].l1.angle += speed;
            }if(prepos[i][1] > pos6[i][1]){
              es[i].l2.angle -= speed;
            }else if(prepos[i][1] < pos6[i][1]){
              es[i].l2.angle += speed;
            }
        }
      break;
      
      case 7:
        for(int i = 0; i < COUNT; i ++){
          es[i].show();
          if(prepos[i][0] > pos7[i][0]){
              es[i].l1.angle -= speed;
            }else if(prepos[i][0] < pos7[i][0]){
              es[i].l1.angle += speed;
            }if(prepos[i][1] > pos7[i][1]){
              es[i].l2.angle -= speed;
            }else if(prepos[i][1] < pos7[i][1]){
              es[i].l2.angle += speed;
            }
        }
      break;
      
      case 8:
        for(int i = 0; i < COUNT; i ++){
          es[i].show();
          if(prepos[i][0] > pos8[i][0]){
              es[i].l1.angle -= speed;
            }else if(prepos[i][0] < pos8[i][0]){
              es[i].l1.angle += speed;
            }if(prepos[i][1] > pos8[i][1]){
              es[i].l2.angle -= speed;
            }else if(prepos[i][1] < pos8[i][1]){
              es[i].l2.angle += speed;
            }
        }
      break;
      
      case 9:
        for(int i = 0; i < COUNT; i ++){
          es[i].show();
          if(prepos[i][0] > pos9[i][0]){
              es[i].l1.angle -= speed;
            }else if(prepos[i][0] < pos9[i][0]){
              es[i].l1.angle += speed;
            }if(prepos[i][1] > pos9[i][1]){
              es[i].l2.angle -= speed;
            }else if(prepos[i][1] < pos9[i][1]){
              es[i].l2.angle += speed;
            }
        }
      break;
      
    }
  }
  
}