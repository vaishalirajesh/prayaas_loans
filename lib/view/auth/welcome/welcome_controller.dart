import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prayaas_loans/services/common/tg_log.dart';

class WelcomeController extends GetxController {
  final userIdController = TextEditingController();
  final passwordController = TextEditingController();

  void onChange(String str) {}

  @override
  void onInit() {
    TGLog.d("In splash screen-------");
    Future.delayed(const Duration(milliseconds: 500), () {
      // Get.off(() => const LoginPage());
      // Get.to(() => const LoginPage());
    });
    super.onInit();
  }
}
