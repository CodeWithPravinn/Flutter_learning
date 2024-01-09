import 'package:flutter/material.dart';
import 'package:start_flutter/ListTile.dart';
import 'package:start_flutter/ListView.dart';
import 'package:start_flutter/circleAvatar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageStatee();
}

class _MyHomePageStatee extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    var names= ['PRAVIN','KUSH','SAKSHI','PALLAVI','JIYA','AROHI','MIHIR','ARJUN','JAYESH','KRUPA','SURAJ','LIZAN','xyz','kohli','sharma','ronaldo','modi','messi'];









    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter555'),
      ),
      body: circleAvatar(),
      //  body: Container(
      //
      //
      //   width: 400,
      //   height: 600,
      //   color: Colors.teal,
      //   child: Container(
      //     child: Center(
      //       child: SingleChildScrollView(
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: [
      //             Center(
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
      //                 children: [
      //                   Container(
      //                     width: 200,
      //                     height: 40,
      //                     decoration: BoxDecoration(
      //                         color: Colors.orange,
      //                         borderRadius: BorderRadius.circular(32)),
      //                     child: Center(
      //                         child: TextButton(
      //                       child: Text("click here !"),
      //                       onPressed: () {
      //                         print("yayy it's work good.");
      //                       },
      //                     )),
      //                   ),
      //                   InkWell(
      //                       onTap: () {
      //                         print("don't touch me !");
      //                       },
      //                       onDoubleTap: () {
      //                         print("i said don't touch me !!");
      //                       },
      //                       child:
      //                           Center(child: Image.asset('assets/images/hm.jpeg'))),
      //                 ],
      //               ),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: Container(
      //                   width: 400,
      //                   height: 400,
      //                   child: Center(
      //                 child: Container(
      //                   child: SingleChildScrollView(
      //                     child: Column(
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       children: [
      //                         Container(
      //                           width: 500,
      //                           height: 200,
      //                           color: Colors.grey,
      //                           margin: EdgeInsets.only(bottom: 10),
      //                         ),
      //                         Container(
      //                             width: 500,
      //                             height: 200,
      //                             color: Colors.cyanAccent,
      //                             margin: EdgeInsets.only(bottom: 10)),
      //                         Container(
      //                             width: 500,
      //                             height: 200,
      //                             color: Colors.green,
      //                             margin: EdgeInsets.only(bottom: 10)),
      //                         Container(
      //                             width: 500,
      //                             height: 200,
      //                             color: Colors.yellowAccent,
      //                             margin: EdgeInsets.only(bottom: 10)),
      //                         Container(
      //                             width: 500,
      //                             height: 200,
      //                             color: Colors.red,
      //                             margin: EdgeInsets.only(bottom: 10)),
      //                         Container(
      //                             width: 500,
      //                             height: 200,
      //                             color: Colors.black,
      //                             margin: EdgeInsets.only(bottom: 10))
      //                       ],
      //                     ),
      //                   ),
      //                 ),
      //               )),
      //             ),
      //
      //
      //
      //
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),

    );
  }
}
