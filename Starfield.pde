Particle [] stars;
OddballParticle joe;

void setup()
{
	//your code here
  size(400,400);
  background(0);
  stars = new Particle[10000];
  for(int i = 0; i < stars.length;i++){
    stars[i] = new Particle();
  }
  joe = new OddballParticle();
}
void draw()
{
	translate(200,200);
  background(0);
  
  for(int z = 0; z < stars.length; z++){
    
    stars[z].show();
    stars[z].move();
    
  }
  joe.show();
  joe.squirm();
  
}
void mouseClicked(){
  
  for(int j = 0; j < stars.length;j++){
    stars[j].X=0;
    stars[j].Y=0;

  }
  
}
class Particle
{
	double X,Y,Angle,Speed, siz;
  int Color;
  Particle(){
    X=0;
    Y=0;
    Angle=Math.random()*2*PI;
    siz = 3;
    Speed = Math.random()*5;
    Color=color((int)((Math.random())*255),(int)((Math.random())*255),(int)((Math.random())*255));
  }
  void move(){
    X+=(Math.cos((float)Angle)*Speed);
    Y+=(Math.sin((float)Angle)*Speed);
  }
  void show(){
    fill(Color);
    ellipse((float)(X),(float)Y,(float)siz,(float)siz);
    
  }
}

class OddballParticle extends Particle//inherits from Particle
{
	//your code here
  void squirm(){
    Color = color(255);
    siz = 10;
    X+=(int)(Math.random()*5)-2;
    Y+=(int)(Math.random()*5)-2;
  }
}
