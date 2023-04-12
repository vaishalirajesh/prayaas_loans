import 'package:get/get.dart';
import 'package:prayaas_loans/view/auth/login/login_binding.dart';
import 'package:prayaas_loans/view/auth/login/login_view.dart';

class SplashController extends GetxController {
  final String name = "Splash";

  void onPressButton() {
    Get.to(() => const LoginPage(), binding: LoginBinding());
  }
}
