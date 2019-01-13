int xPos, yPos;
int wPoint = 13;
int myPos;
PFont font;
void setup()
{
  size(800, 800);
  background(0);
  font = createFont("Courier New", 12, true);
  textFont(font, 66);
}
void draw()
{

  xPos = constrain(mouseX, 0, 125);
  yPos = constrain(mouseY, 0, 255);
  myPos = int(map(xPos, 0, 125, 0, 15));
  int s = second() * 2;

  background(0);  
  rectMode(CENTER);
  smooth();
  stroke(144, 144, 144, 130 + xPos);
  strokeWeight(8 + myPos);


  // Vertikale Linien
  for(int x = 50; x <= 750; x += 50)
    line(x, 0, x, height);
  

  // Horizontale Linien
  for(int y = 50; y <= 750; y += 50)
    line(0, y, width, y);

  
  //weiße Punkte
  //stroke(255, 255, 255, yPos);
  if (s > 60 ) 
  {
    stroke(255 - s);
    strokeWeight((yPos/11)+ s/2);
  }
  else  
  {
    stroke(255 - yPos );
    strokeWeight(13);
  }
  for(int x = 50; x <= 750; x += 50)
    for( int y = 50; y <= 750; y +=50) 
      point(x , y);
  
  
  if (s > 85 ) 
    {
      fill (194 - (s + 50));
      text("Achtung Illusion!", 50, 300);
    }
  
  if (s > 115) 
    {
      fill (#505050);
      text("3..2..1.. Neustart!", 30, 400);
    }
}
