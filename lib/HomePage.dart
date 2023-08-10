import 'package:flutter/material.dart';
import 'NumberAudio.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioPlayer audioPlayer = AudioPlayer();
  List<NumberAudio> numberList = [
    NumberAudio('one.wav', Colors.red, "One"),
    NumberAudio('two.wav', Colors.blue, "Two"),
    NumberAudio('three.wav', Colors.green, "Three"),
    NumberAudio('four.wav', Colors.pink, "Four"),
    NumberAudio('five.wav', Colors.brown, "Five"),
    NumberAudio('six.wav', Colors.blueGrey, "Six"),
    NumberAudio('seven.wav', Colors.teal, "Seven"),
    NumberAudio('eight.wav', Colors.grey, "Eight"),
    NumberAudio('nine.wav', Colors.orange, "Nine"),
    NumberAudio('ten.wav', Colors.purple, "Ten"),
  ];

  play(String uri) {
    audioPlayer.play(UrlSource(uri));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
