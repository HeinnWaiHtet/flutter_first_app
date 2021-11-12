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
        body: const MyHome(),
        ),
    );
  }
}

class MyHome extends StatelessWidget{
  const MyHome({Key? key}) : super(key: key);

  @override
  // ignore: avoid_renaming_method_parameters
  Widget build(BuildContext buildContext){
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            showDialog(context: buildContext, builder: (BuildContext context){
              return AlertDialog(
                title: const Text(
                  'Alert Title',
                   style: TextStyle(
                     color: Colors.redAccent),
                     ),
                content: const Text(
                  'Hello MG HEIN',
                   style: TextStyle(
                     color: Colors.indigoAccent,
                      fontSize: 21,
                       fontWeight: FontWeight.normal),
                       ),
                actions: [
                  ElevatedButton(onPressed: (){}, child: const Text('Yes')),
                  OutlinedButton(onPressed: (){}, child: const Text('No'),)
                ],
              );
            });
          }, child: const Text('show alert')),

          const SizedBox(height: 15,),

          ElevatedButton(onPressed: (){
            Future data = showDialog(context: buildContext, builder: (BuildContext context){
               return SimpleDialog(
                children: [
                  SimpleDialogOption(
                    child: const Text('IPhone', style: TextStyle(color: Colors.pinkAccent,fontSize: 21),),
                    onPressed: (){
                      Navigator.pop(context, 'I-Phone');
                    },
                  ),
                  SimpleDialogOption(
                    child: const Text('Samsumg', style: TextStyle(color: Colors.deepPurple,fontSize: 15),),
                    onPressed: (){
                      Navigator.pop(context, 'Samsumng');
                    },
                  ),
                ],
              );
            });
            data.then((value) => print(value));
          }, child: const Text('show option Dialog'))
        ],
      ),
    );
  }
}
