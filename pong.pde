float ballX = 0;
float ballY = 0;
float ballD = 20;
float ballR = ballD/2;

int Score;
int scoreIncrease;
int win;

float batW = 40;
float batH = 125;
float batX = 0 + 15;
float batY = 100;
float bat2X = 600 - batW - 15;
float bat2Y = 100;
float speedX = 3;
float speedY = 1;
float distance;

void setup() {
  size(600, 600);
  noStroke();
  ballX = width/2;
  ballY = height/2;
  Score = 0;
  scoreIncrease = 1;
  win = 10;
  
}
void draw() {
  background(0);
  batY = mouseY;
  ifs();
  drawShapes();
  
  ballX = ballX + speedX;
  ballY = ballY + speedY;
}
