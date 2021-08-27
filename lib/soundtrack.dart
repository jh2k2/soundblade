import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'components/player.dart';

class Soundtrack extends BaseGame {

  //Preload everything here(Asset, etc)
  @override
  Future<void> onLoad() async {
    final sprite = await Sprite.load('player.png');

    //Player
    Player player = Player(
        sprite: sprite, size: Vector2(64, 64), position: Vector2(10, 10));
    add(player);
  }
}
