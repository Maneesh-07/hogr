import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hogr/routes/pages.dart';

class SplashController extends GetxController {
  /// Move from loader to splash after 5 seconds
  Future<void> delayedMove({int milli = 6, String? to}) async {
    await Future.delayed(Duration(seconds: milli));
    if (kDebugMode) {
      print('splash open');
    }
    Get.offAllNamed(to ?? Routes.DASHBOARD);
  }

  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print('i was here');
    }
    delayedMove();
  }
}
