import 'package:flutter/material.dart';
import 'game.dart';
import 'settings.dart';

class MainMenu extends StatelessWidget {
  const MainMenu();

  @override
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Game(),
                        ),
                      );
                    },
                    child: Text('Play'))),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Setting(),
                        ),
                      );
                    },
                    child: Text('Settings'))),
          ],
        ),
      ),
    );
  }
}
