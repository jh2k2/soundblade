import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:soundtrack/states/settings.dart';
import '../soundtrack.dart';

class Game extends StatelessWidget {
  const Game();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // it was causing issues :(
      // body: Center(
      //   child: Column(children: <Widget>[
      //   Container(
      //     child: GameWidget(game: Soundtrack()),
      //   ), 
      // ])),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Settings(), // change it to be to pause state later
            ),
            );
        },
        child: Icon(
          Icons.pause,
          size: 40,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
