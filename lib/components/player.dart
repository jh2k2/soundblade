import 'package:flame/components.dart';
import 'package:flame/game.dart';

class Player extends SpriteComponent {
  static double GRAVITY = 50;
  static double maxX = 1000.0;
  static double maxY = 0;
  static double minX = 0.0;
  static double minY = 700;

  double speedY = 0.0;
  double speedX = 0.0;
  double direction = 1;

  Player({
    Sprite? sprite,
    Vector2? position,
    Vector2? size,
  }) : super(sprite: sprite, position: position, size: size);

  void move() {
    this.speedY = -3;
    this.speedX = 3 * this.direction;
    GRAVITY = 0;
  }

  void drop() {
    GRAVITY = 50;
  }

  void flip() {
    this.direction = -this.direction;
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
    if (this.y <= maxY) {
      this.speedY = 0;
      this.y = maxY;
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
