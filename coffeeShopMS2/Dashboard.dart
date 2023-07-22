// import 'main.dart';
import 'dart:io';
import 'admin.dart';
import 'user.dart';

mainInterface() {
  print("Press 1 to login as ADMIN");
  print("Press 2 to login as User");
  print("Press any other key to EXIT the program");

  String userInput = stdin.readLineSync()!;

  if (userInput == "1") {
    admin();
  } else if (userInput == "2") {
    user();
  } else {
    print("Program Ended");
  }
}
