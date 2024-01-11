import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class stack  extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("")),



      body:  Container(
        width: double.infinity,
        color: Colors.black12,
        child: Center(
          child: Stack(
            children: [
              Container(
                width: 200,
                height: 450,
                color: Colors.blue,
              ),
              Positioned(
                top: 130,
                left: 100,
                child: Container(
                  width: 150,
                  height: 350,
                  color: Colors.limeAccent,
                ),
              ),
              Container(
                width: 100,
                height: 250,
                color: Colors.green,
              ),
              Positioned(
                top: 10,
                left: 20,
                child: Container(
                  width: 50,
                  height: 150,
                  color: Colors.purpleAccent,
                ),
              ),
              Positioned(
                top: 10,
                left: 20,
                child: Container(
                  width: 20,
                  height: 50,
                  color: Colors.teal,
                ),
              ),

            ],
          ),
        ),
      )








    );
  }
}