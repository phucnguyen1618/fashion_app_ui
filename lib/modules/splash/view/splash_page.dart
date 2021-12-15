import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Fashion App', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 18.0),
        ),
      ),
    );
  }
}
