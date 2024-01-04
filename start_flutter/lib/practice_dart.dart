
import 'dart:io';

void main(){

  // for print data or show output use,
  print('hello someone !');

  stdout.write('what is ur good name ! :');

  // for take user input use,
  var name= stdin.readLineSync();
  stdout.write("Greate...namaste , $name");

  // create class and call
    new Human();

  // declaration of variables
  // ? defines that a variable is a nullable,
  // if u don't put a ? then u have to assign value to a variable
  int? a ;

  print('a');

 // function call here
  var myC = myClass(); // add first addition
  print(myC.Add(50,300));

  print(myC.Add(256,675));

  // list
  var list= [10,30,50,70,100];
  print("$list");

  // blank list and add all element of previous list
  var list2= [];
  // for add element in current list
  list2.add("pravin");
  list2.add("kush");
  list2.addAll(list);

  // insert element in list using index
  list2.insert(2, 250);
  print("$list2");
  // list2.insertAll(3, list); for add whole list at perticular position

  //Maps
  var map_name = {
    'key1': "crick",
    'key2': 30,
    'key3': 2.45,
    'key4': true
  };
  // overwrite key value --> map_name['key2']= "kamlesh";
      print("map key value is ${map_name['key2']}");
      print(map_name);

      // another way to use map
          //   var A = {};
          //
          //   A['KEY1'] = "pravin";
          //   A['key'] = 340;
          //   A['dvsdbv'] = 5666.24344;
          //        print(A);

  // conditional programming
    var c = 100;
    var d =210;
      if(c<d && c>50){
        // code execution
        print("******* ***** *** * **");
      }
      else if(c>d){
        // another condition
      }
      else {
        // rest condition
        print("your given details verified successfully !");
        }


}
// class call here
class Human{
  Human();
}

// function making and calling
class myClass{
  int Add(int no1,int no2){

    int sum = no1+no2;
    return sum;

  }
}

