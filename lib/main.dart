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
            style: TextStyle(color: Colors.amber[400]),
            ),),
          body: RichText(
            text: TextSpan(
              text: "Password",
              style: TextStyle(
                color: Colors.green[200],
                fontWeight: FontWeight.bold,
                fontSize: 21),
              children: const [
                TextSpan(
                  text: "Forget Password",
                   style: TextStyle(
                     wordSpacing: 2,
                     color: Colors.black12,
                     fontSize: 13,
                     fontStyle:FontStyle.italic ,
                     shadows: [
                       Shadow(
                       color: Colors.grey,
                       offset: Offset(12,15),
                       blurRadius: 5.5,
                     )
                     ])
                     ),
                TextSpan(
                  text: "Another Text",
                  style: TextStyle(
                    fontSize: 8,
                    letterSpacing:1, 
                    color: Colors.amberAccent),
                    ),
              ]),
            )
        ),
    );
  }
}
