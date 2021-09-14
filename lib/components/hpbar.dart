import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class Hpbar extends PositionComponent {
  late Sprite sprite;
  double hp = 100.0;

  Hpbar(double hp) {
    this.hp = hp;
  }

  @override
  Future<void> onLoad() async {
    //todo
  }

  @override
  void render(Canvas canvas) {

    Rect hprect = Rect.fromLTWH(0, -10, hp, 10);
    Rect basehprect = Rect.fromLTWH(0, -10, 100, 10);
    canvas.drawRect(basehprect, Paint()..color = Colors.grey);
    canvas.drawRect(hprect, Paint()..color = Colors.red);

    super.render(canvas);
  }
}
