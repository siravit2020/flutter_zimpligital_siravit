import 'dart:async';
import 'package:flutter_zimpligital_siravit/core/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  static SplashController get to => Get.find();

  late String route;

  @override
  Future<void> onInit() async {
    await Future.delayed(const Duration(seconds: 1));
    Get.offAllNamed(Routes.main);
    super.onInit();
  }
}
