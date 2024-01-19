import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class stacktask  extends StatefulWidget{
  @override
  State<stacktask> createState() => _stacktaskState();
}

class _stacktaskState extends State<stacktask> {

  var myopacity = 1.0;
  bool invisible = true;



  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title: Text("")),



        body:  Stack(
          fit: StackFit.expand,
          children: [

            Image.network(
              'assets/images/hm.jpeg',
              fit: BoxFit.cover,
            ),

            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.black.withOpacity(0.5), // Adjust the opacity as needed
              ),
            ),
            // Focused Text Layer
            Center(
              child: Container(
                width: 300,
                height: 300,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'PRAJAPATI PRAVIN',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '==> i am from kalol.',
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '==> i studying in silver oak university and currently i am in 6th sem.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '==> i want to become a android developer.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '==> currently i startded flutter tutorial for learning.',
                        textAlign: TextAlign.center,
                      ),
                    ),


                  ],
                ),
              ),
            ),
            // ElevatedButton(onPressed: (){
            //   if(invisible){
            //     myopacity = 0.0;
            //     invisible = false;
            //   }
            //   else{
            //     myopacity = 1.0;
            //     invisible = true;
            //   }
            // },
            //     child: Text("discard"))
          ],
        ),








    );
  }
}