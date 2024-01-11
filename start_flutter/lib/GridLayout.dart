import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class gridd extends StatelessWidget {
  const gridd({super.key});

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
  State<MyHomePage> createState() => gridlayout();
}

class gridlayout extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {





  var arrColors = [
    Colors.greenAccent,
    Colors.green,
    Colors.deepOrange,
    Colors.red,
    Colors.black,
    Colors.grey,
    Colors.deepPurple,
    Colors.limeAccent,

  ];





    return Scaffold(
      //     appBar: AppBar(
      //     title: Text('Flutter555'),
      // ),
        body:SingleChildScrollView(
          child: Column(
            children: [Container(
                height: 50,child: Center(child: Text("GridView.count 🔥", style: TextStyle(fontSize: 25,),))),
              Container(
                height: 200,
                child: GridView.count(crossAxisCount: 5,
                crossAxisSpacing: 11,
                mainAxisSpacing: 11,
                children: [
                  Container(color: arrColors[0],),
                  Container(color: arrColors[1],),
                  Container(color: arrColors[2],),
                  Container(color: arrColors[3],),
                  Container(color: arrColors[4],),
                  Container(color: arrColors[5],),
                  Container(color: arrColors[6],),
                  Container(color: arrColors[7],),
          
                ],
                ),
              ),
              Container(
                height: 100,
                color: Colors.white60,
              ),
              Container(
                  height: 50,child: Center(child: Text("GridView.extent 🔥", style: TextStyle(fontSize: 25,),))),
              Container(
                height: 200,
                child: GridView.extent(maxCrossAxisExtent: 100,
                  children: [
                    Container(color: arrColors[0],),
                    Container(color: arrColors[1],),
                    Container(color: arrColors[2],),
                    Container(color: arrColors[3],),
                    Container(color: arrColors[4],),
                    Container(color: arrColors[5],),
                    Container(color: arrColors[6],),
                    Container(color: arrColors[7],),
                  ],),
              ),
              Container(
                  height: 50,child: Center(child: Text("GridView.builder 🔥", style: TextStyle(fontSize: 25,),))),

              Container(
                height: 200,
                child: GridView.builder(itemBuilder: (context, index) {
                  return Container(color: arrColors[index],);
                },itemCount: arrColors.length, gridDelegate: (SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 11,
                    crossAxisSpacing: 12
                )
                ),),
              )
            ],
          ),
        )


    );
  }
}
