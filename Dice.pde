int R = (int)(Math.random()*255);
int G = (int)(Math.random()*255);
int B = (int)(Math.random()*255);

int Dot1 = (int)(Math.random()*255);
int Dot2 = (int)(Math.random()*255);
int Dot3 = (int)(Math.random()*255);
int Dot4 = (int)(Math.random()*255);
int Dot5 = (int)(Math.random()*255);
int Dot6 = (int)(Math.random()*255);
void setup()
{
  size(600,600);
  noLoop();
}

void draw()
{
  background(60,109,203);
  int sum = 0;
  for(int y = 20; y < 500; y +=100)
{
    for(int x = 20; x < 500; x +=95)
  {
    Die bob = new Die(x,y);
    bob.roll();
    bob.show();
  } 
  }
}

void mousePressed()
{
   R = (int)(Math.random()*255);
   G = (int)(Math.random()*255);
   B = (int)(Math.random()*255);
   Dot1 = (int)(Math.random()*255);
   Dot2 = (int)(Math.random()*255);
   Dot3 = (int)(Math.random()*255);
   Dot4 = (int)(Math.random()*255);
   Dot5 = (int)(Math.random()*255);
   Dot6 = (int)(Math.random()*255);
     redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int value, myX, myY;
  
    Die(int x, int y) //constructor
    {
    
    //initialize numbers  
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    value = (int)(Math.random()*6+1);
    stroke(Dot1, Dot2, Dot3);
    strokeWeight(5);
    }
  void show()
  {
    
    fill(R,G,B);  
    strokeWeight(5);
    rect(myX,myY,80,80,20,20,20,20);
    fill(0,0,0);
    textSize(30);
    text("Display Dice:Click for new result!",50,550);
    
    if (value == 1)
    { 
      strokeWeight(3);
      fill(Dot4,Dot5,Dot6);
      ellipse(myX+40,myY+40,30,30);
    }
    else if (value == 2)
    {
      strokeWeight(3);
      fill(Dot4,Dot5,Dot6);
      ellipse(myX+60,myY+60,20,20);
      ellipse(myX+20,myY+25,20,20);
    }
    else if (value == 3){
      strokeWeight(3);
      fill(Dot4,Dot5,Dot6);
      ellipse(myX+60,myY+60,20,20);
      ellipse(myX+40,myY+42.5,20,20);
      ellipse(myX+20,myY+25,20,20);}
   
     else if (value == 4){
      strokeWeight(3);
      fill(Dot4,Dot5,Dot6);
      ellipse(myX+60,myY+60,20,20);
      ellipse(myX+60,myY+25,20,20);
      ellipse(myX+20,myY+25,20,20);
      ellipse(myX+20,myY+60,20,20);
      
      }  
      
      else if (value == 5){
      strokeWeight(3);
      fill(Dot4,Dot5,Dot6);
      ellipse(myX+60,myY+60,20,20);
      ellipse(myX+60,myY+25,20,20);
      ellipse(myX+20,myY+25,20,20);
      ellipse(myX+20,myY+60,20,20);
      ellipse(myX+40,myY+42.5,20,20);
      
      }  
     else if (value == 6){
      strokeWeight(3);
      fill(Dot4,Dot5,Dot6);
      ellipse(myX+60,myY+65,20,20);
      ellipse(myX+60,myY+20,20,20);
      ellipse(myX+60,myY+42.5,20,20);
      ellipse(myX+20,myY+20,20,20);
      ellipse(myX+20,myY+65,20,20);
      ellipse(myX+20,myY+42.5,20,20);
      
      }  
  }
}
