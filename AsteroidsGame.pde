Spaceship Aaron=new Spaceship();
Star[] MaLau=new Star[200];
public void setup() 
{
  size(500,500);
  for(int i=0;i<200;i++){
    MaLau[i]=new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i=0;i<200;i++){
    MaLau[i].show();
  }
  Aaron.move();
  Aaron.show();
}
public void keyPressed(){
  if(key=='r'){
    Aaron.myXspeed=0;
    Aaron.myYspeed=0;
    Aaron.myCenterX=(int)(Math.random()*500);
    Aaron.myCenterY=(int)(Math.random()*500);
    Aaron.myPointDirection=0;
  }
  if(key=='w'){
    Aaron.accelerate(.1);
  }
  if(key=='a'){
    Aaron.turn(-3.);  
  }
  if(key=='s'){
    Aaron.accelerate(-.1);
  }
  if(key=='d'){
    Aaron.turn(3.);
  }
  if(key=='1'){
    Aaron.myXspeed=0;
    Aaron.myYspeed=0;
  }
}
