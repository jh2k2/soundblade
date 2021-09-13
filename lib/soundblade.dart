import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import 'components/player.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flame/gestures.dart';

class Soundblade extends BaseGame with TapDetector{
  late Player _player;
  bool _loaded = false;

  //Preload everything here(Asset, etc)
  @override
  Future<void> onLoad() async {
    if (_loaded) {
      FlameAudio.bgm.play('bgm.wav', volume: 0.25);
      return;
    }
    _loaded = true;

    //bgm
    FlameAudio.bgm.initialize();
    await FlameAudio.bgm.load('bgm.wav');
    FlameAudio.bgm.play('bgm.wav', volume: 0.25);

    //player
    final sprite = await Sprite.load('player.png');

    _player = Player(
        sprite: sprite, size: Vector2(64, 64), position: Vector2(10, 10));
    add(_player);
  }

  @override
  void onTapDown(TapDownInfo event) {
    print("Player tap down on ${event.eventPosition.game}");
    _player.move();
  }

  @override
  void onTapUp(TapUpInfo event) {
    print("Player tap up on ${event.eventPosition.game}");
  }

  @override
  void update(double dt) {
    super.update(dt);
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
  }
}
