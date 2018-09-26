
Die one;
void setup()
{
	background(135,206,250);
  noLoop();
  size(900,900);
}
void draw()
{
	for (int y=100;y<height-100;y+=20){
  for (int x=100;x<=width-200;x+=20){
    one = new Die(x,y);
    one.roll();
    one.show();
    
  }
}
    
  
   
  
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, dots,total;
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
   myX = x;
   myY = y;
   
	}
	void roll()
	{
		dots = (int)(Math.random()*6+1);
    total = total+ dots;
	}
	void show()
	{
		fill(0);
    int diceL = 15;
    rect(myX,myY,diceL,diceL);
    fill(255);
    if (dots == 1){
      ellipse(myX+diceL*.5,myY+diceL*.5,5,5);
    }
    else if (dots == 2){
      ellipse(myX+diceL*.75,myY+diceL*.25,5,5);
      ellipse(myX+diceL*.25,myY+diceL*.75,5,5);
     }
     else if (dots == 3){
      ellipse(myX+diceL*.18,myY+diceL*.5,4.5,4.5);
      ellipse(myX+diceL*.5,myY+diceL*.5,4.5,4.5);
      ellipse(myX+diceL*.82,myY+diceL*.5,4.5,4.5);
     }
     else if (dots == 4){
      ellipse(myX+diceL*.75,myY+diceL*.25,5,5);
      ellipse(myX+diceL*.25,myY+diceL*.25,5,5);
      ellipse(myX+diceL*.75,myY+diceL*.75,5,5);
      ellipse(myX+diceL*.25,myY+diceL*.75,5,5);
     }
     else if (dots == 5){
      ellipse(myX+diceL*.8,myY+diceL*.2,5,5);
      ellipse(myX+diceL*.2,myY+diceL*.2,5,5);
      ellipse(myX+diceL*.8,myY+diceL*.8,5,5);
      ellipse(myX+diceL*.2,myY+diceL*.8,5,5);
      ellipse(myX+diceL*.5,myY+diceL*.5,5,5);
     }
     else if (dots == 6){
      ellipse(myX+diceL*.75,myY+diceL*.18,4.5,4.5);
      ellipse(myX+diceL*.25,myY+diceL*.18,4.5,4.5);
      ellipse(myX+diceL*.75,myY+diceL*.5,4.5,4.5);
      ellipse(myX+diceL*.25,myY+diceL*.5,4.5,4.5);
      ellipse(myX+diceL*.75,myY+diceL*.82,4.5,4.5);
      ellipse(myX+diceL*.25,myY+diceL*.82,4.5,4.5);
     }
     fill(0);
     text(total,width-100,height-100,40);
}
}
