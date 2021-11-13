import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
  double sliderVal = 21;
  bool switchState = true;
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
              const LinearProgressIndicator(
                minHeight: 3,
                color: Colors.blue,
                backgroundColor: Colors.redAccent,
                valueColor: AlwaysStoppedAnimation(Colors.yellow),
                ),

              const CircularProgressIndicator(
                strokeWidth: 5,
                backgroundColor: Colors.pink,
                valueColor: AlwaysStoppedAnimation(Colors.blueGrey),
              ),

              Slider(
                min: 0,
                max: 100,
                value: sliderVal,
                onChanged: (value){
                  setState(() {
                    sliderVal = value;
                  });
                },),

              CarouselSlider(
                items: [
                  Image.asset('assets/c.jpg'),
                  Image.asset('assets/chit.jpg'),
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 500),
                  scrollDirection: Axis.horizontal,
                )
              ),

              Switch(
                activeColor: Colors.blueGrey,
                activeTrackColor: Colors.deepOrangeAccent,
                inactiveThumbColor: Colors.limeAccent,
                inactiveTrackColor: Colors.lightBlueAccent,
                value: switchState,
                onChanged: (status){
                  setState(() {
                    switchState = status;
                  });
              }),

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

