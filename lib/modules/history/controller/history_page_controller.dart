import 'package:get/get.dart';

class HistoryController extends GetxController {
  var isItemHistoryClicked = false.obs;

  onItemHistoryClicked() {
    isItemHistoryClicked.value = !isItemHistoryClicked.value;
  }
}