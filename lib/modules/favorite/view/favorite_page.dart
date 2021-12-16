import 'package:fashion_app_ui/modules/favorite/controller/favorite_controller.dart';
import 'package:fashion_app_ui/widgets/item_favorite_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FavoriteController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => controller.onBack(),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
        ),
        title: const Text(
          'Favorites',
          style: TextStyle(
              color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 8.0, right: 12.0),
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 12.0, mainAxisSpacing: 12.0),
            itemBuilder: (context, index) {
              return const ItemFavoriteWidget();
            }),
      ),
    );
  }
}
