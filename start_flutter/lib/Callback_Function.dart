import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class callbackf extends StatelessWidget {
  const callbackf({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => callbackfunction();
}

class callbackfunction extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {





   callback(){
     print("hello everyone!");
   }


    return Scaffold(
      //     appBar: AppBar(
      //     title: Text('Flutter555'),
      // ),
        body:Center(
          child: Container(
            color: Colors.black,
            child: ElevatedButton(
              child: Text("Touch me!!", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.blue),),
              onPressed: callback,
            ),
          ),
        )

    );
  }
}
