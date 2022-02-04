import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              'DRUM MACHINE',
              style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: DrumPage()),
    );
  }
}

class DrumPage extends StatelessWidget {
  final player = AudioCache();

  void playSound(String sound) {
    player.play('$sound.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    // Ekrana yayar
                    child: buildTextButton(Colors.red, 'bongo'),
                  ),
                  Expanded(
                    child: buildTextButton(Colors.blue, 'bip'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    // Ekrana yayar
                    child: buildTextButton(Colors.brown, 'clap1'),
                  ),
                  Expanded(
                    child: buildTextButton(Colors.lime, 'clap2'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    // Ekrana yayar
                    child: buildTextButton(Colors.tealAccent, 'crash'),
                  ),
                  Expanded(
                    child: buildTextButton(Colors.purpleAccent, 'how'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    // Ekrana yayar
                    child: buildTextButton(Colors.deepOrange, 'oobah'),
                  ),
                  Expanded(
                    child: buildTextButton(Colors.green, 'ridebel'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextButton buildTextButton(Color color, String sounds) {
    return TextButton(
      onPressed: () {
        playSound(sounds);
      },
      child: Container(
        color: color,
      ),
    );
  }
}
