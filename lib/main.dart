import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext buildContext){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter",
            style: TextStyle(color: Colors.amber[400]),
            ),),
          body: Text("Hello Flutter", style: TextStyle(
            color: Colors.green[200],
            fontSize: 30,
            fontWeight: FontWeight.bold),
            ),
        ),
    );
  }
}
