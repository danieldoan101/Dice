void setup()
{
	noLoop();
	size(300, 300);
}
void draw()
{
	Die bob = new Die(150,150,60);
	bob.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX,myY,mySize,rollNumber;
	
	Die(int x, int y, int size) //constructor
	{
		myX = x;
		myY = y;
		mySize = size;
		rollNumber = 4;
	}
	void roll()
	{
		rollNumber = (int)(Math.random()*6)+1;
	}
	void show()
	{
		rectMode(CENTER);
		fill(255);
		rect(myX,myY,mySize,mySize,10);
		fill(0);
		if (rollNumber==1){
			rect(myX,myY,mySize/6,mySize/6,10);
		}else if (rollNumber==2) {
			rect(myX-mySize/5,myY,mySize/6,mySize/6,10);
			rect(myX+mySize/5,myY,mySize/6,mySize/6,10);
		}else if (rollNumber==3) {
			for (int i = -mySize/5;i < 2 * mySize/5;i += mySize/5) {
				rect(myX+i,myY+i,mySize/6,mySize/6,10);
			}
		}else if (rollNumber==4) {
			rect(myX-mySize/5,myY-mySize/5,mySize/6,mySize/6,10);
			rect(myX+mySize/5,myY-mySize/5,mySize/6,mySize/6,10);
			rect(myX-mySize/5,myY+mySize/5,mySize/6,mySize/6,10);
			rect(myX+mySize/5,myY+mySize/5,mySize/6,mySize/6,10);
		}else if (rollNumber==5) {
			
		}else if (rollNumber==6) {
			
		}
	}
}
