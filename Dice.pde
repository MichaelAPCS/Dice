int total = 0;
int numDice = 0;
int columns;
int rows;
Die one;
void setup()
{
  background(135, 206, 250);
  noLoop();
  size(900, 900);
}
void draw()

{
  numDice = 0;
  columns = height;
  rows = width;
  background(70,130,180,10);
  total = 0;
  for (int y=100; y<(columns); y+=20) {
    for (int x=100; x<(rows); x+=20) {
      numDice+=1;
      one = new Die(x, y);
      one.roll();
      one.show();
    }
  }
  textSize(26); 
  text("Your total is:"+total, width-300, height-50);
  if (total>3000){
    text("If you really need " +numDice+" dice, you can count them yourself!",50,height-25);
}
else if (total<100){
  text("This seems like a reasonable number of dice!",50,height-25);
}
else{
  text("What version of Dungeons and Dragons are you PLAYING?!?",50,height-25);
}
  
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, dots;

  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
  }
  void roll()
  {
    int mouseYPos = mouseY;
    int mouseXPos = mouseX;
    dots = (int)(Math.random()*6+1);
    total = total+ dots;
    columns = mouseYPos;
    rows = mouseXPos;
  }
  void show()
  {

    fill(0);
    int diceL = 15;
    rect(myX, myY, diceL, diceL);
    quad(myX,myY,myX-3,myY-3,myX-3,myY+diceL-3,myX,myY+diceL);
    quad(myX,myY,myX-3,myY-3,myX+diceL-3,myY-3,myX+diceL,myY);
    stroke(95,158,160);
    strokeWeight(.5);
    line(myX,myY,myX,myY+diceL);
    fill(255);
    if (dots == 1) {
      ellipse(myX+diceL*.5, myY+diceL*.5, 5, 5);
    } else if (dots == 2) {
      ellipse(myX+diceL*.75, myY+diceL*.25, 5, 5);
      ellipse(myX+diceL*.25, myY+diceL*.75, 5, 5);
    } else if (dots == 3) {
      ellipse(myX+diceL*.18, myY+diceL*.5, 4.5, 4.5);
      ellipse(myX+diceL*.5, myY+diceL*.5, 4.5, 4.5);
      ellipse(myX+diceL*.82, myY+diceL*.5, 4.5, 4.5);
    } else if (dots == 4) {
      ellipse(myX+diceL*.75, myY+diceL*.25, 5, 5);
      ellipse(myX+diceL*.25, myY+diceL*.25, 5, 5);
      ellipse(myX+diceL*.75, myY+diceL*.75, 5, 5);
      ellipse(myX+diceL*.25, myY+diceL*.75, 5, 5);
    } else if (dots == 5) {
      ellipse(myX+diceL*.8, myY+diceL*.2, 5, 5);
      ellipse(myX+diceL*.2, myY+diceL*.2, 5, 5);
      ellipse(myX+diceL*.8, myY+diceL*.8, 5, 5);
      ellipse(myX+diceL*.2, myY+diceL*.8, 5, 5);
      ellipse(myX+diceL*.5, myY+diceL*.5, 5, 5);
    } else if (dots == 6) {
      ellipse(myX+diceL*.75, myY+diceL*.18, 4.5, 4.5);
      ellipse(myX+diceL*.25, myY+diceL*.18, 4.5, 4.5);
      ellipse(myX+diceL*.75, myY+diceL*.5, 4.5, 4.5);
      ellipse(myX+diceL*.25, myY+diceL*.5, 4.5, 4.5);
      ellipse(myX+diceL*.75, myY+diceL*.82, 4.5, 4.5);
      ellipse(myX+diceL*.25, myY+diceL*.82, 4.5, 4.5);
    }
    fill(0);
  }
}
