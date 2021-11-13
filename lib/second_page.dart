import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
        backgroundColor: Colors.indigoAccent,
        ),
      body: Center(
        child: Row(
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              child: const Text('First'),
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/chit.jpg'),
                  fit: BoxFit.cover),
                ),
              ),

            Expanded(
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: const Text('Expanded'),
                color: Colors.grey,
                width: 100,
                height: 100,
                ),
              ),

            const Text('Second Page'),
            
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text('GoFirst')
              ),
          ],
        ),
      ),
    );
  }
}