Particle [] stars;
OddballParticle joe;
int hello = 0;
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
    stars[j].Speed = Math.random()+hello;
    hello+=Math.random();
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
    Speed = Math.random();
    Color=color((int)(Math.random()*50)+205,(int)(Math.random()*50)+205,0);
  }
  void move(){
    X+=(Math.cos((float)Angle)*Speed);
    Y+=(Math.sin((float)Angle)*Speed);
  }
  void show(){
    fill(Color);
    ellipse((float)(X),(float)Y,(float)siz,(float)siz);
    if((abs((float)X)>50||abs((float)Y)>50)&&(abs((float)X)<100||abs((float)Y)<100)){
      Color = color((int)(Math.random()*150),(int)(Math.random()*150),(int)(Math.random()*50)+205);
      
    } else if(abs((float)X)>100||abs((float)Y)>100){
      Color=color((int)(Math.random()*50)+205,(int)(Math.random()*50)+205,0);
    }
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
