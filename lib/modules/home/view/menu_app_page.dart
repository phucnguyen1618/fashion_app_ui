import 'package:fashion_app_ui/routes/app_pages.dart';
import 'package:fashion_app_ui/widgets/item_menu_app_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'menu_app_children.dart';

class MenuAppPage extends StatelessWidget {
  const MenuAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          runSpacing: 32.0,
          children: [
            columnInfor(),
            columnMenuApp(),
          ],
        ),
      ),
    );
  }
}
