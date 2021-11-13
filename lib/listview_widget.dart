import 'package:flutter/material.dart';
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
    return ListView(
      children: const [
        ListTile(title: Text('MacBook'),leading: Icon(Icons.laptop_mac_sharp),focusColor: Colors.green,),
        ListTile(title: Text('ZenBook'),leading: Icon(Icons.laptop_mac_sharp),hoverColor: Colors.red,),
        ListTile(title: Text('Hp'),leading: Icon(Icons.laptop_mac_sharp)),
        ListTile(title: Text('MacBook'),leading: Icon(Icons.laptop_mac_sharp),focusColor: Colors.green,),
        ListTile(title: Text('ZenBook'),leading: Icon(Icons.laptop_mac_sharp),hoverColor: Colors.red,),
        ListTile(title: Text('Hp'),leading: Icon(Icons.laptop_mac_sharp)),
        ListTile(title: Text('MacBook'),leading: Icon(Icons.laptop_mac_sharp),focusColor: Colors.green,),
        ListTile(title: Text('ZenBook'),leading: Icon(Icons.laptop_mac_sharp),hoverColor: Colors.red,),
        ListTile(title: Text('Hp'),leading: Icon(Icons.laptop_mac_sharp)),
        ListTile(title: Text('MacBook'),leading: Icon(Icons.laptop_mac_sharp),focusColor: Colors.green,),
        ListTile(title: Text('ZenBook'),leading: Icon(Icons.laptop_mac_sharp),hoverColor: Colors.red,),
        ListTile(title: Text('Hp'),leading: Icon(Icons.laptop_mac_sharp)),
        ListTile(title: Text('MacBook'),leading: Icon(Icons.laptop_mac_sharp),focusColor: Colors.green,),
        ListTile(title: Text('ZenBook'),leading: Icon(Icons.laptop_mac_sharp),hoverColor: Colors.red,),
        ListTile(title: Text('Hp'),leading: Icon(Icons.laptop_mac_sharp)),
      ],
    );
  }
}

