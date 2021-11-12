 Bacteria[] full = new Bacteria [20];
void setup()   
{     
  size(400, 400);
  for (int i =0; i<full.length; i++) {
    full[i] = new Bacteria();
  }
}   
void draw()   
{    
  background(128, 237, 234); 
  for (int i = 0; i< full.length; i++) {
    full[i].show();
    full[i].rise();
    fill(156,142,93);
  }
}
class Bacteria{
  int mySize, myColor, myX;
  float myY, mySpeed;
  void rise(){
    myX += (int)(Math.random()*mySpeed)-1;
    myY += (int)(Math.random()*mySpeed)-1;
    if (myY < -100) {
      myY = 500;
    }
  }
  void show(){
    fill(myColor);
    stroke(myColor);
    rect(myX, myY, mySize, mySize,20);
  }
 Bacteria(){ 
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
    mySize = (int)(Math.random()*80+20);
    mySpeed = 3;
    myColor = color((int)(Math.random()*20), (int)(Math.random()*256), (int)(Math.random()*100));
  }
}
