import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  int count = 0;
  String userName = '';
  TextEditingController textController = TextEditingController();
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                margin: const EdgeInsets.all(10),
                width: 300,
                child:TextField(
                  controller: textController,
                  decoration: const InputDecoration(
                    hintText: 'Enter Your Name',
                    labelText: 'Name',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent,fontSize: 19),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),

              Text(
                "$count",
                style: const TextStyle(
                  color: Colors.brown,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  )
                ),

                const SizedBox(height: 20,),

                Text(
                userName,
                style: const TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  )
                ),

                const SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            count++;
                          });
                        }, 
                        child: const Text('Check Count')) 
                        ,),

                        const SizedBox(width: 10,),

                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            userName = textController.text;
                          });
                        }, 
                        child: const Text('Show Name')) 
                        ,),
                      ],
                  ),
                ],
              ),
            )
        ),
    );
  }
}
