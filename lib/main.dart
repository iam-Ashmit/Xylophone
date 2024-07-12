import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  // we only had to use these beacuse when we run the app the assetaudioplayer was initialised first that why it ws giving error , white screen if init it at the start of the app then we should this
  WidgetsFlutterBinding
      .ensureInitialized(); //this ensures that the Flutter binding is initialized
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final assetsAudioPlayer = AssetsAudioPlayer();

  // final assetsAudioPlayer = AssetsAudioPlayer(); // this was causing the white screen error or this error : Failed assertion: line 554 pos 7: '_binaryMessenger != null || BindingBase.debugBindingType() != null': Cannot set the method call handler before the binary messenger has been initialized. This happens when you call setMethodCallHandler() before the WidgetsFlutterBinding has been initialized. You can fix this by either calling WidgetsFlutterBinding.ensureInitialized() before this or by passing a custom BinaryMessenger instance to MethodChannel().

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
