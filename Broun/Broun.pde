Molecule[] mol = new Molecule[10];
Particle part;

void setup()
{
  size(600, 600);
  part = new Particle(300, 300);
  for(int i = 0; i < mol.length; i++){
    mol[i] = new Molecule(random(600), random(600));
    mol[i].setSpeed(random(1,5), random(1,5));
  }
 
}


void draw()
{
  background(0,0,51);
  part.update();
  part.show();
  for(int i = 0; i < mol.length; i++){
    mol[i].update();
    mol[i].show();
  }
  for(int i = 0; i < mol.length; i++)
  {
    for(int j = 0; j < mol.length; j++){
      if(i != j)
     if(mol[i].isRange(mol[j])){
        mol[i].sx *= -1;
        mol[i].sy *= -1;

        println(mol[i].sx);
      }
    }
  }
  for(int i = 0; i < mol.length; i++)
  {
    part.became(mol[i]);
  }
  
}