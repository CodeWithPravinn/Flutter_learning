import 'package:flutter/material.dart';



class Mycliprrect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: Container(
          color: Colors.black38,
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(26.0),
              child: Container(
                width: 200.0,
                height: 200.0,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Hello, ClipRRect!',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
