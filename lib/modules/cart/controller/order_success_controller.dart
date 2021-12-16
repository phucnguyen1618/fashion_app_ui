import 'package:fashion_app_ui/routes/app_pages.dart';
import 'package:get/get.dart';

class OrderSuccessController extends GetxController {

   onBackToHome() {
     Get.offAllNamed(Routes.HOME, arguments: 0);
   }
}