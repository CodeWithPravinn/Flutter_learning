import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rangeslider extends StatefulWidget {

  @override
  State<rangeslider> createState() => _rangesliderState();
}

class _rangesliderState extends State<rangeslider> {
  RangeValues values = RangeValues(0, 1);

  @override
  Widget build(BuildContext context) {

    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
        appBar: AppBar(
            title: Text("")),


        body:Center(
            child: Column(
              children:[Text("SELECT YOUR RANGE !",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),) ,
                RangeSlider(values: values,labels: labels,divisions: 10, onChanged: (newvalue){
                values = newvalue;
                print("your starting valuue is :${newvalue.start},your selective value is :${newvalue.end}");
                setState(() {

                });
              }),
          ]
            ),
        )




    );
  }
}