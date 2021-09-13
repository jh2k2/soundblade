import 'package:flame/components.dart';

class Player extends SpriteComponent {
  static double GRAVITY = 50;
  static double maxX = 1700.0;
  static double maxY = 0.0;
  static double minX = 0.0;
  static double minY = 750.0;

  double speedY = 0.0;
  double speedX = 0.0;

  Player({
    Sprite? sprite,
    Vector2? position,
    Vector2? size,
  }) : super(sprite: sprite, position: position, size: size);

  void move() {
    this.speedY = -10;
    this.speedX = 10;
  }

  void flip() {
    this.speedY = -5;
    this.speedX = -this.speedX;
  }

  @override
  void update(double dt) {
    super.update(dt);

    this.speedY += GRAVITY * dt;
    this.y += speedY + dt;
    this.x += speedX + dt;

    
    if (this.y >= minY) {
      this.speedX = 0;
      this.speedY = 0;
      this.y = minY;
    }

    if (this.x <= minX) {
      this.speedX = 0;
      this.x = minX;
    }

    if (this.x >= maxX) {
      this.speedX = 0;
      this.x = maxX;
    }
  }
}
