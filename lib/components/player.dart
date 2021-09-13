import 'package:flame/components.dart';
import 'package:flame/geometry.dart';

class Player extends SpriteComponent with Hitbox, Collidable {
  static double GRAVITY = 50;

  double speedY = 0.0;
  double speedX = 0.0;
  bool isOnGround = false;

  Player({
    Sprite? sprite,
    Vector2? position,
    Vector2? size,
  }) : super(sprite: sprite, position: position, size: size);

  @override
  void onMount() {
    super.onMount();
    final shape = HitboxPolygon([
      Vector2(0, 1),
      Vector2(1, 0),
      Vector2(0, -1),
      Vector2(-1, 0),
    ]);
    addShape(shape);
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, Collidable other) {
    isOnGround = true;
  }

  @override
  void update(double dt) {
    super.update(dt);

    //gravity changes
    if (isOnGround) {
      this.speedY = 0;
    } else {
      this.speedY += GRAVITY * dt;
      this.y += speedY + dt;
    }
  }
}
