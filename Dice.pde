
void setup()
{
	size(500, 500);
	noLoop();
}
void draw()
{
	Die die1 = new Die(diceX, dieY);
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
	int numDie;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		//your code here
		numDie = (int)(Math.random()*7);
	}

	void show()
	{
		fill(255);
		noStroke();
		rect(myX, myY, 60, 60, 10);
		if(numDie == 1)
		{
			fill(0);
			ellipse(myX + 30, myY + 30, 10, 10);
		}

		else if(numDie == 2)
		{
			fill(0);
			ellipse(myX + 15, myY + 30, 10, 10);
			ellipse(myX + 45, myY + 30, 10, 10);
		}

		else if(numDie == 3)
		{
			fill(0);
			ellipse(myX + 30, myY + 30, 10, 10);
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 45, myY + 45, 10, 10);
		}

		else if(numDie == 4)
		{
			fill(0);
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 45, myY + 15, 10, 10);
			ellipse(myX + 15, myY + 45, 10, 10);
			ellipse(myX + 45, myY + 45, 10, 10);
		}

		else if(numDie == 5)
		{
			fill(0);
			ellipse(myX + 30, myY + 30, 10, 10);
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 45, myY + 15, 10, 10);
			ellipse(myX + 15, myY + 45, 10, 10);
			ellipse(myX + 45, myY + 45, 10, 10);	
		}
		else
		{
			fill(0);
			ellipse(myX + 15, myY + 30, 10, 10);
			ellipse(myX + 45, myY + 30, 10, 10);
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 45, myY + 15, 10, 10);
			ellipse(myX + 15, myY + 45, 10, 10);
			ellipse(myX + 45, myY + 45, 10, 10);
		}
	}
}
