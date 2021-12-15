import 'package:flutter/material.dart';

class RoundedButtonWidget extends StatelessWidget {
  const RoundedButtonWidget({
    Key? key,
    required this.iconData,
    required this.isChoose,
  }) : super(key: key);

  final IconData iconData;
  final bool isChoose;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isChoose ? Colors.white : Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: const BorderSide(color: Colors.white, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Icon(
          iconData,
          color: isChoose ? Colors.blue : Colors.white,
          size: 20.0,
        ),
      ),
    );
  }
}
