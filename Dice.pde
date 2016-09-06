int numDie = 1;
void setup()
{
	size(500, 500);
	noLoop();
}
void draw()
{
	Die die1 = new Die(250, 250);
	die1.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
		
	}
	void show()
	{
		rect(myX, myY, 50, 50);
		if(numDie == 1)
		{
			fill(0);
			ellipse(myX + 25, myY + 25, 10, 10);
		}

		else if(numDie == 2)
		{
			
		}
	}
}
