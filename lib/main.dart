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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: Colors.green,
                    width: 2,)
                  ),
                margin: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                child: const Text("First",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
                ),
                ),

                // ignore: sized_box_for_whitespace
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: Colors.blueAccent,
                    width: 2)
                    ),
                margin: const EdgeInsets.all(10),
                height: 100,
                width: 100,
                child: const Text(
                  "Second",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 19,
                    fontStyle: FontStyle.italic),
                    ),
                    ),
                    
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: Colors.redAccent,
                    width: 2)
                    ),
                    margin: const EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    child: const Text(
                      "Third",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 19,
                        fontStyle: FontStyle.italic),
                        ),
                        ),
                              
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: Colors.blue,
                    width: 2)
                    ),
                    margin: const EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    child: const Text(
                      "Fourth",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 19,
                        fontStyle: FontStyle.italic),
                        ),
                        ),
                                        
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: Colors.greenAccent,
                      width: 2)
                      ),
                      margin: const EdgeInsets.all(10),
                      height: 100,
                      width: 100,
                      child: const Text(
                        "Fifth",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 19,
                          fontStyle: FontStyle.italic),
                          ),
                          ),
                          ],
            ),
        ),
    );
  }
}
