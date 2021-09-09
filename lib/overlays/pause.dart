import 'package:flutter/material.dart';
import 'package:flame_audio/flame_audio.dart';
import '../soundblade.dart';
import '../states/mainmenu.dart';

class Pause extends StatelessWidget {
  final Soundblade gameRef;

  const Pause({Key? key, required this.gameRef}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 3,
          child: ElevatedButton(
            onPressed: () {
              gameRef.resumeEngine();
              FlameAudio.bgm.resume();
              gameRef.overlays.remove("Pause");
              gameRef.overlays.add("Pausebutton");
            },
            child: Text('Resume'),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 3,
          child: ElevatedButton(
            onPressed: () {
              gameRef.overlays.remove("Pause");
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const MainMenu(),
                ),
              );
            },
            child: Text('Main Menu'),
          ),
        ),
      ],
    ));
  }
}
