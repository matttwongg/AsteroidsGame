Spaceship Aaron=new Spaceship();
Star[] MaLau=new Star[200];
ArrayList <Asteroid> Andre=new ArrayList <Asteroid>();
ArrayList <Bullet> MrChan = new ArrayList <Bullet> ();
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
    if(dist((float)Andre.get(i).getCenterX(),(float)Andre.get(i).getCenterY(),(float)Aaron.getCenterX(),(float)Aaron.getCenterY())<25){
      Andre.remove(i);
    }
  }
    for (int i = 0; i < MrChan.size(); i++) {
    for (int j = 0; j < Andre.size(); j++) {
      if (dist((float)(Andre.get(j).getCenterX()),(float)(Andre.get(j).getCenterY()),(float)(MrChan.get(i).getCenterX()),(float)(MrChan.get(i).getCenterY())) < 10){
        MrChan.remove(i);
        Andre.remove(j);
        Andre.add(new Asteroid());
        break;
      }
    }
  }
  for (int i = 0; i < MrChan.size(); i++) {
    MrChan.get(i).move();
    MrChan.get(i).show();
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
public void mousePressed() {
  MrChan.add(new Bullet(Aaron));
}
