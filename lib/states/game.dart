import 'package:flutter/material.dart';
import 'mainmenu.dart';

class Game extends StatelessWidget {
  const Game();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Play State'),
            SizedBox(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const MainMenu(),
                        ),
                      );
                    },
                    child: Text('Play')))
          ],
        ),
      ),
    );
  }
}
