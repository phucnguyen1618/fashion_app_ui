import 'package:fashion_app_ui/modules/home/controller/home_controller.dart';
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
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.sort,
          color: Colors.black,
        ),
        actions: [
          GestureDetector(
            onTap: () => controller.onAvatarProfileClicked(),
            child: const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                child: Text('P'),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerBodyHome(),
          Container(
            margin: const EdgeInsets.all(8.0),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 28.0, bottom: 16.0),
            child: Text(
              'Popular Collection',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const ItemPopularWidget();
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomNavigationMenu(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.crop_free,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
