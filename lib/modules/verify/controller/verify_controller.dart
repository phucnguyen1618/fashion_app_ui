import 'dart:developer';

import 'package:fashion_app_ui/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyController extends GetxController {
  GlobalKey<FormState> verifyCodeKey = GlobalKey();

  onVerifyCode(String code) {
    verifyCodeKey.currentState!.validate()
        ? code.compareTo('1618') == 0
            ? Get.toNamed(Routes.HOME)
            : log('Code Error')
        : log('Text Input not validate');
  }

  onNext() {
    Get.toNamed(Routes.HOME);
  }
}
