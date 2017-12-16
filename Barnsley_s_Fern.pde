double x = 0;
double y = 0;
int scale = 98;
int count = 0;


void setup()
{
  size(1000, 1000);
  frameRate(-1);
  background(0);
  smooth(8);
  stroke(0,100,0);
}

void draw()
{
  translate(width / 2, height - 10);
  rotate(PI);
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
    y = 0.26 * tempX + 0.24 * y + 1.6;
  } else
  {
    x = 0.2 * x - 0.26 * y;
    y = 0.23 * tempX + 0.2 * y + 0.44;
  }
  point((float)x*scale, (float)y*scale);
  if(frameCount % 100 == 0)
    saveFrame("Frames/" + count++ + ".png");
    
 if(count >= 600)
   exit();
}