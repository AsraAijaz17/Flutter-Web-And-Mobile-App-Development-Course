// import 'dart:io';
import 'Dashboard.dart';
import 'dart:io';
// import 'admin.dart';

List adminList = [
  {"Email": "admin@gmail.com", "Password": "admin"}
];

List coffeesList = [
  {"coffeeName": "Espresso", "coffeePrice": "150"},
  {"coffeeName": "Cappuccino", "coffeePrice": "180"},
  {"coffeeName": "Latte", "coffeePrice": "210"},
  {"coffeeName": "Americano", "coffeePrice": "165"},
  {"coffeeName": "Mocha", "coffeePrice": "240"},
  {"coffeeName": "Flat White", "coffeePrice": "195"},
  {"coffeeName": "Macchiato", "coffeePrice": "200"},
  {"coffeeName": "Iced Coffee", "coffeePrice": "250"},
  {"coffeeName": "Frappuccino", "coffeePrice": "270"},
  {"coffeeName": "Affogato", "coffeePrice": "225"}
];

List<Map<String, String>> userInfo = [
  {"fullName": "Asra", "gmailAccount": "asra@gmail.com", "Password": "123"},
  {"fullName": "Aliza", "gmailAccount": "aliza@gmail.com", "Password": "456"},
  {"fullName": "Aimen", "gmailAccount": "aimen@gmail.com", "Password": "1783"}
];

List<Map> Cart = [
 
];

void main() {
  print("--------------------------------------");
  print("Welcome to Coffee Shop Application");
  print("--------------------------------------");
  mainInterface();

  // List Coffees = [];
  // for (var i = 0; i < Cart.length; i++) {
  //   Coffees.add(Cart[i]["coffeeName"]);
  // }
  // print(Coffees);

  // for (var i = 0; i < Coffees.length; i++) {
  //   var name = Coffees[0];
  //   int count = 0;

  //   for (var j = 0; j < Coffees.length; j++) {
  //     if (name == Coffees[j]) {
  //       count += 1;
  //     }
  //   }
  //   print("$name: $count times");
  // }
}
