import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import '../overlays/pausebutton.dart';
import '../overlays/pause.dart';
import '../soundtrack.dart';

Soundtrack _soundtrack = Soundtrack();

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
            "Pausebutton":(BuildContext context, Soundtrack gameRef) => Pausebutton(gameRef: gameRef),
            "Pause":(BuildContext context, Soundtrack gameRef) => Pause(gameRef: gameRef)
          }
        ),
      ),
    );
  }
}
