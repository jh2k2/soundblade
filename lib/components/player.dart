import 'package:flame/components.dart';

class Player extends SpriteComponent {
  static double GRAVITY = 100;
  static double maxX = 0.0;
  static double maxY = 0.0;
  static double minX = 0.0;
  static double minY = 0.0;

  double speedY = 0.0;
  double speedX = 0.0;

  Player({
    Sprite? sprite,
    Vector2? position,
    Vector2? size,
  }) : super(sprite: sprite, position: position, size: size);

  @override
  void update(double dt) {
    super.update(dt);

    this.speedY += GRAVITY * dt;
    this.y += speedY + dt;
  }
}
