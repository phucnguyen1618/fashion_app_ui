import 'package:fashion_app_ui/routes/app_pages.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController {

  onBack() {
    Get.back(result: 0);
  }

  onItemFavoriteClicked() {
    Get.toNamed(Routes.DETAIL);
  }
}