import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import '../overlays/pausebutton.dart';
import '../overlays/pause.dart';
import '../soundblade.dart';

Soundblade _soundtrack = Soundblade();

class Game extends StatelessWidget {
  const Game();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GameWidget(
          game: _soundtrack,
          initialActiveOverlays: ["Pausebutton"],
          overlayBuilderMap: {
            "Pausebutton":(BuildContext context, Soundblade gameRef) => Pausebutton(gameRef: gameRef),
            "Pause":(BuildContext context, Soundblade gameRef) => Pause(gameRef: gameRef)
          }
        ),
      ),
    );
  }
}
