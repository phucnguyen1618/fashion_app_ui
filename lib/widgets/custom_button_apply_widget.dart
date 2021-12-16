import 'package:flutter/material.dart';

class CustomButtonApplyWidget extends StatelessWidget {
  const CustomButtonApplyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      height: 48.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          'APPLY',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
