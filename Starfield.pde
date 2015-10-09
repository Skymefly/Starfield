//your code here
NormalParticle [] NP;
void setup()
{
	//your code here
	size(400,400);
	NP = new NormalParticle[1000];
	for (int i=0; i<NP.length; i++)
	{
		NP[i]=new NormalParticle(200,200);
	}
}
void draw()
{
	//your code here
	background(0);
	for(int i=0; i<NP.length; i++)
	{
		//NP=new NormalParticle(200,200);
		NP[i].move();
		NP[i].show();
	}
}
class NormalParticle
{
	//your code here
	double myX, myY, NAngle, NSpeed;
	color NColor;
	int Size=2;
	NormalParticle(int x, int y)
	{
		myX=x;
		myY=y;
		NAngle=((Math.PI*2)*Math.random());
		NSpeed=Math.random()*2;
		NColor=color(x,y,y);
	}
	void move()
	{
		myX=myX+(Math.cos(NAngle)*NSpeed);
		myY=myY+(Math.sin(NAngle)*NSpeed);
	}
	void show()
	{
		
		while(Size=2; myX-- || myX++ || myY++ || myY--; Size+=0.01)
		{
			fill(NColor);
		noStroke();
		ellipse((float)myX, (float)myY, (float)Size, (float)Size);
		}
	}


}
interface Particle
{
	//your code here
	public void move();

}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

