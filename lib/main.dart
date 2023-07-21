import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());


class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    

    void playSound(int id) {
      final player = AudioPlayer();
      player.play(AssetSource('note$id.wav'));
    }

    Expanded buildKey(int id) {
      var color;

      switch (id) {
        case 1:
          color = Colors.red;
          break;
        case 2:
          color = Colors.orange;
          break;
        case 3:
          color = Colors.yellow;
          break;
        case 4:
          color = Colors.lightGreen;
          break;
        case 5:
          color = Colors.green;
          break;
        case 6:
          color = Colors.blue;
          break;
        case 7:
          color = Colors.purple;
          break;
        default:
      }

      return Expanded(
        child: TextButton(
          onPressed: () {
            
            playSound(id);
          },
          style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(color)),
          child: const Text(''),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1),
              buildKey(2),
              buildKey(3),
              buildKey(4),
              buildKey(5),
              buildKey(6),
              buildKey(7)
            ],
          ),
        ),
      ),
    );
  }
}