import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class TextFieldd extends StatelessWidget {
  const TextFieldd({super.key});

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
  State<MyHomePage> createState() => textfield();
}

class textfield extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {



var emailText= TextEditingController();
var pass= TextEditingController();







    return Scaffold(
      //     appBar: AppBar(
      //     title: Text('Flutter555'),
      // ),
        body:Center(child: Container(
            width: 600,
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text('Name: '),
                        Container(
                          width: 200,
                          child: TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.deepOrange, width: 3)
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.green, width: 1)
                              ),
                              prefixIcon: Icon(
                                Icons.account_circle_outlined
                              ),
                              prefixIconColor: Colors.green,
                              suffixText: "",


                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text('Email: '),
                        Container(
                          width: 250,
                          child: TextField(
                            controller: emailText,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.deepOrange, width: 3)
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.green, width: 1)
                                ),
                              prefixIcon: Icon(
                                  Icons.email_outlined
                              ),
                              prefixIconColor: Colors.green,
                              suffixText: "@gmail.com",
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text('Mobile No: '),
                        Container(
                          width: 200,
                          child: TextField(
                            controller: pass,
                            obscureText: true,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.deepOrange, width: 3)
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.green, width: 1)
                                ),
                              prefixIcon: Icon(
                                  Icons.add_call
                              ),
                              prefixIconColor: Colors.green,
                              suffixText: "",
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    String uEmail = emailText.text.toString();
                    String uPass = pass.text;
                    
                    print("Email :$uEmail, Mobile : $uPass");
                  }, child: Text("LogiN"))
                ],
              ),
            )))



    );
  }
}
