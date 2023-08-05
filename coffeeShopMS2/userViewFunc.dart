import 'dart:io';
import 'signout.dart';
import 'main.dart';

//Main Interface for user

userInterface() {
  print("To View All Coffees Press 1");
  print("To Search Coffee By name Press 2");
  print("To View Cart Press 3");
  print("To Add Coffee into the cart Press 4");
  print("To Go Signout Press any other key");

  String userInput = stdin.readLineSync()!;

  if (userInput == "1") {
    printMenu();
    userInterface();
  } else if (userInput == "2") {
    searchByName();
    userInterface();
  } else if (userInput == "3") {
    print(Cart);
    userInterface();
  } else if (userInput == "4") {
    addToCart();
  } else {
    print("==================================================");
    Cart.clear;
    signOut();
  }
}

searchByName() {
  print("Enter Name of coffee");
  String nameOfCoffee = stdin.readLineSync()!.toLowerCase();
  bool found = false;

  for (var i = 0; i < coffeesList.length; i++) {
    var a = coffeesList[i]["coffeeName"];
    var b = a.toLowerCase();

    if (b == nameOfCoffee) {
      print("Coffee Name : ${coffeesList[i]["coffeeName"]}");
      print("Price : ${coffeesList[i]["coffeePrice"]}");
      found = true;
      print("Want to add into the Cart Press 1");
      print("If Not Press an y other key");
      String inpt = stdin.readLineSync()!;
      if (inpt == "1") {
        Map coffeeIntoCart = {
          "coffeeName": coffeesList[i]["coffeeName"],
          "coffeePrice": coffeesList[i]["coffeePrice"]
        };
        Cart.add(coffeeIntoCart);
        print("Added Successfully");
        print("------------------------------");
      }
    }
  }
  if (found == false) {
    print("$nameOfCoffee Not Available");
  }
}

//------------------------------------------------------------------

printMenu() {
  print("Coffee Menu:");
  print("------------");
  for (var coffee in coffeesList) {
    String coffeeName = coffee["coffeeName"];
    String coffeePrice = coffee["coffeePrice"];

    print("${coffeeName.padRight(15)} ${coffeePrice} Rs");
  }
  print("Press 1 to add a coffee into cart");
  print("Press 2 to go back");
  print("Press 3 to View Cart");
  print("Press any other key to Signout");

  String inp = stdin.readLineSync()!;

  if (inp == "1") {
    addToCart();
  } else if (inp == "2") {
    userInterface();
  } else if (inp == "3") {
    print(Cart);
    userInterface();
  } else {
    Cart.clear;
    signOut();
  }
}

//------------------------------------------------

addToCart() {
  print("Press 1 to add Espresso");
  print("Press 2 to add Cappuccino");
  print("Press 3 to add Latte");
  print("Press 4 to add Americano");
  print("Press 5 to add Mocha");
  print("Press 6 to add Flat White");
  print("Press 7 to add Macchiato");
  print("Press 8 to add Iced Coffee");
  print("Press 9 to add Frappuccino");
  print("Press 10 to add Affogato");
  print("Press any other key to GO BACK");

  String whichCoffee = stdin.readLineSync()!;
  int index = int.parse(whichCoffee);

  if (whichCoffee == "0") {
    Cart.add(coffeesList[0]);
    print("${coffeesList[index]["coffeeName"]} added to the cart");
    print("-----------------------------------");
    printMenu();
  } else if (whichCoffee == "1") {
    Cart.add(coffeesList[1]);
    print("${coffeesList[index]["coffeeName"]} added to the cart");
    print("-----------------------------------");
    printMenu();
  } else if (whichCoffee == "2") {
    Cart.add(coffeesList[2]);
    print("${coffeesList[index]["coffeeName"]} added to the cart");
    print("-----------------------------------");
    printMenu();
  } else if (whichCoffee == "3") {
    Cart.add(coffeesList[3]);
    print("${coffeesList[index]["coffeeName"]} added to the cart");
    print("-----------------------------------");
    printMenu();
  } else if (whichCoffee == "4") {
    Cart.add(coffeesList[4]);
    print("${coffeesList[index]["coffeeName"]} added to the cart");
    print("-----------------------------------");
    printMenu();
  } else if (whichCoffee == "5") {
    Cart.add(coffeesList[5]);
    print("${coffeesList[index]["coffeeName"]} added to the cart");
    print("-----------------------------------");
    printMenu();
  } else if (whichCoffee == "6") {
    Cart.add(coffeesList[6]);
    print("${coffeesList[index]["coffeeName"]} added to the cart");
    print("-----------------------------------");
    printMenu();
  } else if (whichCoffee == "7") {
    Cart.add(coffeesList[7]);
    print("${coffeesList[index]["coffeeName"]} added to the cart");
    print("-----------------------------------");
    printMenu();
  } else if (whichCoffee == "8") {
    Cart.add(coffeesList[8]);
    print("${coffeesList[index]["coffeeName"]} added to the cart");
    print("-----------------------------------");
    printMenu();
  } else if (whichCoffee == "9") {
    Cart.add(coffeesList[9]);
    print("${coffeesList[index]["coffeeName"]} added to the cart");
    print("-----------------------------------");
    printMenu();
  } else {
    printMenu();
  }
}

//----------------------------------------------------------------------

placeOrder(){
  for(var i=0; i < coffeesList.length;i++){
    
  }
}
