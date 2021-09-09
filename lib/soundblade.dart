import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import 'components/player.dart';

class Soundblade extends BaseGame {
  late Player _player;

  //Preload everything here(Asset, etc)
  @override
  Future<void> onLoad() async {
    final sprite = await Sprite.load('player.png');

    //Player
    _player = Player(
        sprite: sprite, size: Vector2(64, 64), position: Vector2(10, 10));
    add(_player);
  }

  @override
  void update(double dt) {
    //reupdates required
    super.update(dt);
  }

  @override
  void render(Canvas canvas) {
    //reupdates required
    super.render(canvas);
  }
}
