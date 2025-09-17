import 'package:assignment_10/App/Controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<home_controller> {
  const LoginPage({super.key});

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
                margin: const EdgeInsets.only(left: 125, right: 125),
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
              margin: const EdgeInsets.only(left: 125, right: 125),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: const Color(0xff157bae), width: 5)),
              child: const Text(
                "Login",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 50,
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
              height: 15,
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                controller: controller.passwordController,
                keyboardType: TextInputType.visiblePassword,
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
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(left: 125, right: 125),
              child: ElevatedButton(
                  onPressed: () {
                    controller.login(context);
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 16),
                  )),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              "- or login with -",
              style: TextStyle(
                  color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/facebook.png',
                    height: 50,
                    width: 50,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (childcontext) => AlertDialog(
                              title: const Text('Under Maintence'),
                              content: const Text(
                                  "This login type under processing\nTry login with Email & Password"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(childcontext);
                                    },
                                    child: const Text("Back"))
                              ],
                            ));
                  },
                ),
                const SizedBox(
                  width: 15,
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/instagram.png',
                    height: 50,
                    width: 50,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (childcontext) => AlertDialog(
                              title: const Text('Under Maintence'),
                              content: const Text(
                                  "This login type under processing\nTry login with Email & Password"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(childcontext);
                                    },
                                    child: const Text("Back"))
                              ],
                            ));
                  },
                ),
                const SizedBox(
                  width: 15,
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/twitter.png',
                    height: 50,
                    width: 50,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (childcontext) => AlertDialog(
                              title: const Text('Under Maintence'),
                              content: const Text(
                                  "This login type under processing\nTry login with Email & Password"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(childcontext);
                                    },
                                    child: const Text("Back"))
                              ],
                            ));
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/github.png',
                    height: 80,
                    width: 80,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (childcontext) => AlertDialog(
                              title: const Text('Under Maintence'),
                              content: const Text(
                                  "This login type under processing\nTry login with Email & Password"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(childcontext);
                                    },
                                    child: const Text("Back"))
                              ],
                            ));
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              margin: const EdgeInsets.only(left: 100, right: 100),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/SigninPage");
                  },
                  child: const Text(
                    "Create Account",
                    style: TextStyle(fontSize: 16),
                  )),
            ),
          ]),
        ),
      );
    });
  }
}
