import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:animated_splash/animated_splash.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void play_sound(int z){
      InkWell(
        enableFeedback: false,
      );
      final player = AudioCache();
      player.play('note$z.wav');
    }

    Expanded buildkey({Color color,int sn}){
      return Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {play_sound(sn);},
        ),
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      AnimatedSplash(
        imagePath: 'images/xylohone.png',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pinkAccent,
            title: Center(child: Text('Xylophone-Play your Tunes', style: TextStyle(color: Colors.white),)),
          ),
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildkey(color : Colors.red, sn: 1),
                buildkey(color: Colors.orange, sn:2),
                buildkey(color:Colors.yellow, sn:3),
                buildkey(color:Colors.green,sn:4),
                buildkey(color:Colors.teal,sn:5),
                buildkey(color:Colors.blueAccent,sn:6),
                buildkey(color:Colors.purple,sn:7),
              ],
            ),
          ),
        ),
        duration: 3200,
        type: AnimatedSplashType.StaticDuration,
      ),
      );
  }
}
