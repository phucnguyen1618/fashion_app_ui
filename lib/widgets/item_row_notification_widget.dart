import 'package:flutter/material.dart';

class ItemRowNotificationWidget extends StatelessWidget {
  const ItemRowNotificationWidget({
    Key? key,
    required this.titleNotify,
    required this.descriptionNotify,
    required this.isChooseItem,
  }) : super(key: key);

  final String titleNotify;
  final String descriptionNotify;
  final bool isChooseItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      subtitle: Text(
        descriptionNotify,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 14.0,
        ),
      ),
      title: Text(
        titleNotify,
        style: const TextStyle(
            color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
      trailing: Switch(
        value: isChooseItem,
        onChanged: (value) {},
      ),
    );
  }
}
