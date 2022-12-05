class Spaceship extends Floater  
{   
  public Spaceship(){
    corners=4;
    xCorners=new int[]{-8,16,-8,-2};
    yCorners=new int[]{-8,0,8,0};
    myColor=255;
    myCenterX=250;
    myCenterY=250;
  }

public void setXspeed(int x){
  myXspeed=x;
}
public void setYspeed(int y){
  myYspeed=y;
}
public void setCenterX(int z){
  myCenterX=z;
}
public void setCenterY(int v){
  myCenterY=v;
}
public void setPointDirection(int c){
  myPointDirection=c;
}
public double getCenterX(){
  return myCenterX;
}
public double getCenterY(){
  return myCenterY;
}
}
