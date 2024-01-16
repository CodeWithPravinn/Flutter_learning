import 'package:flutter/material.dart';
import 'package:start_flutter/Animated_container.dart';
import 'package:start_flutter/Callback_Function.dart';
import 'package:start_flutter/Card.dart';
import 'package:start_flutter/DatePicker.dart';
import 'package:start_flutter/Fontawosome_Icons.dart';
import 'package:start_flutter/GridLayout.dart';
import 'package:start_flutter/ListTile.dart';
import 'package:start_flutter/ListView.dart';
import 'package:start_flutter/Splash_screen.dart';
import 'package:start_flutter/Stack.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:start_flutter/TextField.dart';
import 'package:start_flutter/range_sliders.dart';
import 'package:start_flutter/stack_task.dart';
import 'package:start_flutter/statefulWidgets_exampleApp.dart';



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


    var n1controllar = TextEditingController();
    var n2controllar = TextEditingController();
    var Result = "";







    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter_Learning'),
      ),
      body: stacktask(),

      //   width: double.infinity,
      //   color: Colors.deepOrangeAccent,
      //   child: Center(
      //     child: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           TextField(
      //
      //             keyboardType: TextInputType.number,
      //             controller: n1controllar,
      //
      //           ),
      //           TextField(
      //             keyboardType: TextInputType.number,
      //             controller: n2controllar,
      //
      //           ),
      //           Container(height: 20,),
      //
      //           Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 Padding(
      //                   padding: const EdgeInsets.all(8.0),
      //                   child: ElevatedButton(onPressed: (){
      //                     var no1 = int.parse(n1controllar.text.toString());
      //                     var no2 = int.parse(n2controllar.text.toString());
      //
      //                     var SUM = no1 + no2;
      //                     Result = "the sum of $no1 and $no2 = $SUM";
      //
      //                     setState((){});
      //
      //
      //                   }, child: Text('ADD')),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.all(8.0),
      //                   child: ElevatedButton(onPressed: (){
      //                     var no1 = int.parse(n1controllar.text.toString());
      //                     var no2 = int.parse(n2controllar.text.toString());
      //
      //                     var SUB = no1 - no2;
      //                     Result = "the sum of $no1 and $no2 = $SUB";
      //                     setState((){});
      //                   }, child: Text('SUB')),
      //                 ),
      //
      //               ],
      //             ),
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Padding(
      //                 padding: const EdgeInsets.all(8.0),
      //                 child: ElevatedButton(onPressed: (){
      //                   var no1 = int.parse(n1controllar.text.toString());
      //                   var no2 = int.parse(n2controllar.text.toString());
      //
      //                   var MUL = no1*no2;
      //                   Result = "the sum of $no1 and $no2 = $MUL";
      //                   setState((){});
      //                 }, child: Text('MUL')),
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.all(8.0),
      //                 child: ElevatedButton(onPressed: (){
      //                   var no1 = int.parse(n1controllar.text.toString());
      //                   var no2 = int.parse(n2controllar.text.toString());
      //
      //                   var DIV = no1/no2;
      //                   Result = "the sum of $no1 and $no2 = $DIV";
      //                   setState((){});
      //                 }, child: Text('DIV')),
      //               ),
      //             ],
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.all(21),
      //             child: Text(Result,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.black),),
      //           ),
      //           ElevatedButton(onPressed: (){
      //             Navigator.push(context, MaterialPageRoute(builder: (context) {return TextFieldd();},),);
      //           }, child: Text('next'))
      //
      //         ],
      //
      //
      //       ),
      //     ),
      //
      //   ),
      //
      //
      // )

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
