// settings
int windowWidth = 600;
int windowHeight = 600;
int antiAliasing = 8;
color backgroundColor = color(0, 0, 0); // color(red, green, blue)
color pointColor = color(0, 100, 0); // color(red, green, blue)
int framesPerSecond = -1; // -1 for unlimited

// proceed with caution
double x = 0;
double y = 0;
float scale;
void settings()
{
  size(windowWidth, windowHeight);
}

void setup()
{
  scale = height / 10.7;
  smooth(antiAliasing);
  background(backgroundColor);
  stroke(pointColor);
  frameRate(framesPerSecond);
}

void draw()
{
  scale(1, -1);
  translate(width / 2, -height + .3 * scale);
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
