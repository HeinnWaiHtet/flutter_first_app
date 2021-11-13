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

              Container(
                margin: const EdgeInsets.all(20),
                width: 300,
                height: 200,
                child: Image.network(
                  'https://w0.peakpx.com/wallpaper/32/626/HD-wallpaper-big-hat-pretty-dress-beautiful-sweet-nice-anime-beauty-anime-girl-long-hair-black-hair-female-lovely-gown-hat-girl-lady-scene-maiden.jpg'),
                  ),
              
              Container(
                width: 300,
                height: 200,
                margin: const EdgeInsets.all(20),
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/chit.jpg',
                  image: 'https://w0.peakpx.com/wallpaper/572/730/HD-wallpaper-anime-girl-black-hair-pretty-anime.jpg'),
                  ),

            ],
          ),
        ),
        ),
    );
  }
}