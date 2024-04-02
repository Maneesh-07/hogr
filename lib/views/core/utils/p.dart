import 'package:get/get.dart';
import 'package:hogr/views/splash/controller.dart';

class P {
  static initialize() {
    Get.put(SplashController());

  }

  static SplashController get splash => Get.find();
  // static DashboardController get dashboard => Get.find();
  
}