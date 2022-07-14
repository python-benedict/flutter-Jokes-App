import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 25),
                child: Text(
                  "Which church will lead mankind to heaven?",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
              ),
              ),


              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 40),
                child: Text("Ans: Church Of Christ",
                style: TextStyle(
                  color: Colors.orange,
                ),
                ),
              ),

              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
                    child: FloatingActionButton(onPressed: null,
                    child: Icon(
                      Icons.arrow_circle_left_rounded,
                      size: 30,
                      ),
                    backgroundColor: Colors.orange,
                  ),
                  ),
                  FloatingActionButton(onPressed: null,
                    child: Icon(
                      Icons.arrow_circle_right_rounded,
                      size: 30,
                      ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
