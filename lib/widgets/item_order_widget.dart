import 'package:flutter/material.dart';

class ItemOrderWidget extends StatelessWidget {
  const ItemOrderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      height: 86.0,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.redAccent,
      ),
    );
  }
}
