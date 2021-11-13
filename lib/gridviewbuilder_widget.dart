import 'package:flutter/material.dart';
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
