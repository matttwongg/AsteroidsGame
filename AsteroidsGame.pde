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
  if(key=='h'){
    Aaron.setXspeed(0);
    Aaron.setYspeed(0);
    Aaron.setCenterX((int)(Math.random()*500));
    Aaron.setCenterY((int)(Math.random()*500));
    Aaron.setPointDirection((int)(Math.random()*500));
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

}
