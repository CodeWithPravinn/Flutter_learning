import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class MyListview extends StatelessWidget {
  const MyListview({super.key});

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
  State<MyHomePage> createState() => _MyHomePageStat();
}

class _MyHomePageStat extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    var names= ['PRAVIN','KUSH','SAKSHI','PALLAVI','JIYA','AROHI','MIHIR','ARJUN','JAYESH','KRUPA','SURAJ','LIZAN','xyz','kohli','sharma','ronaldo','modi','messi'];









    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Flutter555'),
        // ),
        body: Container(
          width: 600,
          color: Colors.orange,
          child: Center(
              child: ListView.separated(itemBuilder: (context, index) {
                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(names[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 21),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(names[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 21),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(names[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 21),),
                    )
                  ],
                );
              },
                itemCount: names.length,
                separatorBuilder: (context, index) {
                  return Divider(height: 50,thickness: 3,);
                },
              )
          ),
        )

    );
  }
}
