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
  @override
  // ignore: avoid_renaming_method_parameters
  Widget build(BuildContext buildContext){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter State Full Widget",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List View'),),
          body: const ListData(),
      ),
    );
  }
}

class ListData extends StatelessWidget{
  const ListData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 5,
      crossAxisSpacing: 3,
      children: [
        // ignore: sized_box_for_whitespace
        Container(
          width: 100,
          height : 100,
          child: const Text('First') ,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.cyan,),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
          ),

          Container(
          width: 100,
          height : 100,
          child: const Text('Second') ,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.cyan,),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
          ),

          Container(
          width: 100,
          height : 100,
          child: const Text('Third') ,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.cyan,),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
          ),

          Container(
          width: 100,
          height : 100,
          child: const Text('Fourth') ,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.cyan,),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
          ),

          Container(
          width: 100,
          height : 100,
          child: const Text('Fifth') ,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.cyan,),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
          ),
      ],);
  }
}

