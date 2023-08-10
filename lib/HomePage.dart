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

  void play(String uri) {
    audioPlayer.play(AssetSource(uri));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spanish Audio Number"),
      ),
      body: Container(
        child: Center(
            child: Column(
          children: [
            Image(
              image: AssetImage('images/logo.png'),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.0,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 20.0),
                itemBuilder: (context, index) => SizedBox(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: numberList[index].buttonColor,
                    ),
                    child: Text(
                      numberList[index].buttonText,
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    onPressed: () => play(numberList[index].audioUri),
                  ),
                  width: 100.0,
                  height: 50.0,
                ),
                itemCount: numberList.length,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
