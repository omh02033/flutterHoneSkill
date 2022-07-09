import 'package:flutterlayout/controllers/main_screen_controller.dart';
import 'package:get/get.dart';

class MainPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MainScreenController());
  }
}