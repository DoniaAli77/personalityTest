// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';

import 'myButton.dart';
import 'question.dart';
import 'quizPart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', 
        theme: ThemeData(),
         home: myHome() // aw myHomeHook()
         );
  }
}


// ------------------------------(StateFul Version)----------------------------------

class myHome extends StatefulWidget {
  @override
  State<myHome> createState() => _myHomeeState();
}

class _myHomeeState extends State<myHome> {
  var questionIndex = 0;

  var questionList = [
    {
      'q': 'Favorite color?',
      'a': [
        {'cname': 'blue', 'score': 5},
        {'cname': 'yellow', 'score': 4},
        {'cname': 'green', 'score': 3}
      ]
    },
    {
      'q': 'Least favorite color?',
      'a': [
        {'cname': 'black', 'score': -5},
        {'cname': 'magenta', 'score': -4},
        {'cname': 'purple', 'score': -3},
        {'cname': 'red', 'score': -2}
      ]
    }
  ];
  var totalScore = 0;
  void doSomething(int score) {
    totalScore += score;
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Test'),
          backgroundColor: Colors.blueAccent,
        ),
        body: questionIndex < questionList.length
            ? QuizPart(
                qList: questionList,
                qIndex: questionIndex,
                cbFunction: doSomething,
              )
            : Center(
                child: Text(
                  totalScore < 0 ? "Introvert" : "Extrovert",
                  style: TextStyle(fontSize: 30),
                ),
              ),
      ),
    );
  }
}

// ------------------------------(Hoooooooook Version)----------------------------------
// class myHomeHook extends HookWidget {
//   @override
//   Widget build(BuildContext context) {
//     final questionIndex = useState(0);

//     var questionList = [
//       {
//         'q': 'Favorite color?',
//         'a': [
//           {'cname': 'blue', 'score': 5},
//           {'cname': 'yellow', 'score': 4},
//           {'cname': 'green', 'score': 3}
//         ]
//       },
//       {
//         'q': 'Least favorite color?',
//         'a': [
//           {'cname': 'black', 'score': -5},
//           {'cname': 'magenta', 'score': -4},
//           {'cname': 'purple', 'score': -3},
//           {'cname': 'red', 'score': -2}
//         ]
//       }
//     ];
//     var totalScore = 0;
//     void doSomething(int score) {
//       totalScore += score;
//       questionIndex.value++;
//     }

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Personality Test"),
//           backgroundColor: Colors.blueAccent,
//         ),
//         body: questionIndex.value < questionList.length
//             ? QuizPart(
//                 qList: questionList,
//                 qIndex: questionIndex.value,
//                 cbFunction: doSomething,
//               )
//             : Center(
//                 child: Text(
//                   totalScore < 0 ? "Introvert" : "Extrovert",
//                   style: TextStyle(fontSize: 30),
//                 ),
//               ),
//       ),
//     );
//   }
// }
