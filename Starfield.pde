//your code here
void setup()
{
	//your code here
}
void draw()
{
	//your code here
}
class NormalParticle
{
	//your code here
}
interface Particle
{
	//your code here
	double myX, myY, NAngle, NSpeed;
	NColor;
	Particle(int x, int y)
	{
		myX=x;
		myY=y;
		NAngle=((Math.PI*2)*Math.random());
		NSpeed=Math.random()*2;
		NColor=color(x,y,x*y);
	}
	move()
	{
		Math.cos(NAngle)
	}


}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

