void main() {
  String email = "asra@gmail.com";
  String Pass = "123";
  if (email == "asra@gmail.com") {
    if (Pass == "123") {
      print("Login Successfull both are correct");
    } else {
      print("Sorry password is wrong");
    }
  } else if (Pass == "123") {
    if (Pass != "123") {
      print("your email is incorrect try again");
    } else if (email != "asra@gmail.com") {
      print("Your email is wrong");
    }
  } else {
    print("your email and pass both are wrong");
  }
}
