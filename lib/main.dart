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

              FloatingActionButton(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                onPressed: (){},
                child: const Text("Click"),
                ),

              FloatingActionButton.extended(
                icon: const Icon(Icons.phone,color: Colors.greenAccent,),
                onPressed: (){},
                 label: const Text(
                   "Click",
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 21,
                     fontStyle: FontStyle.italic
                   ),
                   ),
                   ),

              IconButton(
                onPressed: (){},
                icon: const Icon(Icons.volume_down),
                iconSize: 40,
                color: Colors.yellow,
                tooltip: "Volume",),

              PopupMenuButton(itemBuilder: (context){
                return [
                  const PopupMenuItem(
                    child: Text("Apple"),
                    value: 1,),
                  const PopupMenuItem(
                    child: Text("SamSumg"),
                    value: 2,),
                  const PopupMenuItem(
                    child: Text("Xiomi"),
                    value: 3,),
                ];
              },
              onSelected: (value){
                // ignore: avoid_print
                print(value);
              },
              icon: const Icon(Icons.phone_android),
              iconSize: 40, ),

          ],
        ),
       ),
      ),
    );
  }
}
