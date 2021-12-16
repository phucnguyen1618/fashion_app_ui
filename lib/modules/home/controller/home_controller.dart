import 'package:fashion_app_ui/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;

  void onItemBottomNavigationBarTap(int index) async {
    currentIndex.value = index;
    switch (index) {
      case 0:
        currentIndex.value = await Get.toNamed(Routes.HOME);
        break;
      case 1:
        return;
      case 2:
        currentIndex.value = await Get.toNamed(Routes.FAVORITE);
        break;
      case 3:
        currentIndex.value = await Get.toNamed(Routes.CART);
        break;
    }
  }
}
