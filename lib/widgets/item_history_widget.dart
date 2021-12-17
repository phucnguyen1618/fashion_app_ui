import 'package:fashion_app_ui/modules/history/controller/history_page_controller.dart';
import 'package:fashion_app_ui/widgets/item_detail_history_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemHistoryWidget extends StatelessWidget {
  const ItemHistoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HistoryController controller = Get.find<HistoryController>();
    return Column(
      children: [
        ListTile(
          title: const Text(
            '#25963156',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          subtitle: const Text(
            '12.000 - 3 March, 2021',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13.0,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_drop_down,
            color: Colors.blue,
          ),
          onTap: () => controller.onItemHistoryClicked(),
        ),
        Obx(() => Visibility(
          visible: controller.isItemHistoryClicked.value,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return const ItemDetailHistoryWidget();
              }),
        ),),
      ],
    );
  }
}
