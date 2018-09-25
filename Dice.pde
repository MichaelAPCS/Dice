Die one;
void setup()
{
	noLoop();
  size(900,900);
}
void draw()
{
	for (int y=0;y<=1000;y+=20){
  for (int x=0;x<=1000;x+=20){
    one = new Die(x,y);
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
	int myX, myY, dots;
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
   myX = x;
   myY = y;
   
	}
	void roll()
	{
		dots = (int)(Math.random()*6+1);
	}
	void show()
	{
		fill(0);
    rect(myX,myY,5,5,10);
	}
}
