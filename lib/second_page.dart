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
        child: Column(
          children: [
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