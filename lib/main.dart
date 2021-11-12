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
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tab Bar'),
            bottom: const TabBar(
              indicatorColor: Colors.pinkAccent,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3,
              tabs: [
                Tab(child: Text('Home'),icon: Icon(Icons.home_filled),),
                Tab(child: Text('Profile'),icon: Icon(Icons.person_off_outlined),),
                Tab(child: Text('about'),icon: Icon(Icons.person_pin_sharp),),
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
    return TabBarView(children: [
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home', style: TextStyle(color: Colors.redAccent,fontSize: 30),),
            const SizedBox(height: 20,),
            OutlinedButton(
              child: const Text('SnackBar'),
              onPressed: (){
                SnackBar bar = SnackBar(
                  content: const Text('Deleted'),
                  duration: const Duration(seconds: 3),
                  action: SnackBarAction(label: 'Undo',onPressed: (){},
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(bar);
              },
            ),
          ],
        ),
      ),
      const Center(
        child: Text('Profile',style: TextStyle(color: Colors.cyanAccent,fontSize: 30),),
      ),
      const Center(
        child: Text('About',style: TextStyle(color: Colors.blueAccent,fontSize: 30),),
      ),
    ]);
  }
}

