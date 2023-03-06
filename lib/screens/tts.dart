import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextToS extends StatefulWidget {
  const TextToS({super.key});

  @override
  State<TextToS> createState() => _TextToSState();
}

class _TextToSState extends State<TextToS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Main(),
    );
  }
}

class Main extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController textEditingController = TextEditingController();
  speak(String text) async{
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak(text);

  }
  Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Padding(padding: EdgeInsets.all(32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            controller: textEditingController,
          ),
          ElevatedButton(onPressed: () => speak(textEditingController.text), 
          child: Text('Start Text to Speech')
          )
        ],
      ),
      ),
    );
  }
}