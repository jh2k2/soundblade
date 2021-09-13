import 'package:flame/layers.dart';
import 'package:flame/sprite.dart';
import 'package:flame/game.dart';

class Background extends PreRenderedLayer {
  final Sprite sprite;
  Background(this.sprite);

  @override
  void drawLayer() {
    sprite.render(canvas, position: Vector2(0, 0), size: Vector2(1000, 1000));
  }
}
