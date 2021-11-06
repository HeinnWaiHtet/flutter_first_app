import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello Flutter",
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter",
            style: TextStyle(color: Colors.amber[400]),),
            ),
          body: Container(
            decoration: BoxDecoration(
              border:  Border.all(
                color: Colors.amberAccent,
                style: BorderStyle.solid,
                width: 4)
                ),
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 30,left: 20),
            width: 200,
            height: 200,
            child: const Center(
              child: Text("Hello Flutter",style: TextStyle(
                color: Colors.green,
                letterSpacing: 1,
                fontSize: 19,
                shadows: [
                  Shadow(
                    color: Colors.black38,
                    offset: Offset(12,12),
                    blurRadius: 6.5
                  ),
                ] ),
                ),
            ),
          ),
        ),
    );
  }
}
