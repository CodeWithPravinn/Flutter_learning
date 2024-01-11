import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class datepicker extends StatelessWidget {
  const datepicker({super.key});

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
  State<MyHomePage> createState() => Datepicker();
}

class Datepicker extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {



    var emailText= TextEditingController();
    var pass= TextEditingController();







    return Scaffold(
      //     appBar: AppBar(
      //     title: Text('Flutter555'),
      // ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('pick a date!',style:TextStyle(fontSize: 28),),
              ElevatedButton(onPressed:(){
                var datepicked= showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2025)
                );

              }, child: Text('click here!'))
            ],
          ),
        )


    );
  }
}
