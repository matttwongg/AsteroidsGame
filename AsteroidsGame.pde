Spaceship Aaron=new Spaceship();
Star[] MaLau=new Star[200];
ArrayList <Asteroid> Andre=new ArrayList <Asteroid>();
public void setup() 
{
  size(500,500);
  for(int i=0;i<200;i++){
    MaLau[i]=new Star();
  }
  for(int i=0;i<200;i++){
    Andre.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i=0;i<200;i++){
    MaLau[i].show();
  }
  for(int i=0;i<Andre.size();i++){
    Andre.get(i).move();
    Andre.get(i).show();
    if(dist((float)Andre.get(i).getCenterX(),(float)Andre.get(i).getCenterY(),(float)Aaron.getCenterX(),(float)Aaron.getCenterY())<10){
      Andre.remove(i);
    }
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
