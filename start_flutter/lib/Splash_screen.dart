import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:start_flutter/TextField.dart';
import 'package:start_flutter/statefulWidgets_exampleApp.dart';

class splashscreen  extends StatefulWidget{
  @override
  State<splashscreen> createState() => _stacktaskState();
}

class _stacktaskState extends State<splashscreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TextFieldd(),));
    });

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(




      body:  Container(
        color: Colors.teal,

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/hm.jpeg'),
                backgroundColor: Colors.green,
                            ),
              ),
              Container(child: Text("FLUTTER", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),))
            ],
          ),
        ),
      )








    );
  }
}