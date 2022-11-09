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

