import 'package:fashion_app_ui/modules/home/view/home_page.dart';
import 'package:fashion_app_ui/modules/signup/view/sign_up_page.dart';
import 'package:fashion_app_ui/modules/splash/view/splash_page.dart';
import 'package:fashion_app_ui/modules/verify/view/verify_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

final routePages = [
  GetPage(name: Routes.SLPASH, page: () => const SplashPage()),
  GetPage(name: Routes.SIGNUP, page: () => const SignUpPage()),
  GetPage(name: Routes.VERIFY, page: () => const VerifyPage()),
  GetPage(name: Routes.HOME, page: () => const HomePage()),
];