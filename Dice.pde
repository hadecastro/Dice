
void setup()
{
	size(800, 900);
	noLoop();
}

void draw()
{
	int sum = 0;
	background(100);
	for(int x = 20; x < 780; x = x + 70)
	{
		for(int y = 10; y < 780; y = y + 70)
		{
		Die die1 = new Die(x, y);
		die1.show();
		sum = sum + die1.numDie;		
		}
	}

	textAlign(CENTER, CENTER);
	fill(0);
	textSize(90);
	text("Total: " + sum, 400, 830);
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
		numDie = (int)(Math.random()*6)+1;
	}

	void show()
	{
		fill(255);
		noStroke();
		rect(myX, myY, 60, 60, 10);
		if(numDie == 1)
		{
			fill((int)(Math.random()*256)+1, (int)(Math.random()*256)+1, (int)(Math.random()*256)+1);
			ellipse(myX + 30, myY + 30, 10, 10);
		}

		else if(numDie == 2)
		{
			fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
			ellipse(myX + 15, myY + 30, 10, 10);
			ellipse(myX + 45, myY + 30, 10, 10);
		}

		else if(numDie == 3)
		{
			fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
			ellipse(myX + 30, myY + 30, 10, 10);
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 45, myY + 45, 10, 10);
		}

		else if(numDie == 4)
		{
			fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 45, myY + 15, 10, 10);
			ellipse(myX + 15, myY + 45, 10, 10);
			ellipse(myX + 45, myY + 45, 10, 10);
		}

		else if(numDie == 5)
		{
			fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
			ellipse(myX + 30, myY + 30, 10, 10);
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 45, myY + 15, 10, 10);
			ellipse(myX + 15, myY + 45, 10, 10);
			ellipse(myX + 45, myY + 45, 10, 10);	
		}
		else
		{
			fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
			ellipse(myX + 15, myY + 30, 10, 10);
			ellipse(myX + 45, myY + 30, 10, 10);
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 45, myY + 15, 10, 10);
			ellipse(myX + 15, myY + 45, 10, 10);
			ellipse(myX + 45, myY + 45, 10, 10);
		}
	}
}