import 'main.dart';
import 'dart:io';
// import 'Dashboard.dart';
import 'signout.dart';
import 'admin.dart';

addCoffees() {
  print("================");
  print("ADDING COFFEES");
  print("================");

  print("Press 1 to add a Coffee and its price at the end of Coffees List");
  print("Press 2 to insert Coffee and its price on specific index");
  print("Press 3 to add multiple Coffees at once");
  print("Press 4 to go back");
  print("Press any other Key to signout");

  String input = stdin.readLineSync()!;

  if (input == "1") {
    addCoffeeAtLast();
  } else if (input == "2") {
    addCoffeeAtSpecificIndex();
  } else if (input == "3") {
    addMultipleCoffees();
  } else if (input == "4") {
    adminMainInterface();
  } else {
    signOut();
  }
}
//-------------------------------//

addCoffeeAtLast() {
  print("Enter Coffee Name");
  String coffee = stdin.readLineSync()!;
  print("Enter Coffee Price");
  String price = stdin.readLineSync()!;

  Map coffeesMap = {"coffeeName": coffee, "coffeePrice": price};
  coffeesList.add(coffeesMap);
  print("Added Successfully");
  print("=================================================");
}

//----------------------------------------------------

addCoffeeAtSpecificIndex() {
  print("Enter Index No");
  int index = int.parse(stdin.readLineSync()!);
  print("Enter Coffee Name");
  String coffee = stdin.readLineSync()!;
  print("Enter Coffee Price");
  String price = stdin.readLineSync()!;

  int count = 0;
  for (var i = 0; i < coffeesList.length; i++) {
    count += 1;
  }

  if (index <= count) {
    Map insertAtIndex = {"coffeeName": coffee, "coffeePrice": price};

    coffeesList.insert(index, insertAtIndex);

    print("Inserted Successfully at index $index");
    print("=======================================");
  } else {
    print("Invalid Index. Try again");
    print(
        "Alert: The last entry is at index ${count - 1}! you can insert at $count index or any index less than $count");
    addCoffees();
  }
}

//------------------------------------------------------------

addMultipleCoffees() {
  print("How many Coffees you want to add");
  int noOfCoffees = int.parse(stdin.readLineSync()!);

  List multipleCoffees = [];
  for (var i = 0; i < noOfCoffees; i++) {
    print("Enter Coffee Name");
    String coffee = stdin.readLineSync()!;
    print("Enter Coffee Price");
    String price = stdin.readLineSync()!;

    Map coffees = {"coffeeName": coffee, "coffeePrice": price};
    multipleCoffees.add(coffees);
  }

  coffeesList.addAll(multipleCoffees);

  print("$noOfCoffees Coffees Added Successfully");
  print("==================================");
}
