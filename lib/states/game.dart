import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import '../soundtrack.dart';

class Game extends StatelessWidget {
  const Game();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GameWidget(
          game: Soundtrack()
        ),
      ),
    );
  }
}
