import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Center(child: Text('Dicee')),
            backgroundColor: Colors.red,
          ),
          body: DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  
  int leftDice = 1;
  int rightDice = 1;

  void aleat () {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                //overlayColor: MaterialStateProperty.all(Colors.transparent),
                padding: MaterialStateProperty.all(
                  EdgeInsets.all(20.0),
                ),
              ),
              child: Image.asset('images/dice$leftDice.png'),
              onPressed: () {
                aleat();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                //overlayColor: MaterialStateProperty.all(Colors.transparent),
                padding: MaterialStateProperty.all(
                  EdgeInsets.all(20.0),
                ),
              ),
              child: Image.asset('images/dice$rightDice.png'),
              onPressed: () {
                aleat();
              },
            ),
          ),
        ],
      ),
    );
  }
}



/*
class DicePage extends StatelessWidget {
  
  int leftDice = 5;
  int rightDice = 6;

  @override
  Widget build(BuildContext context) {
    

    
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                padding: MaterialStateProperty.all(
                  EdgeInsets.all(20.0),
                ),
              ),
              onPressed: () {
                print('hola');
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                padding: MaterialStateProperty.all(
                  EdgeInsets.all(20.0),
                ),
              ),
              onPressed: () {
                print('20');
              },
              child: Image.asset('images/dice$rightDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}

*/