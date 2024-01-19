import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bmiapp  extends StatefulWidget{
  @override
  State<bmiapp> createState() => _bmiappState();
}

class _bmiappState extends State<bmiapp> {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  double bmiResult = 0.0;




  @override
  Widget build(BuildContext context){
    return Scaffold(




        body:Container(
          color: Colors.amberAccent,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: heightController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Height (in cm)'),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: weightController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Weight (in kg)'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: calculateBMI,
                  child: Text('Calculate BMI',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),
                ),
                SizedBox(height: 16),
                Text('BMI: $bmiResult',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              ],
            ),
          ),
        ),
    );
  }

  void calculateBMI() {
    double height = double.tryParse(heightController.text) ?? 0.0;
    double weight = double.tryParse(weightController.text) ?? 0.0;

    if (height > 0 && weight > 0) {
      setState(() {
        bmiResult = calculateBMIValue(height, weight);
      });
    }
  }

  double calculateBMIValue(double height, double weight) {
    // BMI Formula: BMI = weight (kg) / (height (m))^2
    return weight / ((height / 100) * (height / 100));
  }
}










