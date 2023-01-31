import 'package:flutter/material.dart';
import 'package:new1/auth/login.dart';
import 'package:new1/view/s2.dart';
import 'facebookProfile/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile(),
    );
  }
}

enum SingingCharacter { lafayette, jefferson }

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

SingingCharacter? _character = SingingCharacter.lafayette;

class _CheckState extends State<Check> {
  bool x = false;
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            title: const Text('Lafayette'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.lafayette,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Thomas Jefferson'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.jefferson,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          const Text('CheckBox'),
          Checkbox(
            activeColor: Colors.red,
            checkColor: Colors.black,
            focusColor: Colors.yellow,
            splashRadius: 22,
            side: BorderSide(color: Colors.blue),
            value: x,
            onChanged: ((value) {
              setState(() {
                x = value!;
              });
            }),
          ),
          const Text('Slider'),
          Slider(
            value: _currentSliderValue,
            max: 100,
            divisions: 10,
            label: _currentSliderValue.round().toString(),
            onChanged: (value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          )
        ],
      ),
    );
  }
}
