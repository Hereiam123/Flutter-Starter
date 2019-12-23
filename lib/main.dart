import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.purple[900]),
        home: RandomWords());
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  Widget build(BuildContext content) {
    final wordPair = WordPair.random();
    return Scaffold(
        appBar: AppBar(title: Text('WordPair Generator')),
        body: Center(child: Text(wordPair.asPascalCase)));
  }
}
