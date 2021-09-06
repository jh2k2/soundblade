import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:soundtrack/states/pause.dart';
import '../soundtrack.dart';

class Game extends StatelessWidget {
  const Game();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: <Widget>[
        Container(
          child: GameWidget(game: Soundtrack()),
        ),
        Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          SizedBox(
              width: MediaQuery.of(context).size.width / 10,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => Pause(),
                      ),
                    );
                  },
                  child: Icon(Icons.pause))),
        ])) 
      ])),
    );
  }
}
