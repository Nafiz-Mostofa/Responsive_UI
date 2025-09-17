import 'package:assignment_10/App/View_page/data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class home_controller extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  RxBool visiblePassword = true.obs;
  RxBool visibleConfirmPassword = true.obs;

  RxList<UserData> listdata = RxList<UserData>([]);

  addData(name, phone, email, password) {
    listdata.add(UserData(name, phone, email, password));
    listdata.refresh();
  }

  signup(context) {
    //print(nameController.text);
    if (nameController.text.isEmpty) {
      print(nameController.text);
      showDialog(
          context: context,
          builder: (childcontext) {
            return AlertDialog(
              title: const Text("Error"),
              content: const Text("Name field must be required value"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(childcontext);
                    },
                    child: const Text("Try Again"))
              ],
            );
          });
    } else if (phoneController.text.isEmpty) {
      showDialog(
          context: context,
          builder: (childcontext) {
            return AlertDialog(
              title: const Text("Error"),
              content: const Text("Phone field must be required value"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(childcontext);
                    },
                    child: const Text("Try Again"))
              ],
            );
          });
    } else if (emailController.text.isEmpty) {
      showDialog(
          context: context,
          builder: (childcontext) {
            return AlertDialog(
              title: const Text("Error"),
              content: const Text("Email field must be required value"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(childcontext);
                    },
                    child: const Text("Try Again"))
              ],
            );
          });
    } else if (passwordController.text.isEmpty &&
        confirmpasswordController.text.isEmpty) {
      showDialog(
          context: context,
          builder: (childcontext) {
            return AlertDialog(
              title: const Text("Error"),
              content: const Text("Password field must be required value"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(childcontext);
                    },
                    child: const Text("Try Again"))
              ],
            );
          });
    } else if (passwordController.text != confirmpasswordController.text) {
      showDialog(
          context: context,
          builder: (childcontext) {
            return AlertDialog(
              title: const Text("Error"),
              content: const Text("Password Mismatch"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(childcontext);
                    },
                    child: const Text("Try Again"))
              ],
            );
          });
    } else {
      addData(nameController.text, phoneController.text, emailController.text,
          passwordController.text);
      showDialog(
          context: context,
          builder: (childcontext) {
            return AlertDialog(
              title: const Text("Complete"),
              content: const Text("Registration Successful"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(childcontext);
                    },
                    child: const Text("Back"))
              ],
            );
          });
      nameController.clear();
      phoneController.clear();
      emailController.clear();
      passwordController.clear();
      confirmpasswordController.clear();
    }
  }

  login(context) {
    if (emailController.text.isEmpty) {
      print(nameController.text);
      showDialog(
          context: context,
          builder: (childcontext) {
            return AlertDialog(
              title: const Text("Error"),
              content: const Text("Email field must be required value"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(childcontext);
                    },
                    child: const Text("Try Again"))
              ],
            );
          });
    } else if (passwordController.text.isEmpty) {
      print(nameController.text);
      showDialog(
          context: context,
          builder: (childcontext) {
            return AlertDialog(
              title: const Text("Error"),
              content: const Text("Password field must be required value"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(childcontext);
                    },
                    child: const Text("Try Again"))
              ],
            );
          });
    } else {
      for (int i = 0; i <= listdata.length; i++) {
        if (emailController.text == listdata[i].email &&
            passwordController.text == listdata[i].password) {
          showDialog(
              context: context,
              builder: (childcontext) {
                return AlertDialog(
                  title: const Text("Complete"),
                  content: const Text("Login Successful"),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(childcontext);
                        },
                        child: const Text("Back"))
                  ],
                );
              });
        } else {
          showDialog(
              context: context,
              builder: (childcontext) {
                return AlertDialog(
                  title: const Text("Error"),
                  content: const Text("Email or Password incorrect"),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(childcontext);
                        },
                        child: const Text("Try Again"))
                  ],
                );
              });
        }
      }
    }
  }
}
