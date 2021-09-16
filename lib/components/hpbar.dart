import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class Hpbar extends PositionComponent {
  late Sprite sprite;
  double hp = 100.0;
  double width = 64.0;

  Hpbar(double hp) {
    this.hp = hp;
  }

  @override
  Future<void> onLoad() async {
    //todo
  }

  @override
  void render(Canvas canvas) {
    Rect hprect = Rect.fromLTWH(0, -11, hp*width/100.0, 10);
    Rect basehprect = Rect.fromLTWH(0, -11, width, 10);
    Rect pretty = Rect.fromLTWH(-1, -12, width+2, 12);
    canvas.drawRect(pretty, Paint()..color = Colors.black);
    canvas.drawRect(basehprect, Paint()..color = Colors.grey);
    canvas.drawRect(hprect, Paint()..color = Colors.green);

    super.render(canvas);
  }
}
