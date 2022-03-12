import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.grey,
      ),
      body: magic8ball(),
    ),
  ));
}

class magic8ball extends StatefulWidget {
  @override
  _magic8ballState createState() => _magic8ballState();
}

class _magic8ballState extends State<magic8ball> {
  int resultNum = 1;

  void settingState () {
    setState(() {
      resultNum = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {


    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              // onPressed is an anonymous function
              onPressed: (){
                settingState();
              },
              child: Image.asset('images/ball$resultNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
