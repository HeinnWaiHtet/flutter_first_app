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
  int navBarIndex = 0;
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

              Table(
                border: TableBorder.all(width: 1,),
                defaultColumnWidth: const FlexColumnWidth(30),
                defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                children: const [
                  TableRow(
                    children: [
                      TableCell(child: Text('mg mg')),
                      TableCell(child: Text('1')),
                      TableCell(child: Text('Monywa')),
                    ]
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Text('mg mg')),
                      TableCell(child: Text('1')),
                      TableCell(child: Text('Monywa')),
                    ]
                  ),
                ],
              ),

              DataTable(
                showBottomBorder: true,
                columnSpacing: 50.0,
                columns: const [
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Age')),
                DataColumn(label: Text('Birth')),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('mg mg')),
                  DataCell(Text('21')),
                  DataCell(Text('Monywa')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Aung Aung')),
                  DataCell(Text('21')),
                  DataCell(Text('Yangon')),
                ]),
              ])
            ],
          ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: navBarIndex,
          selectedFontSize: 15,
          elevation: 2.0,
          onTap: (status){
            setState(() {
              navBarIndex = status;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.green,
              activeIcon: Icon(Icons.home_filled)
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_off_outlined),
              label: 'Profile',
              activeIcon: Icon(Icons.person)
            )
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

