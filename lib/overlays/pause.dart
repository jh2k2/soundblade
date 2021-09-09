import 'package:flutter/material.dart';
import '../soundblade.dart';

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
              gameRef.overlays.remove("Pause");
              gameRef.overlays.add("Pausebutton");
            },
            child: Text('Resume'),
          ),
        ),
      ],
    ));
  }
}
