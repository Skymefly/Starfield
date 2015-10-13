//your code here
Particle [] NP;
void setup()
{
	//your code here
	size(400,400);
	NP = new Particle[1000];
	for (int i=0; i<NP.length; i++)
	{
		NP[i]=new NormalParticle(200,200);
	}
	NP[0]= new OddballParticle();
}
void draw()
{
	//your code here
	background(0);
	for(int i=0; i<NP.length; i++)
	{
		NP[i].move();
		NP[i].show();
	}
}
class NormalParticle implements Particle
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
		NColor=color(Math.random(),Math.random(),Math.random());
	}
	void move()
	{
		myX=myX+(Math.cos(NAngle)*NSpeed);
		myY=myY+(Math.sin(NAngle)*NSpeed);
	}
	void show()
	{

		fill(NColor);
		noStroke();
		ellipse((float)myX, (float)myY, (float)Size, (float)Size);
	}
}
interface Particle
{
	//your code here
	public void move();
	public void show();

}
class OddballParticle implements Particle //uses an interface
{
	//your code here
	double myX, myY, NAngle, NSpeed;
	color NColor;
	int Size=5;
	OddballParticle(int x, int y)
	{
		myX=x;
		myY=y;
		NAngle=((Math.PI*4)*Math.random());
		NSpeed=Math.random()*4;
		NColor=color(y,x,y);
	}
	void move()
	{
		myX=myX+(Math.cos(NAngle1)*NSpeed1);
		myY=myY+(Math.sin(NAngle1)*NSpeed1);
	}
	void show()
	{

		fill(NColor);
		noStroke();
		ellipse((float)myX, (float)myY, (float)Size, (float)Size);

	}
}
class JumboParticle //uses inheritance
{
	//your code here
}

