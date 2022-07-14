import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: (Center(
          child: (Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Why do men sleep after Sex"),
              Text("Ans: No time for bullshit"),
              FloatingActionButton(onPressed: () {
                Text("Click");
              })
            ],
          )),
        )),
      ),
    );
  }
}
