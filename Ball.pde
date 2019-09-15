ArrayList<Ball> balls = new ArrayList<Ball>();

class Ball {
  float xPos = mouseX;
  float yPos = mouseY;
  int ballSize = 20;
  int gravitySpeed = 5;
  
  void DrawBalls() {
    // Iterates through the object array and draws each ball based in its xPos and yPos fields
    for (int i = 0; i < balls.size(); i++) {
      ellipse(balls.get(i).xPos, balls.get(i).yPos, ballSize, ballSize);
    }
  }
  
  void ApplyGravity() {
    for (int i = 0; i < balls.size(); i++) {
      // Compares the current object with every object in the array, setting it's gracitySpeed to 0 if the borders touch
      for( int j = 0; j < balls.size(); j++) {
        if (balls.get(i).yPos + ballSize/2 == balls.get(j).yPos-ballSize/2 && balls.get(i).xPos == balls.get(j).xPos) {
          balls.get(i).gravitySpeed = 0;
        }
      }
      // Applies the object's gravity speed to its position if it's not at the bottom of the screen
      if (balls.get(i).yPos < height - ballSize/2) {
        balls.get(i).yPos += balls.get(i).gravitySpeed;
      }
    }
  }
}
