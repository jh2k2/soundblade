import 'package:flutter/material.dart';
import 'mainmenu.dart';

class Ending extends StatelessWidget {
  const Ending();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('End Screen', style: TextStyle(fontSize: 30)),
            Padding(
              padding: EdgeInsets.only(top: 50),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.height / 6,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainMenu(),
                        ),
                      );
                    },
                    child: Text(
                      'Main Menu',
                      style: TextStyle(fontSize: 30),
                    ))),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.height / 6,
                child: ElevatedButton(
                    onPressed: () {
                      /* do something */
                    },
                    child: Text(
                      'Share',
                      style: TextStyle(fontSize: 30),
                    ))),
          ],
        ),
      ),
    );
  }
}
