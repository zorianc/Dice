int amountDice = 15;
int sizeDie;
int sum = 0;
void setup()
{
  noLoop();

  size(500, 500);
}
void draw()
{
  sum = 0;
  sizeDie = width/amountDice;
  background(50);
  for (int i = 1; i <= amountDice; i ++)
  {
    for (int j = 1; j <= amountDice; j ++)
    {
      Die diceOne = new Die(i * sizeDie - sizeDie/2, j * sizeDie - sizeDie/2, sizeDie);
      diceOne.roll();
      diceOne.show();
      sum += diceOne.getVal();
    }
  }
  textSize(25);
  fill(255, 100, 180);
  text("Sum of Dice = " + sum, 0, 50);
  text("Running Average = " + sum/amountDice, 0, 25);
}
void mousePressed()
{
  redraw();
}

class Die
{
  private int num;
  private int x;
  private int y;
  private int size;
  private int cSize;

  Die(int x, int y, int size)
  {
    this.x = x;
    this.y = y;
    this.size = size;
    this.cSize = size/4;
  }
  void roll()
  {

    this.num = (int) ((Math.random() * 6) + 1);
  }
  void show()
  {
    fill(255);
    rectMode(CENTER);
    rect(x, y, size, size, size/10);
    fill(5);
    if (num % 2 == 1)
    {
      ellipse(x, y, cSize, cSize);
    }
    if (num != 1)
    {
      ellipse(x - cSize, y - cSize, cSize, cSize);
      ellipse(x + cSize, y + cSize, cSize, cSize);
    }
    if (num >= 4)
    {
      ellipse(x + cSize, y - cSize, cSize, cSize);
      ellipse(x - cSize, y + cSize, cSize, cSize);
    }
    if (num == 6)
    {
      ellipse(x - cSize, y, cSize, cSize);
      ellipse(x + cSize, y, cSize, cSize);
    }
  }
  int getVal()
  {
    return this.num;
  }
}
