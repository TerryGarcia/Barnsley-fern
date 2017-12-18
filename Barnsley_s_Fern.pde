double x = 0;
double y = 0;
float scale;
int count = 0;


void setup()
{
  size(1000, 1000);
  scale = height / 10.7;
  frameRate(-1);
  background(0);
  smooth(8);
  stroke(0, 100, 0);
}

void draw()
{
  scale(1, -1);
  translate(width / 2, -height + 35);
  int random = (int)random(101);
  double tempX = x;
  if (random < 3)
  {
    x = 0;
    y *= 0.16;
  } else if (random < 76)
  {
    x = 0.85 * x + 0.04 * y;
    y = -0.04 * tempX + 0.85 * y + 1.6;
  } else if (random < 89)
  {
    x = -0.15 * x + 0.28 * y;
    y = 0.26 * tempX + 0.24 * y + 0.44;
  } else
  {
    x = 0.2 * x - 0.26 * y;
    y = 0.23 * tempX + 0.22 * y + 1.6;
  }
  point((float)x*scale, (float)y*scale);
}
