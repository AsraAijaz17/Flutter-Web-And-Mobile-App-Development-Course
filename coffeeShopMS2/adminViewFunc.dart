import 'main.dart';
import 'dart:io';
// import 'Dashboard.dart';
// import 'signout.dart';
// import 'adminAddFunctions.dart';
// import 'adminUpdateFunc.dart';

viewCoffees() {
  print("==================");
  print("View Of coffees");
  print("==================");

  print("Enter 1 to view Coffees List by Index");
  print("Enter 2 to view Coffees List by Alphabetically");
  print("Enter 3 to view Coffees List by Price");

  String ViewBy = stdin.readLineSync()!;

  if (ViewBy == "1") {
    print("Coffees list with their indexes");
    viewByIndex();
  } else if (ViewBy == "2") {
    viewAlphabetically();
  } else if (ViewBy == "3") {
    viewByPrice();
  }
}

//""""""""""""""""""""""""""""""""""""""""""""""""""""""""
viewByIndex() {
  var count = 0;
  for (var i in coffeesList) {
    print(" ${count++} : $i:");
  }
  print("========================================================");
}
//""""""""""""""""""""""""""""""""""""""""""""""""""""""""

viewAlphabetically() {
  coffeesList.sort((a, b) => a["coffeeName"].compareTo(b["coffeeName"]));

  for (var coffee in coffeesList) {
    print("${coffee["coffeeName"]}: ${coffee["coffeePrice"]}");
  }
  print("========================================================");
}

//""""""""""""""""""""""""""""""""""""""""""""""""""""""""

viewByPrice() {
  coffeesList.sort((a, b) => a["coffeePrice"].compareTo(b["coffeePrice"]));

  for (var coffee in coffeesList) {
    print("${coffee["coffeeName"]}: ${coffee["coffeePrice"]}");
  }
  print("========================================================");
}
//""""""""""""""""""""""""""""""""""""""""""""""""""""""""

viewUsersInfo() {
  for (var i = 0; i <= userInfo.length - 1; i++) {
    print("$i : ${userInfo[i]}");
  }
  print("========================================================");
}
