import 'package:assignment_10/App/Bindings/binding.dart';
import 'package:assignment_10/App/View_page/login_page.dart';
import 'package:assignment_10/App/View_page/signup_page.dart';
import 'package:get/get.dart';

class AppRoute {
  static const String initialRoute = '/SigninPage';

  static final routes = [
    GetPage(
        name: '/SigninPage', page: () => const SignupPage(), binding: Home_Binding()),
    GetPage(
        name: '/Loginpage', page: () => const LoginPage(), binding: Home_Binding()),
  ];
}
