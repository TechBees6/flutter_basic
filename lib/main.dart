import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => myAppState();
}

class myAppState extends State<myApp> {
  var index = 0;

  void _answerQuestion() {
    setState(() {
      index = index + 1;
    });
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what is you favroute color',
        'answer': ['red', 'blue', 'green', 'yellow']
      },
      {
        'questionText': 'what is you favroute color',
        'answer': ['red', 'blue', 'green', 'yellow']
      },
      {
        'questionText': 'what is you favroute color',
        'answer': ['red', 'blue', 'green', 'yellow']
      },
      {
        'questionText': 'what is you favroute color',
        'answer': ['red', 'blue', 'green', 'yellow']
      },
      {
        'questionText': 'what is you favroute color',
        'answer': ['red', 'blue', 'green', 'yellow']
      }
    ];

    return MaterialApp(
      title: 'Startup Name Generator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(children: [
          Questions(questions[index]['questionText'].toString()),
          ...(questions[index]['answer'] as List<String>).map((answer){
            return Answer(_answerQuestion,answer);
          }),
        ]),
      ),
    );
  }
}
