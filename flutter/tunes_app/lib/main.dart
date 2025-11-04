import 'package:flutter/material.dart';
import 'package:tunes_app/models/tune_model.dart';
import 'package:tunes_app/widgets/tune_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tunes App',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff253238),
          elevation: 0,
          title: Text(
            'Flutter Xylophone',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: getTunes()
              .map((tune) => ExpandedTuneItem(tune: tune))
              .toList(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  List<TuneModel> getTunes() {
    return [
      TuneModel(color: Colors.red, sound: 'note1.wav'),
      TuneModel(color: Colors.blue, sound: 'note2.wav'),
      TuneModel(color: Colors.green, sound: 'note3.wav'),
      TuneModel(color: Colors.yellow, sound: 'note4.wav'),
      TuneModel(color: Colors.purple, sound: 'note5.wav'),
      TuneModel(color: Colors.orange, sound: 'note6.wav'),
      TuneModel(color: Colors.pink, sound: 'note7.wav'),
    ];
  }
}
