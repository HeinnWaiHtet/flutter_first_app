import 'package:flutter/material.dart';
class FutureBuilderWidget extends StatefulWidget {
  const FutureBuilderWidget({ Key? key }) : super(key: key);

  @override
  _FutureBuilderWidgetState createState() => _FutureBuilderWidgetState();
}

class _FutureBuilderWidgetState extends State<FutureBuilderWidget> {

  Future<String> getUserName() async{
    final String userName = await Future.delayed(
      const Duration(seconds: 4),
      (){
        return 'Hello Mg Hein';
      }
    );
    return userName;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Builder Widget'),
      ),
      body: FutureBuilder(
        future: getUserName(),
        builder: (context, AsyncSnapshot snapshot){
          if(snapshot.data != null){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(snapshot.data),
                ),

                const SizedBox(height: 20,),

                ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  }, 
                  child: const Text('Back')
                  ),

              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.green,
            ),
          );
        },
      ),
    );
  }
}