import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter_'),
        ),
        body: Container(
          width: 300,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 200,
                      height: 150,
                      color: Colors.orange,
                      child: Center(
                          child: TextButton(
                        child: Text("click here !"),
                        onPressed: () {
                          print("yayy it's work good.");
                        },
                      )),
                    ),
                    InkWell(
                        onTap: () {
                          print("don't touch me !");
                        },
                        onDoubleTap: () {
                          print("i said don't touch me !!");
                        },
                        child: Center(
                            child: Image.asset('assets/images/hm.jpeg'))),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
