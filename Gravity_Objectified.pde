/* 
 * Title: Gravity
 * Description: A wonky gravity simulator
 * Author: Drake Cummings
 * Date: August 15th, 2019
 */

Ball ball = new Ball();

void setup() {
  size(1500,1000);
  frameRate(60);
  background(51);
}

void mousePressed() {
  // Every time the mouse is clicked, another ball object is instantiated and added to the objects array
  balls.add(new Ball());
}

void draw() {
  background(51);
  // Draw balls to the screen
  ball.DrawBalls();
  // Apply Gravity and speed calculations
  ball.ApplyGravity();
}

// 4. Comments
