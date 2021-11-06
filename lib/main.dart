import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello Flutter",
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter",
            style: TextStyle(color: Colors.amber[400]),
            ),),
          body: Text("Hello Flutter", style: TextStyle(
            color: Colors.blueAccent[200],
            fontSize: 30,
            letterSpacing: 2,
            wordSpacing: 2,
            shadows: [
              Shadow(color: Colors.black12,offset: Offset(12,13),blurRadius: 7)
            ],
            fontWeight: FontWeight.bold),
            ),
        ),
    );
  }
}
