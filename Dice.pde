int ellipseAmount = 0;

void setup()
{
  size(400, 400);
  noLoop();
}
void draw()
{
clear();
for(int dieX = 25; dieX <= 350; dieX+=60)
{
for(int dieY = 25; dieY <= 350; dieY+=60)
{
Die myDie = new Die(dieX, dieY);
myDie.show();
}
}
float dieAverage = ellipseAmount/36;
fill(255);
text("Sum of die = " + ellipseAmount, 25, 20);
fill(255);
text("Total running average = " + dieAverage, 125, 20);
}
void mousePressed()
{
  redraw();
}
class Die
{
int myX;
int myY;
int dieWidth;
int ellipseSize;
  
Die(int x, int y)
{
myX = x;
myY = y;
dieWidth = 50;
ellipseSize = 14;
}
  
void show()
{
fill(255);
rect(myX, myY, dieWidth, dieWidth);
drawEllipse(myX, myY, (int)(Math.random()*6+1));
System.out.println("showed");
}
  
void drawEllipse(int myX, int myY, int numEllipse)
{
fill(0);
ellipseAmount += numEllipse;
if(numEllipse == 1)
{
  ellipse(myX+(dieWidth/2), myY+(dieWidth/2), ellipseSize, ellipseSize);
}
else if(numEllipse == 2)
{
  ellipse(myX+(dieWidth/4), myY+(dieWidth/4), ellipseSize, ellipseSize);
  ellipse(myX+(3*dieWidth/4), myY+(3*dieWidth/4), ellipseSize, ellipseSize);
}
else if(numEllipse == 3)
{
  ellipse(myX+(dieWidth/4), myY+(dieWidth/4), ellipseSize, ellipseSize);
  ellipse(myX+(dieWidth/2), myY+(dieWidth/2), ellipseSize, ellipseSize);
  ellipse(myX+(3*dieWidth/4), myY+(3*dieWidth/4), ellipseSize, ellipseSize);
}
else if(numEllipse == 4)
{
  ellipse(myX+(dieWidth/4), myY+(dieWidth/4), ellipseSize, ellipseSize);
  ellipse(myX+(3*dieWidth/4), myY+(dieWidth/4), ellipseSize, ellipseSize);
  ellipse(myX+(dieWidth/4), myY+(3*dieWidth/4), ellipseSize, ellipseSize);
  ellipse(myX+(3*dieWidth/4), myY+(3*dieWidth/4), ellipseSize, ellipseSize);
}
else if(numEllipse == 5)
{
  ellipse(myX+(dieWidth/4), myY+(dieWidth/4), ellipseSize, ellipseSize);
  ellipse(myX+(3*dieWidth/4), myY+(dieWidth/4), ellipseSize, ellipseSize);
  ellipse(myX+(dieWidth/2), myY+(dieWidth/2), ellipseSize, ellipseSize);
  ellipse(myX+(dieWidth/4), myY+(3*dieWidth/4), ellipseSize, ellipseSize);
  ellipse(myX+(3*dieWidth/4), myY+(3*dieWidth/4), ellipseSize, ellipseSize);
}
else if(numEllipse == 6)
{
  ellipse(myX+(1*dieWidth/5), myY+(1*dieWidth/5), ellipseSize, ellipseSize);
  ellipse(myX+(dieWidth/5), myY+(dieWidth/2), ellipseSize, ellipseSize);
  ellipse(myX+(dieWidth/5), myY+(4*dieWidth/5), ellipseSize, ellipseSize);
  ellipse(myX+(4*dieWidth/5), myY+(1*dieWidth/5), ellipseSize, ellipseSize);
  ellipse(myX+(4*dieWidth/5), myY+(dieWidth/2), ellipseSize, ellipseSize);
  ellipse(myX+(4*dieWidth/5), myY+(4*dieWidth/5), ellipseSize, ellipseSize);
      
   }
 }
}
