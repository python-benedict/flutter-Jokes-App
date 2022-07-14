import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var jokes = [
    {
      'Question': 'What does a baby computer call its father?"',
      'Answer': 'Data'
    },
    {
      'Question': "What's a pencil with two erasers called?",
      'Answer': 'Pencil'
    },
    {
      'Question': 'Why is the calendar always scared?',
      'Answer': 'Because its days are numbered'
    },
    {'Question': 'What do you call a fish with no eye', 'Answer': 'Fsh'},
  ];

  var jokesIndex = 0;

  changeJokesIndex(String direction) {
    if (direction == 'next') {
      if(jokesIndex != jokes.length -1){
        setState(() {
        jokesIndex++;
      });
      }else{
        setState(() {
        jokesIndex =jokesIndex=0;
      });
      }
    } else if (direction == 'prev') {
      if(jokesIndex != 0){
        setState(() {
        jokesIndex--;
      });
      }else{
        setState(() {
        jokesIndex = jokes.length-1;
      });
      }
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: (Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Text(
                  jokes[jokesIndex]["Question"] as String,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 20, 60),
                child: Text(
                  jokes[jokesIndex]["Answer"] as String,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: () {
                      changeJokesIndex("prev");
                    },
                    child: Icon(
                      Icons.arrow_circle_left_rounded,
                      size: 30,
                    ),
                    backgroundColor: Colors.orange,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: FloatingActionButton(
                      onPressed: () {
                        changeJokesIndex("next");
                      },
                      child: Icon(
                        Icons.arrow_circle_right_rounded,
                        size: 30,
                      ),
                      backgroundColor: Colors.black,
                    ),
                  )
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
