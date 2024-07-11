import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final assetsAudioPlayer = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                color: Colors.red,
                child: TextButton(
                  onPressed: () {
                    assetsAudioPlayer.open(
                      Audio("assets/note1.mp3"),
                    );
                    assetsAudioPlayer.play();
                  },
                  child: Text(
                    "CLICK ME ",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
              Container(
                color: Colors.orangeAccent,
                child: TextButton(
                  onPressed: () {
                    assetsAudioPlayer.open(
                      Audio("assets/note2.mp3"),
                    );
                    assetsAudioPlayer.play();
                  },
                  child: Text(
                    "CLICK ME ",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
              Container(
                color: Colors.yellow,
                child: TextButton(
                  onPressed: () {
                    assetsAudioPlayer.open(
                      Audio("assets/note3.mp3"),
                    );
                    assetsAudioPlayer.play();
                  },
                  child: Text(
                    "CLICK ME ",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
              Container(
                color: Colors.red,
                child: TextButton(
                  onPressed: () {
                    assetsAudioPlayer.open(
                      Audio("assets/note4.mp3"),
                    );
                    assetsAudioPlayer.play();
                  },
                  child: Text(
                    "CLICK ME ",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
