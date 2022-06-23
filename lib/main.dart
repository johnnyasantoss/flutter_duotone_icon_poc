import 'package:flutter/material.dart';

import 'duo_tone_icon.dart';
import 'icomoon_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DuoTone PoC Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DuoTone PoC Demo'),
        ),
        body: Center(
          child: DuoToneIcon(
            foregroundIcon: Icomoon.alien_duotone,
            backgroundIcon: Icomoon.alien_duotone_bg,
            color: Colors.green[800],
            size: 300,
          ),
        ),
      ),
    );
  }
}
