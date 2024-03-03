// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
         home: myHomeHook());
  }
}

// class myHome1 extends StatefulWidget {
//   @override
//   State<myHome1> createState() => _myHome1State();
// }

class myHome1 extends StatefulWidget{
  @override
  State<myHome1> createState() => _myHome1State();
}
class _myHome1State extends State<myHome1> {
  var ql = ['what is your fav color', 'what is your least fav color'];
  var indx = 0;
  void doSomething() {
    setState(() {
         indx++;
    print(indx);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giu First app'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Question(ql[indx]),
          ElevatedButton(onPressed: doSomething, child: Text('blue')),
          ElevatedButton(onPressed: doSomething, child: Text('green')),
          ElevatedButton(onPressed: doSomething, child: Text('red'))
        ],
      ),
    );
  }
}

// class myHome extends StatefulWidget {
//   @override
//   State<myHome> createState() => _myHomeeState();
// }
// class _myHomeeState extends State<myHome> {
//   var ql = ['what is your fav color', 'what is your least fav color'];
//   var indx = 0;
//   void doSomething() {
//     setState(() {
//       indx++;
//     });
//     print(indx);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Giu first App'),
//         backgroundColor: Colors.amber,
//       ),
//       body: Center(
//         child: Column(children: <Widget>[
//           Question(ql[indx]),
//           MyButton(buttonText: "Blue", buttonCallback: doSomething),
//           MyButton(buttonText: "Green", buttonCallback: doSomething),
//           MyButton(buttonText: "Red", buttonCallback: doSomething)
//         ]),
//       ),
//     );
//   }
// }

  //  {'cname': 'black', 'score': -5},
//         {'cname': 'magenta', 'score': -4},
//         {'cname': 'purple', 'score': -3},
//         {'cname': 'red', 'score': -2}
//       ]
//     }
//   ];
//   var totalScore = 0;
//   void doSomething(int score) {
//     totalScore += score;
//     setState(() {
//       questionIndex++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("GUC first app"),
//           backgroundColor: Colors.blueAccent,
//         ),
//         body: questionIndex < questionList.length
//             ? QuizPart(
//                 qList: questionList,
//                 qIndex: questionIndex,
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

class myHomeHook extends HookWidget {
  Widget build(BuildContext context) {
    final questionIndex = useState(0);

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
      questionIndex.value++;
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GUC first app"),
          backgroundColor: Colors.blueAccent,
        ),
        body: questionIndex.value < questionList.length
            ? QuizPart(
                qList: questionList,
                qIndex: questionIndex.value,
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
