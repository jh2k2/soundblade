import 'package:flutter/material.dart';
import 'mainmenu.dart';

// Code to make the sliders work
// might move to new file?
class VolumeSlider extends StatefulWidget {
  const VolumeSlider({Key? key}) : super(key: key);

  @override
  State<VolumeSlider> createState() => _MySlider();
}

class _MySlider extends State<VolumeSlider> {
  double _currentSliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      min: 0,
      max: 100,
      divisions: 100,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  }
}

// main settings page
// this thing is kinda chonky but its basically 3 sections:
//  1. app bar (thing at top)
//  2. buttons and sliders (super repetitive prb a better way to do it, do help)
//  3. button at the top that goes back
class Setting extends StatelessWidget {
  const Setting();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1.
      // top label that just says "Settings"
      appBar: new AppBar(
        leading: new Container(),
        title: new Text(
          'Settings',
          style: TextStyle(color: Colors.blue),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),

      // 2.
      // actual settings
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Padding to make it look nice
            Padding(
              padding: EdgeInsets.only(top: 50),
            ),

            // Master Volume label + slider
            Text('Master Volume'),
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              height: 50,
              child: const VolumeSlider(),
            ),

            // Padding to make it look nice
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),

            // bg music label + slider
            Text('Background Music'),
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              height: 50,
              child: const VolumeSlider(),
            ),

            // Padding to make it look nice
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),

            // SFX label + slider
            Text('SFX'),
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              height: 50,
              child: const VolumeSlider(),
            ),

            // Padding to make it look nice
            Padding(
              padding: EdgeInsets.only(top: 25),
            ),

            // example button
            SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {/* do something */},
                    child: Text('some setting'))),

            // Padding to make it look nice
            Padding(
              padding: EdgeInsets.only(top: 25),
            ),

            // example button
            SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {/* do something */},
                    child: Text('some setting'))),
          ],
        ),
      ),

      // 3.
      // something that took way too much code...
      // button at the very top that goes back to previous page
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_left,
          size: 40,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
