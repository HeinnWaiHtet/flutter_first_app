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
    List laptopList = [
      'MacBook',
      'Hp',
      'Asus ZenBook',
      'Chrome Book',
      'MacBook',
      'Hp',
      'Asus ZenBook',
      'Chrome Book',
      'MacBook',
      'Hp',
      'Asus ZenBook',
      'Chrome Book',
      'MacBook',
      'Hp',
      'Asus ZenBook',
      'Chrome Book',];
    return ListView.builder(itemCount: laptopList.length,itemBuilder: (context, index){
      return ListTile(title: Text('${laptopList[index]}',),leading: const Icon(Icons.laptop_windows),);
    });
  }
}

