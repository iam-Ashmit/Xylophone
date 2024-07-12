import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final assetsAudioPlayer = AssetsAudioPlayer();

  void playsound(int num) {
    assetsAudioPlayer.open(
      Audio("assets/note$num.mp3"),
    );
    assetsAudioPlayer.play();
  }

  Widget buildKey(Color clr, int note) {
    return Expanded(
      child: Container(
        color: clr,
        child: TextButton(
          onPressed: () {
            playsound(note);
          },
          child: Text(""), // Empty text
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.deepOrange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.blue, 4),
              buildKey(Colors.green, 5),
              buildKey(Colors.blueAccent.shade400, 6),
              buildKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
