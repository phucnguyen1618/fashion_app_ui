import 'package:fashion_app_ui/modules/favorite/controller/favorite_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemFavoriteWidget extends StatelessWidget {
  const ItemFavoriteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FavoriteController controller = Get.find<FavoriteController>();
    return GestureDetector(
      onTap: () => controller.onItemFavoriteClicked(),
      child: Card(
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                'assets/images/image_01.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const Positioned(
              left: 12.0,
              top: 12.0,
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
