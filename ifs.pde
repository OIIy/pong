void ifs() {
  if (ballX < batX && ballY > batY && ballY < batY+batH) {
    print(" On the Left");
    distance = dist(ballX, ballY, batX, ballY);
    println(" Dist = ", distance);
    if (distance < ballR) {
      textSize(45);
      text("Hit +1", 230, 100);
      Score += scoreIncrease; //increase currentYear
      textSize(50);
      text(Score, 200, 300); //print the current year
    }
  } else if (ballX > batX+batW && ballY >batY && ballY  <batY+batH ) {
    print(" On the Right");
    distance = dist(ballX, ballY, batX+batW, ballY);
    println(" Dist = ", distance);
    if (distance < ballR) {
      textSize(45);
      text("Hit +1", 230, 100);
      Score += scoreIncrease; //increase currentYear
      textSize(50);
      text(Score, 200, 300); //print the current year
    }
  } else if (ballY < batY && ballX > batX && ballX < batX+batW) {
    print(" On the Top");
    distance = dist(ballX, ballY, ballX, batY);
    println(" Dist = ", distance);
    if (distance < ballR) {
      textSize(45);
      text("Hit +1", 230, 100);
      Score += scoreIncrease; //increase currentYear
      textSize(50);
      text(Score, 200, 300); //print the current year
    }
  } else if (ballY > batY+batH && ballX > batX && ballX <batX+batW) {
    print(" On the Bottom");
    distance = dist(ballX, ballY, ballX, batY+batH);
    println(" Dist = ", distance);
    if (distance < ballR) {
      textSize(45);
      text("Hit +1", 230, 100);
      Score += scoreIncrease; //increase currentYear
      textSize(50);
      text(Score, 200, 300); //print the current year
    }
  } else if (batY+batH > height) {
    batY = height-batH;
  }
  if (ballX < ballR || ballX > width-ballR) {
    speedX = speedX * -1;
  }
  if (ballY < ballR || ballY > height-ballR) {
    speedY = speedY * -1;
  }

  if (ballY >bat2Y && ballY < bat2Y+batH && ballX+ballR > bat2X) {
    speedX = speedX *-1;
  }
  if (ballY > batY && ballY < batY+batH && ballX-ballR < batX+batW) {
    speedX = speedX *-1;
  }
}
