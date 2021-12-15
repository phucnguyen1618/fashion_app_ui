import 'package:fashion_app_ui/widgets/new_in_widget.dart';
import 'package:fashion_app_ui/widgets/trends_widget.dart';
import 'package:flutter/material.dart';

part 'home_children.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xFFFAFAFA),
        leading: const Icon(
          Icons.sort,
          color: Colors.black,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              child: Text('P'),
            ),
          ),
        ],
      ),
      body: headerBodyHome(),
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
