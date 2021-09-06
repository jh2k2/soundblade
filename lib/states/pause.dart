import 'package:flutter/material.dart';
import 'game.dart';
import 'settings.dart';

class Pause extends StatelessWidget {
   Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Soundtrack'),
            SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const Game(),
                        ),
                      );
                    },
                    child: Text('Play'))),
            SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const Settings(),
                        ),
                      );
                    },
                    child: Text('Setting'))),
          ],
        ),
      ),
    );
  }

}