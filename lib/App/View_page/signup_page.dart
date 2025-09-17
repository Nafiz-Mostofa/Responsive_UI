import 'package:assignment_10/App/Controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends GetView<home_controller> {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 40),
          decoration: const BoxDecoration(color: Color(0xff261f53)),
          child: ListView(children: [
            const SizedBox(
              height: 40,
            ),
            Container(
                margin: const EdgeInsets.only(left: 135, right: 135),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: const Color(0xff157bae), width: 5)),
                child: Container(
                    child: const Icon(
                  Icons.person,
                  size: 120,
                  color: Color(0xff157bae),
                ))),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.only(left: 100, right: 100),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: const Color(0xff157bae), width: 5)),
              child: const Text(
                "Registration",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                controller: controller.nameController,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.white, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.blueAccent, width: 2),
                  ),
                  prefix: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  labelText: 'Name',
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.blueAccent),
                ),
                cursorColor: Colors.white,
                toolbarOptions: const ToolbarOptions(
                    copy: true, cut: true, selectAll: true, paste: true),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                controller: controller.phoneController,
                keyboardType: TextInputType.phone,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.white, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.blueAccent, width: 2),
                  ),
                  prefix: const Icon(
                    Icons.phone_android_sharp,
                    color: Colors.white,
                  ),
                  labelText: 'Phone Number',
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.blueAccent),
                ),
                cursorColor: Colors.white,
                toolbarOptions: const ToolbarOptions(
                    copy: true, cut: true, selectAll: true, paste: true),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                controller: controller.emailController,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.white, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.blueAccent, width: 2),
                  ),
                  prefix: const Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                  ),
                  labelText: 'Email',
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.blueAccent),
                ),
                cursorColor: Colors.white,
                toolbarOptions: const ToolbarOptions(
                    copy: true, cut: true, selectAll: true, paste: true),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                controller: controller.passwordController,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.white, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.blueAccent, width: 2),
                  ),
                  prefix: const Icon(
                    Icons.password,
                    color: Colors.white,
                  ),
                  suffixIconColor: Colors.white,
                  suffixIcon: IconButton(
                      onPressed: () {
                        controller.visiblePassword.value =
                            !controller.visiblePassword.value;
                      },
                      icon: Icon(controller.visiblePassword.value
                          ? Icons.visibility_off
                          : Icons.visibility)),
                  labelText: 'Password',
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.blueAccent),
                ),
                cursorColor: Colors.white,
                obscureText: controller.visiblePassword.value,
                toolbarOptions: const ToolbarOptions(
                    copy: true, cut: true, selectAll: true, paste: true),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                controller: controller.confirmpasswordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: controller.visibleConfirmPassword.value,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.white, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.blueAccent, width: 2),
                  ),
                  prefix: const Icon(
                    Icons.password,
                    color: Colors.white,
                  ),
                  suffixIconColor: Colors.white,
                  suffixIcon: IconButton(
                      onPressed: () {
                        controller.visibleConfirmPassword.value =
                            !controller.visibleConfirmPassword.value;
                      },
                      icon: Icon(controller.visibleConfirmPassword.value
                          ? Icons.visibility_off
                          : Icons.visibility)),
                  labelText: 'Confirm Password',
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.blueAccent),
                ),
                cursorColor: Colors.white,
                toolbarOptions: const ToolbarOptions(
                    copy: true, cut: true, selectAll: true, paste: true),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              margin: const EdgeInsets.only(left: 125, right: 125),
              child: ElevatedButton(
                  onPressed: () {
                    controller.signup(context);
                  },
                  child: const Text(
                    "Signup",
                    style: TextStyle(fontSize: 16),
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Already Have an account?",
              style: TextStyle(
                  color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(left: 125, right: 125),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/Loginpage");
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 16),
                  )),
            ),
          ]),
        ),
      );
    });
  }
}
