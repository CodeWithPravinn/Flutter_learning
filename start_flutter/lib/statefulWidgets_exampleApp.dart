import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class statefulw  extends StatefulWidget {



  @override
  State<statefulw> createState() => _statefulwState();
}

class _statefulwState extends State<statefulw> {
  var n1controllar = TextEditingController();

  var n2controllar = TextEditingController();

  var RESULT = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //     title: Text("")),


        body: Container(
          width: double.infinity,
          color: Colors.deepOrangeAccent,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(

                    keyboardType: TextInputType.number,
                    controller: n1controllar,

                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: n2controllar,

                  ),
                  Container(height: 20,),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(onPressed: (){
                            var no1 = int.parse(n1controllar.text.toString());
                            var no2 = int.parse(n2controllar.text.toString());

                            var SUM = no1 + no2;
                            RESULT = "the sum of $no1 and $no2 = $SUM";
                             setState(() {

                             });


                          }, child: Text('ADD')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(onPressed: (){
                            var no1 = int.parse(n1controllar.text.toString());
                            var no2 = int.parse(n2controllar.text.toString());

                            var SUB = no1 - no2;
                            RESULT = "the sum of $no1 and $no2 = $SUB";
                            setState(() {

                            });
                          }, child: Text('SUB')),
                        ),

                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(onPressed: (){
                          var no1 = int.parse(n1controllar.text.toString());
                          var no2 = int.parse(n2controllar.text.toString());

                          var MUL = no1*no2;
                          RESULT = "the sum of $no1 and $no2 = $MUL";
                          setState(() {

                          });
                        }, child: Text('MUL')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(onPressed: (){
                          var no1 = int.parse(n1controllar.text.toString());
                          var no2 = int.parse(n2controllar.text.toString());

                          var DIV = no1/no2;
                          RESULT = "the sum of $no1 and $no2 = $DIV";
                          setState(() {

                          });
                        }, child: Text('DIV')),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(21),
                    child: Text(RESULT,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                  )

                ],

              ),
            ),

          ),


        )


    );
  }
}