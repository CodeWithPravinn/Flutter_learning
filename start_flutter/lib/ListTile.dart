import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class MyListTile extends StatelessWidget {
  const MyListTile({super.key});

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

    var names= ['PRAVIN','KUSH','SAKSHI','PALLAVI','JIYA','AROHI','MIHIR','ARJUN','JAYESH','KRUPA','SURAJ','LIZAN','xyz','kohli','sharma','ronaldo','modi','messi'];









    return Scaffold(
    //     appBar: AppBar(
    //     title: Text('Flutter555'),
    // ),
    body: ListView.separated(itemBuilder: (context, index) {
      return ListTile(
        leading: Text('${index+1}'),
        title: Text(names[index]),
        subtitle: Text('9313329237'),
        trailing: Icon(Icons.add),
      );
    },
    itemCount: names.length,
    separatorBuilder: (context, index) {
    return Divider(height: 50,thickness: 3,);
    },
    )



    );
  }
}
