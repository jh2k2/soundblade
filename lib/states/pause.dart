import 'package:flutter/material.dart';
import 'game.dart';
import 'mainmenu.dart';
import 'settings.dart';

class Pause extends StatelessWidget {
  const Pause();

   Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
                fit: BoxFit.fitWidth,
                child: Text('Paused', style: TextStyle(fontSize: 50, color: Colors.grey))),

            Padding(
                      padding: EdgeInsets.only(top: 40),
                    ),

            SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.height / 20,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const Game(),
                        ),
                      );
                    },
                    child: Text('Play'))),

            Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),

            SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.height / 20,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const MainMenu(),
                        ),
                      );
                    },
                    child: Text('MainMenu'))),

            Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),

            SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.height / 20,
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