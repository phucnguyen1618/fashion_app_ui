import 'package:flutter/material.dart';

class ChooseSizeButtonWidget extends StatelessWidget {
  const ChooseSizeButtonWidget({
    Key? key,
    required this.size,
    required this.isChoose,
  }) : super(key: key);

  final String size;
  final bool isChoose;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isChoose ? Colors.black : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: const BorderSide(color: Colors.black, width: 1),
      ),
      child: Container(
        width: 28,
        height: 28,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: Text(
          size,
          style: TextStyle(color: isChoose ? Colors.white : Colors.black, fontSize: 10.0),
        ),
      ),
    );
  }
}
