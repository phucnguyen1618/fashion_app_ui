import 'dart:math';

import 'package:fashion_app_ui/modules/home/controller/home_controller.dart';
import 'package:fashion_app_ui/modules/home/view/menu_app_page.dart';
import 'package:fashion_app_ui/widgets/item_popular_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'home_children.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const MenuAppPage(),
          Obx(
            () => controller.isIconMenuClicked.value
                ? TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: const Duration(milliseconds: 500),
                    builder: (_, double value, item) {
                      return Transform(
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..setEntry(0, 3, 300 * 1)
                          ..rotateY(pi / 6),
                        child: contentHome(),
                      );
                    })
                : TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: 0),
                    duration: const Duration(milliseconds: 500),
                    builder: (_, double value, item) {
                      return Transform(
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..setEntry(0, 3, 300 * 0)
                          ..rotateY(0 / 6),
                        child: contentHome(),
                      );
                    }),
          ),
        ],
      ),
      floatingActionButton: Obx(
        () => Visibility(
          visible: controller.isIconMenuClicked.value ? false : true,
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.qr_code),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
