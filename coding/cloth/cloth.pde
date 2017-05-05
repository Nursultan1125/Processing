import toxi.geom.*;
import toxi.geom.mesh.*;
import toxi.geom.mesh.subdiv.*;
import toxi.geom.mesh2d.*;
import toxi.math.*;
import toxi.math.conversion.*;
import toxi.math.noise.*;
import toxi.math.waves.*;
import toxi.util.*;
import toxi.util.datatypes.*;
import toxi.util.events.*;

import toxi.physics.*;
import toxi.physics2d.*;
import toxi.physics2d.behaviors.*;
import toxi.physics2d.constraints.*;

ArrayList<Particle> particles;
ArrayList<Spring> springs;
float w =10;

VerletPhysics2D physics;

void setup()
{
  size(600,400);
  particles= new ArrayList<Particle>();
  springs = new ArrayList<Spring>();
  physics = new VerletPhysics2D();
  Vec2D gravity = new Vec2D(0,1);
  GravityBehavior gb = new GravityBehavior(gravity);
  physics.addBehavior(gb);
  float x = 100;
  float y = 10;
  
  
  for(int i = 0; i< 40;i++)
  {
    Particle p = new Particle(x,y);
    particles.add(p);
    physics.addParticle(p);
    x=x+w;
  }
  for(int i =0 ; i < particles.size()-1;i++)
  {
    Particle a = particles.get(i);
    Particle b = particles.get(i+1);
    Spring s = new Spring(a,  b);
    springs.add(s);
    physics.addSpring(s);
  }
  Particle p1 = particles.get(0);
  
  p1.lock();
  Particle p2 = particles.get(particles.size()-1);
  
  p2.lock();
}

void draw()
{
  background(51);
  physics.update();
  for(Particle p: particles)
  {
    p.display();
  }
  for(Spring s: springs)
  {
    s.display();
  }
}