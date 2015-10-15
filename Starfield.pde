//your code here
Particle [] NP;
void setup()
{
	//your code here
	size(400,400);
	NP = new Particle[1000];
	for (int i=2; i<NP.length; i++)
	{
		NP[i]=new NormalParticle(200,200);
	}
	NP[0]= new OddballParticle(200,200);
	//NP[1]= new JumboParticle(200,200);
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
	int Size;
	NormalParticle(int x, int y)
	{
		myX=x;
		myY=y;
		NAngle=((Math.PI*2)*Math.random());
		NSpeed=Math.random()*2;
		NColor=color(232,21,231);
		Size=2;
	}
	public void move()
	{
		myX=myX+(Math.cos(NAngle)*NSpeed);
		myY=myY+(Math.sin(NAngle)*NSpeed);
	}
	public void show()
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
	double myX1, myY1, NAngle1, NSpeed1;
	color NColor1;
	int Size1=10;
	OddballParticle(int x, int y)
	{
		myX1=x;
		myY1=y;
		NAngle1=((Math.PI*4)*Math.random());
		NSpeed1=Math.random()*4;
		NColor1=color(255);
	}
	public void move()
	{
		myX1=myX1+(Math.cos(NAngle1)*NSpeed1);
		myY1=myY1+(Math.sin(NAngle1)*NSpeed1);
	}
	public void show()
	{

		fill(NColor1);
		noStroke();
		ellipse((float)myX1, (float)myY1, (float)Size1, (float)Size1);

	}
}
class JumboParticle extends NormalParticle //uses inheritance
{
	//your code here
	JumboParticle() {
		Size=20;
	}
	public void show()
	{
		fill(NColor);
		noStroke();
		ellipse((float)myX, (float)myY, Size, Size);
	}
}

