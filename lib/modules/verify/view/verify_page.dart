import 'package:fashion_app_ui/modules/verify/controller/verify_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'verify_children.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: headerVerifyPage(),
      body: bodyVerifyPage(),
    );
  }
}
