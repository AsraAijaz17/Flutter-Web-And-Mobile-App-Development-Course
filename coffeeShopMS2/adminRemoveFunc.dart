import 'main.dart';
import 'dart:io';
// import 'Dashboard.dart';
import 'signout.dart';
// import 'adminAddFunctions.dart';
// import 'adminUpdateFunc.dart';
import 'adminViewFunc.dart';
import 'admin.dart';

removeCoffees() {
  print("================");
  print("REMOVING COFFEES");
  print("================");

  print("Press 1 to remove a Coffee by its Name");
  print("Press 2 to remove a Coffee  by Index");
  print("Press 3 to remove  Coffee  by Price");
  print("Press 4 to go back");
  print("Press any other key to signout");

  String removeBy = stdin.readLineSync()!;

  if (removeBy == "1") {
    print("Which Coffee you want to remove?");
    viewByIndex();
    remvByName();
  } else if (removeBy == "2") {
    print("Which Coffee you want to remove?");
    viewByIndex();
    remvByIndex();
  } else if (removeBy == "3") {
    print("Which Coffee you want to remove?");
    viewByIndex();
    remvByPrice();
  } else if (removeBy == "4") {
    adminMainInterface();
  } else {
    signOut();
  }
}

//-------------------------------------------------------------------------
//-------------------------------------------------------------------------

remvByName() {
  print("Enter Coffee Name");

  String coffee = stdin.readLineSync()!;
  String coffeeToRemove = coffee;

  for (var i = 0; i <= coffeesList.length; i++) {
    if (coffeesList[i]["coffeeName"] == coffeeToRemove) {
      coffeesList.removeAt(i);
      break;
    }
  }

  // coffeesList.removeWhere((element) => element["coffeeName"] == coffeeToRemove);

  print("removed Successfullyyyyyyyy");
  print("========================================================");
}

//-------------------------------------------------------------------------

remvByIndex() {
  print("At what index you want to remove");
  int indexx = int.parse(stdin.readLineSync()!);

  var Name = coffeesList[indexx]["coffeeName"];
  var Price = coffeesList[indexx]["coffeePrice"];

  coffeesList.removeAt(indexx);

  print("$Name : $Price Removed Successfully");
  print("=========================================================");
}

//-------------------------------------------------------------------------

remvByPrice() {
  print("Press 1 to remove coffees with price equal to a specific amount:");
  print("Press 2 to go back");
  print("Press any other key to signout");

  String inputt = stdin.readLineSync()!;

  if (inputt == "1") {
    priceEqualto();
  } else if (inputt == "2") {
    adminMainInterface();
  } else {
    signOut();
  }
}

//---------------------------------
priceEqualto() {
  print("Enter Amount:");
  String amount = stdin.readLineSync()!;

  coffeesList.removeWhere((element) => element["coffeePrice"] == amount);
  print("Coffee with price $amount removed successfull");
}
