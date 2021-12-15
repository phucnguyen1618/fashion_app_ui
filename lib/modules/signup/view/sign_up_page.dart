import 'package:fashion_app_ui/modules/signup/controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'sign_up_children.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.blue,
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text(
                'Next help?',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
            ),
          ),
        ],
      ),
      body: signUpForm(),
    );
  }
}
