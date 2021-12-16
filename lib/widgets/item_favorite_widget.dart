import 'package:flutter/material.dart';

class ItemFavoriteWidget extends StatelessWidget {
  const ItemFavoriteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
