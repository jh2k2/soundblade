import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import './components/player.dart';
import './components/background.dart';
import 'package:flame_audio/flame_audio.dart';

class Soundblade extends BaseGame with HasCollidables {
  late Player _player;
  late Background background;

  bool _loaded = false;

  //Preload everything here(Asset, etc)
  @override
  Future<void> onLoad() async {
    //preload images
    await images.loadAll(['player.png', 'bg.png']);

    //music
    if (_loaded) {
      FlameAudio.bgm.play('bgm.wav', volume: 0.25);
      return;
    }
    _loaded = true;

    //bgm
    FlameAudio.bgm.initialize();
    await FlameAudio.bgm.load('bgm.wav');
    FlameAudio.bgm.play('bgm.wav', volume: 0.25);

    //bg
    background = Background(Sprite(images.fromCache('bg.png')));

    //player
    _player = Player(
        sprite: Sprite(images.fromCache('player.png')),
        size: Vector2(64, 64),
        position: Vector2(10, 10));

    //adding
    add(ScreenCollidable());
    add(_player);
  }

  @override
  void update(double dt) {
    super.update(dt);
  }

  @override
  void render(Canvas canvas) {
    background.render(canvas);
    super.render(canvas);
  }
}
