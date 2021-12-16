import 'package:flutter/material.dart';

part 'history_page_children.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'History',
          style: TextStyle(
              color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.blue,
        ),
      ),
      body: Column(
        children: [
          rowHeaderTotalSpent(),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index){
              return const SizedBox();
            }),
          ),
        ],
      ),
    );
  }
}
