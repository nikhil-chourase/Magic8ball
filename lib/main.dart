import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: ballPage(),
        ),
      ),
    );

class ballPage extends StatefulWidget {
  @override
  State<ballPage> createState() => _ballPageState();
}

class _ballPageState extends State<ballPage> {
  int numbers = 1;
  @override
  Widget build(BuildContext context) {
    void random() {
      setState(() {
        numbers = Random().nextInt(4) + 1;
      });
    }

    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
                onPressed: () {
                  random();
                  print(numbers);
                  print('i got clicked');
                },
                child: Image.asset('images/ball$numbers.png')),
          ),
        ],
      ),
    );
  }
}
