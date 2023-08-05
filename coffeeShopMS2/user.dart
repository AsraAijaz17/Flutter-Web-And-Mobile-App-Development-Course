import 'dart:io';
// import 'admin.dart';
import 'main.dart';
import 'Dashboard.dart';
import 'signout.dart';
import 'userViewFunc.dart';

user() {
  print("Press 1 for Sign Up ");
  print("Press 2 for Sign In");
  print("Press any other key to go back");

  String userInput = stdin.readLineSync()!;
  print("=============================================");

  bool condition = true;

  if (userInput == "1") {
    print("=============================================");
    signUp();
  } else if (userInput == "2") {
    print("=============================================");
    signIn();
  } else {
    condition = false;
    mainInterface();
  }
}

//-----------------------------------------------

signIn() {
  print("===SIGN IN HERE===");

  print("Enter your Email to sign in");
  String Email = stdin.readLineSync()!;

  print("Enter your Password to sign in");
  String Password = stdin.readLineSync()!;

  bool foundd = false;

  for (var i = 0; i < userInfo.length; i++) {
    if (Email == userInfo[i]["gmailAccount"] &&
        Password == userInfo[i]["Password"]) {
      foundd = true;
      userLoggedIn();
    }
  }

  if (foundd == false) {
    print("Invalid login credentials. Please try again.");
    user();
  }
}

//---------------------------------------------------

signUp() {
  print("Creating Accout");
  print("Enter your Full Name");
  String FullName = stdin.readLineSync()!;
  print("Enter your your Password");
  String Pass = stdin.readLineSync()!;
  print("Enter your Email");
  String Email = stdin.readLineSync()!;

  Map<String, String> creatAccountInfo = {
    "fullName": FullName,
    "gmailAccount": Email,
    "Password": Pass
  };

  userInfo.add(creatAccountInfo);
  print("Account Created!");
  print("=============================================");
  mainInterface();
}

//----------------------------------------------------------

userLoggedIn() {
  print("......................");
  print("welcome to User portal");
  print("......................");
  print("Press 3 for Signout");
  print("press 4 or any other to stay");
  String userInput = stdin.readLineSync()!;
  if (userInput == "3") {
    print("======================");
    signOut();
  } else {
    userInterface();
  }

//------------------------------------------------------------------
}


