import 'package:flutter/material.dart';
import 'game.dart';
import 'settings.dart';
// import 'endscreen.dart';

class MainMenu extends StatelessWidget {
  const MainMenu();

  @override
  Widget build(BuildContext context) {
    int buttonSize = 6;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
                fit: BoxFit.fitWidth,
                child: Text('SoundTrack', style: TextStyle(fontSize: 50))),
            Padding(
              padding: EdgeInsets.only(top: 50),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.height / buttonSize,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Game(),
                        ),
                      );
                    },
                    child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'Play',
                          style: TextStyle(fontSize: 30),
                        )))),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.height / buttonSize,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Settings(),
                        ),
                      );
                    },
                    child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'Settings',
                          style: TextStyle(fontSize: 30),
                        )))),
            // Padding(
            //   padding: EdgeInsets.only(top: 10),
            // ),
            // SizedBox(
            //     width: MediaQuery.of(context).size.width / 3,
            //     height: MediaQuery.of(context).size.height / buttonSize,
            //     child: ElevatedButton(
            //         onPressed: () {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //               builder: (context) => const Ending(),
            //             ),
            //           );
            //         },
            //         child: Text(
            //           'Ending',
            //           style: TextStyle(fontSize: 30),
            //         ))),
          ],
        ),
      ),
    );
  }
}
