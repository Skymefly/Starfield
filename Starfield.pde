//your code here
Particle [] NP;
void setup()
{
	//your code here
	size(400,400);
	NP = new Particle[1000];
	for (int i=2; i<NP.length; i++)
	{
		NP[i]=new NormalParticle();
	}
	NP[0]= new OddballParticle(200,200);
	NP[1]= new JumboParticle(200,200);
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
	int ran=1;
	NormalParticle()
	{
		myX=200;
		myY=200;
		NAngle=((Math.PI*2)*Math.random());
		NSpeed=Math.random()*2;
		ran=1;
		NColor=color(232,21,231);
		Size=2;
	}
	public void move()
	{
		myX=myX+(Math.cos(NAngle)*NSpeed);
		myY=myY+(Math.sin(NAngle)*NSpeed);
		if(myX<-10)
			{
				myX=mouseX;
				myY=mouseY;
				ran--;
				if(ran<1){ran=3;}
			}
		if(myX>410)
			{
				myX=mouseX;
				myY=mouseY;
				ran++;
				if(ran>5){ran=2;}
			}
		if(myY<-10)
			{
				myX=mouseX;
				myY=mouseY;
				ran--;
				if(ran<1){ran=5;}
			}
		if(myY>410)
			{
				myX=mouseX;
				myY=mouseY;
				ran++;
				if(ran>5){ran=4;}
			}
	}
	public void show()
	{

		fill(NColor);
		if(ran==1){
			NColor=color(232,21,231);
		}
		if(ran==2){
			NColor=color(100,241,23);
		}
		if(ran==3){
			NColor=color(221,121,23);
		}
		if(ran==4){
			NColor=color(22,211,231);
		}
		if(ran==5){
			NColor=color(174,153,199);
		}
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
	int Size1=3;
	OddballParticle(int x, int y)
	{
		myX1=x;
		myY1=y;
		NAngle1=((Math.PI*4)*Math.random());
		NSpeed1=((Math.PI*2)*Math.random());
		NColor1=color(255);
	}
	public void move()
	{
		myX1=myX1+(Math.cos(NAngle1)*NSpeed1*(Math.random()));
		myY1=myY1+(Math.sin(NAngle1)*NSpeed1*(Math.random()));
		if(myX1<0)
			{
				myX1=mouseX;
				myY1=mouseY;
			}
		if(myX1>400)
			{
				myX1=mouseX;
				myY1=mouseY;
			}
		if(myY1<0)
			{
				myX1=mouseX;
				myY1=mouseY;
			}
		if(myY1>400)
			{
				myX1=mouseX;
				myY1=mouseY;
			}
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
	JumboParticle(int x, int y) {
		Size=10;
	}
	public void show()
	{
		fill(NColor);
		if(ran==1){
			NColor=color(232,21,231);
		}
		if(ran==2){
			NColor=color(100,241,23);
		}
		if(ran==3){
			NColor=color(221,121,23);
		}
		if(ran==4){
			NColor=color(22,211,231);
		}
		if(ran==5){
			NColor=color(174,153,199);
		}
		noStroke();
		ellipse((float)myX, (float)myY, Size, Size);
	}
}

