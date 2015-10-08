//your code here
NormalParticle NP;
void setup()
{
	//your code here
	size(400,400);
	//NP = new NormalParticle[100];
	//for (int i=0; i<NP.length; i++)
	//{
	//	NP[i]=new NormalParticle(200,200);
	//}
}
void draw()
{
	//your code here
	background(0);
	//for(int i=0; i<NP.length; i++)
	//{
		NP=new NormalParticle(200,200);
		NP.move();
		NP.show();
	//}
}
class NormalParticle
{
	//your code here
	double myX, myY, NAngle, NSpeed;
	color NColor;
	NormalParticle(int x, int y)
	{
		myX=x;
		myY=y;
		NAngle=((Math.PI*2)*Math.random());
		NSpeed=Math.random()*2;
		NColor=color(x,y,x*y);
	}
	void move()
	{
		myX=myX+(Math.cos(NAngle)*NSpeed);
		myY=myY+(Math.sin(NAngle)*NSpeed);
	}
	void show()
	{
		fill(NColor);
		ellipse((float)myX, (float)myY, (float)10, (float)10);
		/*
		strokeWeight(3);
	    point((int)myX, (int)myY);
	    strokeWeight(2);
	    line(myX-0.5, myY+13, myX-0.5, myY-13);
	    line(myX-13, myY-0.5, myX+13, myY-0.5);
	    line(myX-6, myY+-7.4, myX+7, myY+7.1);
	    line(myX+6, myY+-7.4, myX-7, myY+7.1);
	    line(myX+10, myY-4.3, myX+10, myY+4.3);
	    line(myX-10, myY-4.3, myX-10, myY+4.3);
	    line(myX-4, myY+-10, myX+3, myY-10);
	    line(myX-4, myY+11, myX+3, myY+11);
	    */
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

