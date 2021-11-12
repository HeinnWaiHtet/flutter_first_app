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
      home: DefaultTabController(
        length: 9,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tab Bar'),
            bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.pinkAccent,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3,
              tabs: [
                Tab(child: Text('Home'),icon: Icon(Icons.home_filled),),
                Tab(child: Text('Profile'),icon: Icon(Icons.person_off_outlined),),
                Tab(child: Text('about'),icon: Icon(Icons.person_pin_sharp),),
                Tab(child: Text('car'),icon: Icon(Icons.car_rental),),
                Tab(child: Text('apartment'),icon: Icon(Icons.apartment),),
                Tab(child: Text('laptop'),icon: Icon(Icons.laptop_mac),),
                Tab(child: Text('phone'),icon: Icon(Icons.phone_iphone),),
                Tab(child: Text('garden'),icon: Icon(Icons.grade_rounded),),
                Tab(child: Text('wife'),icon: Icon(Icons.personal_video),),
              ],
             ),
            ) ,
            body: const TabView(),
          ),
        ),
    );
  }
}

class TabView extends StatelessWidget{
  const TabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const TabBarView(children: [
      Center(
        child: Text('Home', style: TextStyle(color: Colors.redAccent,fontSize: 30),),
      ),
      Center(
        child: Text('Profile',style: TextStyle(color: Colors.cyanAccent,fontSize: 30),),
      ),
      Center(
        child: Text('About',style: TextStyle(color: Colors.blueAccent,fontSize: 30),),
      ),
      Center(
        child: Text('Car', style: TextStyle(color: Colors.redAccent,fontSize: 30),),
      ),
      Center(
        child: Text('Apartment',style: TextStyle(color: Colors.cyanAccent,fontSize: 30),),
      ),
      Center(
        child: Text('Laptop',style: TextStyle(color: Colors.blueAccent,fontSize: 30),),
      ),
      Center(
        child: Text('Phone', style: TextStyle(color: Colors.redAccent,fontSize: 30),),
      ),
      Center(
        child: Text('Garden',style: TextStyle(color: Colors.cyanAccent,fontSize: 30),),
      ),
      Center(
        child: Text('Wife',style: TextStyle(color: Colors.blueAccent,fontSize: 30),),
      ),
    ]);
  }
}

