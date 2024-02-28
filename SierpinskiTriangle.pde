
public void setup()
{
  background(0,0,100);
  size(1000,1000);
 // phrogDraw(10,10,10);
  phrogDraw(0,1000,1);
  phrogDraw(-750,1000,1);
  phrogDraw(-500,1000,1);
  phrogDraw(-250,1000,1);
  phrogDraw(250,1000,1);
  phrogDraw(500,1000,1);
  phrogDraw(750,1000,1);
  phrogDraw(1000,1000,1);
}

public void phrogDraw(int x, int y, float len) 
{
  if (len>=50) //BASE CASE
  ellipse(0,0,0,0);
 else {
    phrog3((int)(x),(int)(y),len);
    phrogDraw(x+35,y-35,len + 1);   //RECURSIVE CALL
    
    
}
}


void phrog3(int x, int y, float z) {
  fill(204, 255, 204);
  strokeWeight(0);
  ellipse(x, y, 360/z, 300/z); //body
  fill(252, 255, 221); //belly
  ellipse(x, y, 220/z, 220/z);
  fill(204, 255, 204);
  ellipse(x - (90/z), y - (110/z), 100/z, 100/z); //left eye socket
  ellipse(x + (90/z), y - (110/z), 100/z, 100/z); //right eye socket

  strokeWeight(.5);
  arc(x - (70/z), y + (140/z), 60/z, 80/z, -20, 200, OPEN); //legs
  arc(x + (70/z), y + (140/z), 60/z, 80/z, -20, 200, OPEN);
  noFill();
  strokeWeight(.5);
  fill(204, 255, 204); //legs

  arc(x - (70/z), y, 60/z, 80/z, -20, 200, OPEN); //left arm
  arc(x + (70/z), y, 60/z, 80/z, -20, 200, OPEN); //right arm
  fill(0, 0, 0);
  ellipse(x - (94/z), y - (120/z), 40/z, 40/z); //left pupil
  ellipse(x + (94/z), y - (120/z), 40/z, 40/z); //right pupil
}
