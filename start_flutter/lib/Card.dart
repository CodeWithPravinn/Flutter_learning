import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class Cardd extends StatelessWidget {
  const Cardd({super.key});

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
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {











    return Scaffold(
      //     appBar: AppBar(
      //     title: Text('Flutter555'),
      // ),
        body: Container(
          width: 600,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: [
                  Card(
                    elevation: 40,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('HRLLO EVERYONE !', textAlign: TextAlign.center, style: TextStyle(fontSize: 25),),
                    ),
                  ),
                  Card(
                    elevation: 40,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('i m pravin prajapati', textAlign: TextAlign.center, style: TextStyle(fontSize: 25),),
                    ),
                  ),
                  Card(
                    elevation: 40,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('xyz', textAlign: TextAlign.center, style: TextStyle(fontSize: 25),),
                    ),
                  ),
                  Card(
                    elevation: 40,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('have a good day!', textAlign: TextAlign.center, style: TextStyle(fontSize: 25),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )



    );
  }
}
