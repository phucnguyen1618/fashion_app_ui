import 'package:fashion_app_ui/widgets/new_in_widget.dart';
import 'package:fashion_app_ui/widgets/trends_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xFFFAFAFA),
        title: const Text('Fashion App UI', style: TextStyle(color: Colors.black, fontSize: 18.0),),
        leading: const Icon(Icons.sort, color: Colors.black,),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.search, color: Colors.black,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            TrendsWidget(),
            NewInWidget(),
          ],
        ),
      ),
    );
  }
}
