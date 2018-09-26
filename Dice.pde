void setup()
{
	noLoop();
	size(600, 700);
	rectMode(CENTER);
	textSize(25);
	textAlign(CENTER);
}
void draw()
{
	background(197);
	int totalSum = 0;
	for (int y = 10; y < 600; y += 20) {
		for (int x = 10; x < 600; x += 20) {
			Die bob = new Die(x, y, 20);
			bob.roll();
			bob.show();
			totalSum += bob.rollNumber;
		}
	}
	text("Total Sum Of 900 Dice: " + totalSum, 300, 650);
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
		rollNumber = 1;
	}
	void roll()
	{
		rollNumber = (int)(Math.random()*6)+1;
	}
	void show()
	{
		//fill(255);
		fill((int)(Math.random()*256+1), (int)(Math.random()*256+1), (int)(Math.random()*256+1));
		rect(myX,myY,mySize,mySize);
		fill(0);
		if (rollNumber==1){
			rect(myX,myY,mySize/6,mySize/6);
		}else if (rollNumber==2) {
			rect(myX-mySize/5,myY,mySize/6,mySize/6);
			rect(myX+mySize/5,myY,mySize/6,mySize/6);
		}else if (rollNumber==3) {
			for (int i = -mySize/5;i < 2 * mySize/5;i += mySize/5) {
				rect(myX+i,myY+i,mySize/6,mySize/6);
			}
		}else if (rollNumber==4) {
			rect(myX-mySize/5,myY-mySize/5,mySize/6,mySize/6);
			rect(myX+mySize/5,myY-mySize/5,mySize/6,mySize/6);
			rect(myX-mySize/5,myY+mySize/5,mySize/6,mySize/6);
			rect(myX+mySize/5,myY+mySize/5,mySize/6,mySize/6);
		}else if (rollNumber==5) {
			rect(myX-mySize/5,myY-mySize/5,mySize/6,mySize/6);
			rect(myX+mySize/5,myY-mySize/5,mySize/6,mySize/6);
			rect(myX-mySize/5,myY+mySize/5,mySize/6,mySize/6);
			rect(myX+mySize/5,myY+mySize/5,mySize/6,mySize/6);
			rect(myX,myY,mySize/6,mySize/6);
		}else if (rollNumber==6) {
			rect(myX-mySize/5,myY-mySize/6,mySize/7,mySize/7);
			rect(myX+mySize/5,myY-mySize/6,mySize/7,mySize/7);
			rect(myX-mySize/5,myY+mySize/6,mySize/7,mySize/7);
			rect(myX+mySize/5,myY+mySize/6,mySize/7,mySize/7);
			rect(myX,myY-mySize/6,mySize/7,mySize/7);
			rect(myX,myY+mySize/6,mySize/7,mySize/7);
		}
	}
}
