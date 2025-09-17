import 'package:assignment_10/App/Controller/controller.dart';
import 'package:get/get.dart';

class Home_Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => home_controller());
  }
}
