import 'package:flutter/material.dart';

class ItemMenuAppWidget extends StatelessWidget {
  const ItemMenuAppWidget({
    Key? key,
    required this.color,
    required this.iconData,
    required this.content,
  }) : super(key: key);

  final Color color;
  final IconData iconData;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: Icon(
              iconData,
              color: Colors.white,
              size: 22,
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              content,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
