import 'package:flutter/material.dart';
class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  final formKey = GlobalKey<FormState>();
  @override
  // ignore: avoid_renaming_method_parameters
  Widget build(BuildContext buildContext){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter State Full Widget",
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Stateful Widget'),
        ),
        body: Center(
          child: Column(
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                margin: const EdgeInsets.all(20),
                child: Image.asset('assets/chit.jpg'),
                width: 300,
                height: 200,
                ),

               Card(
                  color: Colors.indigoAccent,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                  // ignore: avoid_unnecessary_containers
                  child : Container(
                    width: 200,
                    height: 200,
                    margin: const EdgeInsets.all(20),
                    child: const Text(
                      'Card',
                       style: TextStyle(color: Colors.amberAccent, fontSize: 30),
                       ),
                    ),
                ),
            ],
          ),
        ),
        ),
    );
  }
}
