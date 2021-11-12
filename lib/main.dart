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
  final formKey = GlobalKey<FormState>();
  @override
  // ignore: avoid_renaming_method_parameters
  Widget build(BuildContext buildContext){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter State Full Widget",
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Stateful Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                  Form(
                    key: formKey,
                    child: Column(
                    children: [
                      // ignore: avoid_unnecessary_containers
                      Container(
                        width: 300,
                          child : TextFormField(
                            validator: (value){
                              if(value == null || value == ''){
                                return 'Enter Your Email';
                              }
                            },
                            decoration: const InputDecoration(
                            hintText: 'Enter Your Email',
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.cyan),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            )
                          ),
                        ),
                      ),

                      const SizedBox(height: 20,),
                      
                      // ignore: avoid_unnecessary_containers
                      Container(
                        width: 300,
                        child: TextFormField(
                          validator: (value){
                            if(value == null || value == ''){
                              return 'Enter Your Password';
                            }
                          },
                          decoration: const InputDecoration(
                            hintText: 'Enter Password',
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15))
                            )
                          ),
                        ),
                      ),


                      ElevatedButton(
                        onPressed: (){
                          formKey.currentState!.validate();
                      }, 
                      child: const Text('Click')),
                    ],
                   )
                  )
                ],
              ),
            )
        ),
    );
  }
}
