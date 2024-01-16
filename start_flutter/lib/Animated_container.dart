import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class A_con extends StatefulWidget {

  @override
  State<A_con> createState() => _rangesliderState();
}

class _rangesliderState extends State<A_con> {
  var _width = 200.0;
  var _height = 300.0;
  var flag = true;
  var bgcolor = Colors.blue;

  @override
  Widget build(BuildContext context) {



    return Scaffold(
        appBar: AppBar(
            title: Text("")),


        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedContainer(
                  duration: Duration(seconds: 2),
                  width: _width,
                  height: _height,
                  color: bgcolor,


                ),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  if(flag) {
                    _width = 400.0;
                    _height = 200.0;
                    bgcolor = Colors.orange;
                    flag = false;
                  }
                    else{
                    _width= 300.0;
                    _height = 100.0;
                    bgcolor = Colors.blueGrey;
                    flag = true;
                  }


                });

              },
                  child: Text("click for animation!"))
            ],
          ),
        )




    );
  }
}