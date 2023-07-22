// import 'dart:io';
import 'Dashboard.dart';
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

void main() {
  print("--------------------------------------");
  print("Welcome to Coffee Shop Application");
  print("--------------------------------------");
  mainInterface();
  // int count = 0;
  // for (var i = 0; i < coffeesList.length; i++) {
  //   count += 1;
  // }
  // print(count);
}
