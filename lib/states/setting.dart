import 'package:flutter/material.dart';
import 'mainmenu.dart';

class Setting extends StatelessWidget {
  const Setting();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Setting Page'),
            SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const MainMenu(),
                        ),
                      );
                    },
                    child: Text('Back'))),
          ],
        ),
      ),
    );
  }
}
