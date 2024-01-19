import 'package:flutter/material.dart';



class MyMappinglist extends StatelessWidget {
  final List<String> itemList = ['Item 1', 'Item 2', 'Item 3', 'Item 4','Item 5','Item 6'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Mapping Example',textAlign: TextAlign.center,),
        ),
        body: Container(
          color: Colors.amberAccent,
          child: ListView.builder(
            itemCount: itemList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(itemList[index]),
                // You can add more customization here if needed
              );
            },
          ),
        ),
      ),
    );
  }
}
