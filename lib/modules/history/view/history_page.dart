import 'package:fashion_app_ui/modules/history/controller/history_page_controller.dart';
import 'package:fashion_app_ui/widgets/item_history_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'history_page_children.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HistoryController());
    return Scaffold(
      backgroundColor: Colors.white,
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
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const ItemHistoryWidget();
                }),
          ),
        ],
      ),
    );
  }
}
