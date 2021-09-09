import 'package:flame/game.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import '../soundblade.dart';

class Pausebutton extends StatelessWidget {
  final Soundblade gameRef;

  const Pausebutton({Key? key, required this.gameRef}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: TextButton(
          child: Icon(
            Icons.pause_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            gameRef.pauseEngine();
            FlameAudio.bgm.pause();
            gameRef.overlays.remove("Pausebutton");
            gameRef.overlays.add("Pause");
          },
        ));
  }
}
