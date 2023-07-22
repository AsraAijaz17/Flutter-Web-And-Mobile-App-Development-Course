import 'main.dart';
import 'dart:io';
import 'Dashboard.dart';
import 'signout.dart';
import 'adminAddFunctions.dart';
import 'adminUpdateFunc.dart';
import 'adminViewFunc.dart';
import 'adminRemoveFunc.dart';

admin() {
  bool condition = true;
  while (condition) {
    print("========================================");
    print("To Login as Admin Please Enter ID & Pass");
    print("========================================");

    print("Enter Email: ");
    String Email = stdin.readLineSync()!;
    print("Enter your Password:");
    String Password = stdin.readLineSync()!;

    if (Email == adminList[0]["Email"] &&
        Password == adminList[0]["Password"]) {
      condition = false;
      loggedInAsAdmin();
    } else {
      print("xxxxxxxxxx Invalid login xxxxxxxxxx ");
      print(" ");
      print(
          "Press 1 to go back to main Interface or any other key to login again");
      String userInput = stdin.readLineSync()!;
      if (userInput == "1") {
        condition = false;
        mainInterface();
      } else {
        condition = true;
      }
    }
  }
}

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

loggedInAsAdmin() {
  print("...........................");
  print("Welcome to admin portal");
  print("...........................");
  print("Press 3 for Signout");
  print("Press any other key to stay");

  String userInput = stdin.readLineSync()!;

  if (userInput == "3") {
    print("----------------------------------");
    signOut();
  } else {
    print("=================================");
    print("PERFORM CRUD OPERATIONS AS ADMIN");
    print("=================================");
    adminMainInterface();
  }
}

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

adminMainInterface() {
  bool condition = true;
  while (condition) {
    print("To Add more Coffees Press 1");
    print("To Update Coffees Press 2");
    print("To View Coffees Press 3");
    print("To remove Coffees Press 4");
    print("To view Users Info Press 5");
    print("To Go Back/Signout Press any other key");

    String userInput = stdin.readLineSync()!;

    if (userInput == "1") {
      addCoffees();
    } else if (userInput == "2") {
      updateCoffees();
    } else if (userInput == "3") {
      viewCoffees();
    } else if (userInput == "4") {
      removeCoffees();
    } else if (userInput == "5") {
      print("Users Information");
      viewUsersInfo();
    } else {
      print("==================================================");
      condition = false;
      signOut(); //badme signout ka function call yahan1
    }
  }
}


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
// //hukdfffffffffffiruriooooooooooooooooooooo
// remvByName() {
//   print("Enter Coffee Name");

//   String coffee = stdin.readLineSync()!;
//   String coffeeToRemove = coffee;

//   for (var i = 0; i <= coffeesList.length; i++) {
//     if (coffeesList[i]["coffeeName"] == coffeeToRemove) {
//       coffeesList.removeAt(i);
//       break;
//     }
//   }

//   // coffeesList.removeWhere((element) => element["coffeeName"] == coffeeToRemove);

//   print("removed Successfullyyyyyyyy");
//   print("========================================================");
// }

// remvByIndex() {
//   print("At what index you want to remove");
//   int indexx = int.parse(stdin.readLineSync()!);

//   var Name = coffeesList[indexx]["coffeeName"];
//   var Price = coffeesList[indexx]["coffeePrice"];

//   coffeesList.removeAt(indexx);

//   print("$Name : $Price Removed Successfully");
//   print("=========================================================");
// }

// remvByPrice() {
//   print("Press 1 to remove coffees with price equal to a specific amount:");
//   print("Press 2 to go back");
//   print("Press any other key to signout");

//   String inputt = stdin.readLineSync()!;

//   if (inputt == "1") {
//     priceEqualto();
//   } else if (inputt == "2") {
//     adminMainInterface();
//   } else {
//     signOut();
//   }
// }

// //---------------------------------
// priceEqualto() {
//   print("Enter Amount:");
//   String amount = stdin.readLineSync()!;

//   coffeesList.removeWhere((element) => element["coffeePrice"] == amount);
//   print("Coffee with price $amount removed successfull");
// }

//-----------------------------------------------------------------
// viewUsersInfo() {
//   for (var i = 0; i <= userInfo.length - 1; i++) {
//     print("$i : ${userInfo[i]}");
//   }
//   print("========================================================");
// }
