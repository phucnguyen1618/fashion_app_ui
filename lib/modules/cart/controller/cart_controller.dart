import 'package:fashion_app_ui/routes/app_pages.dart';
import 'package:get/get.dart';

class CartController extends GetxController {

  onBack(){
    Get.back(result: 0);
  }

  onCheckOut() {
    Get.toNamed(Routes.ORDER_SUCCESS);
  }
}