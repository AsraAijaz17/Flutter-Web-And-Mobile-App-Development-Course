import 'admin.dart';
import 'main.dart';
import 'dart:io';
// import 'Dashboard.dart';
import 'signout.dart';
import 'adminViewFunc.dart';

updateCoffees() {
  print("================");
  print("UPDATING COFFEES");
  print("================");

  print("Press 1 to update Coffee Name");
  print("Press 2 to update Coffee Price");
  print("Press 3 To update both");
  print("Press 4 To Signout");
  print("Press any other key to go back");

  String update = stdin.readLineSync()!;

  if (update == "1") {
    updateName();
  } else if (update == "2") {
    updatePrice();
  } else if (update == "3") {
    updateBoth();
  } else if (update == "4") {
    signOut();
  } else {
    adminMainInterface();
  }
}

//-----------------------------------------------------------------------------

updateName() {
  print("Here is the list of the coffees");
  viewByIndex();
  print("Enter name of the coffee you want to update");
  String currentCoffee = stdin.readLineSync()!;
  print("Enter the updated Name");
  String updatedCoffeeName = stdin.readLineSync()!;

  bool coffeeFound = false;

  for (var c in coffeesList) {
    if (c["coffeeName"] == currentCoffee) {
      c["coffeeName"] = updatedCoffeeName;
      coffeeFound = true;
      break;
    }
  }

  if (coffeeFound) {
    print("Coffee updated successfully!");
    print("Old Name: $currentCoffee , New Name : $updatedCoffeeName");
    print("==============================================");
  } else {
    print("No coffee found with the name $currentCoffee");
    print("==============================================");
  }
}

//-------------------------------------------------------------------
updatePrice() {
  print("Here is the list of the coffees");
  viewByIndex();
  print("Enter name of the coffee you want to update price");
  String currentCoffee = stdin.readLineSync()!;
  print("Enter the Price");
  String updatedPrice = stdin.readLineSync()!;

  bool coffeeFound = false;

  for (var c in coffeesList) {
    if (c["coffeeName"] == currentCoffee) {
      c["coffeePrice"] = updatedPrice;
      coffeeFound = true;
      break;
    }
  }

  if (coffeeFound) {
    print("Coffee Price updated successfully!");
    print("New Price of the Coffee $currentCoffee is $updatedPrice ");
    print("==============================================");
  } else {
    print("No coffee found with the name $currentCoffee");
    print("==============================================");
  }
}

//-------------------------------------------------------------------

updateBoth() {
  print("Here is the list of the coffees");
  viewByIndex();
  print("Enter name of the coffee you want to update Name and price");
  String currentCoffee = stdin.readLineSync()!;

  print("Enter Updated Name");
  String updatedCoffee = stdin.readLineSync()!;

  print("Enter the Price");
  String updatedPrice = stdin.readLineSync()!;

  bool coffeeFound = false;

  for (var c in coffeesList) {
    if (c["coffeeName"] == currentCoffee) {
      c["coffeePrice"] = updatedPrice;
      c["coffeeName"] = updatedCoffee;
      coffeeFound = true;
      break;
    }
  }

  if (coffeeFound) {
    print("Coffee Name & Price updated successfully!");
    print(
        "New name and price of the Coffee $currentCoffee is $updatedCoffee &  Rs. $updatedPrice ");
    print("==============================================");
  } else {
    print("No coffee found with the name $currentCoffee");
    print("==============================================");
  }
}
