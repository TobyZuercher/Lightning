void setup()
{
  size(600,600);
  colorMode(HSB, 360, 100, 100, 100);
  strokeWeight(2);
  background(0, 0, 0);
  fill(0, 0, 0, 3);
}

int x = 0;
int y = 300;
boolean xBounce = false;
boolean yBounce = false;

void draw()
{
  int randCol = (int)(Math.random() * 40 + 220);
  rect(-10, -10, 620, 620);
  int newX;
  if(xBounce == false) newX = x + (int)(Math.random() * 20);
  else newX = x - (int)(Math.random() * 20);
  int newY;
  if(yBounce == false) newY = y + (int)(Math.random() * 20 - 6);
  else newY = y + (int)(Math.random() * 20 - 14);
  stroke(randCol, 100, 100, 100);
  strokeWeight(2);
  line(x, y, newX, newY);
  stroke(randCol, 75, 75);
  strokeWeight(1);
  line(x, y-3, newX, newY-3);
  line(x, y+3, newX, newY+3);
  if(x > 600) xBounce = true;
  if(x < 0) xBounce = false;
  if(y > 600) yBounce = true;
  if(y < 0) yBounce = false;
  x = newX;
  y = newY;
}

void mousePressed()
{
  if(xBounce == true) xBounce = false;
  else xBounce = true;
}
