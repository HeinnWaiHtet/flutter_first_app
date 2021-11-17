import 'package:flutter/material.dart';
class StreamBuilderWidget extends StatefulWidget {
  const StreamBuilderWidget({ Key? key }) : super(key: key);

  @override
  _StreamBuilderWidgetState createState() => _StreamBuilderWidgetState();
}

class _StreamBuilderWidgetState extends State<StreamBuilderWidget> {

  Stream getStream() async*{
    await Future.delayed(
      const Duration(
        seconds: 2,
      )
    );

    for(int index=0;index<10;index++){
      yield index;
      await Future.delayed(
        const Duration( seconds: 1),
        (){
          return 'Now You are $index';
        }
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StreamBuilder Widget'),
        ) ,
      body: StreamBuilder(
        stream: getStream(),
        builder: (context,AsyncSnapshot snapshot){
          if(snapshot.hasData){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(snapshot.data.toString()),
                ),

                const SizedBox(height: 20,),

                ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: const Text('Back'))
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.redAccent,
            ),
          );
        },
      ),
    );
  }
}