import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class Hpbar extends PositionComponent {
  late Sprite sprite;

  Hpbar(double health);

  @override
  Future<void> onLoad() async {
    print('working');
  }

  @override
  void render(Canvas canvas) {
    Rect rect = Rect.fromLTWH(0, -10, 100, 10);
    canvas.drawRect(rect, Paint()..color = Color(0xFFFF00FF));
    super.render(canvas);
  }
}
