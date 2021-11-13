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
  bool checkStatus = true;
  bool anotherCheckStatus = false;
  String radioGroup = 'hein';
  @override
  // ignore: avoid_renaming_method_parameters
  Widget build(BuildContext buildContext){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter State Full Widget",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CheckBox'),),
          body: Column(
            children: [
              Checkbox(
                checkColor: Colors.pinkAccent,
                activeColor: Colors.yellow,
                value: checkStatus,
                onChanged: (status){
                setState(() {
                  checkStatus = status!;
                });
              }),

              const SizedBox(height:30),

              CheckboxListTile(
                title: const Text('Alarm'),
                subtitle: const Text('Wake up'),
                secondary: const Icon(Icons.alarm),
                value: anotherCheckStatus,
                onChanged: (status){
                setState(() {
                  anotherCheckStatus = status!;
                });
              }),

              const SizedBox(height: 20,),

              Radio(
                value: 'hein',
                groupValue: radioGroup,
                onChanged: (String? status){
                setState(() {
                  radioGroup = status!;
                });
              }),

              Radio(
                value: 'wai',
                groupValue: radioGroup,
                onChanged: (String? status){
                setState(() {
                  radioGroup = status!;
                });
              }),

              Radio(
                value: 'htet',
                groupValue: radioGroup,
                onChanged: (String? status){
                setState(() {
                  radioGroup = status!;
                });
              }),

              RadioListTile(
                title: const Text('Hello'),
                value: true,
                groupValue: 'gg',
                onChanged: (Object? status){

              }),
            ],
          ),
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
      'Asus ZenBook',];

    return GridView.builder(
      itemCount: laptopList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 3,
        mainAxisSpacing: 3,),
      itemBuilder: (context, index){
        return Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(width: 2,color: Colors.redAccent,),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            ),
          child: Text(
            "${laptopList[index]}",
            style: const TextStyle(
              color: Colors.orangeAccent,
              fontWeight: FontWeight.normal,
              fontSize: 21),
              ),
        );
      });
  }
}

