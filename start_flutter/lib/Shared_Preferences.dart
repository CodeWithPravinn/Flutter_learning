import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';




class Mysharedpreferences extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _controller = TextEditingController();
  String storedValue = '';

  @override
  void initState() {
    super.initState();
    _loadStoredValue();
  }

  Future<void> _loadStoredValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      storedValue = prefs.getString('user_preference') ?? '';
    });
  }

  Future<void> _storeValue(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user_preference', value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller,
              decoration: InputDecoration (
              label: Text('Name'),
            border: OutlineInputBorder(
        borderRadius: BorderRadius.circular (21)
      ) // Outline InputBorder
    ), // Input Decoration
    ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  String inputValue = _controller.text;
                  await _storeValue(inputValue);
                  _loadStoredValue();
                },
                child: Text('Save Preference',style: TextStyle(fontWeight: FontWeight.w500),),
              ),
              SizedBox(height: 20),
              Text(
                'Stored Value: $storedValue',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
