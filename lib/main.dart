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
          body: Center(
            child: Column(
              children: [
                TextButton(
                  autofocus: true,
                  child: const Text("TextButton"),
                  onPressed: (){
                    // ignore: avoid_print
                    //print('click me');
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orangeAccent[200],
                    primary: Colors.white,//For Text Color
                    shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
                    textStyle :const TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      letterSpacing: 2,
                       ),
                      ),
                ),
                
                OutlinedButton(
                  onPressed: (){}, 
                  child: const Text("Outlined Button"),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.red,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    textStyle: const TextStyle(
                      color: Colors.red,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)
                  ),),

                ElevatedButton(
                  onPressed: (){},
                  child: const Text(
                     "Elavated Button",),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.greenAccent,
                    onPrimary: Colors.blueAccent,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    textStyle: const TextStyle(
                      fontSize: 21,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      wordSpacing: 2,
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
