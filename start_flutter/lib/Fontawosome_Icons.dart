import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ficons  extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title: Text("")),



        body:const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              FaIcon(FontAwesomeIcons.amazon, color: Colors.teal,size: 60,),
              FaIcon(FontAwesomeIcons.faceAngry, color: Colors.teal,size: 60),
              FaIcon(FontAwesomeIcons.safari, color: Colors.teal,size: 60),
              FaIcon(FontAwesomeIcons.oilCan, color: Colors.teal,size: 60)
            ],
          ),
        )







    );
  }
}