import 'package:fashion_app_ui/widgets/item_row_notification_widget.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: const Text(
            'Notifications',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          children: const [
            ItemRowNotificationWidget(
                titleNotify: 'Discounts & Sales',
                descriptionNotify: 'Buy the stuff you love for less',
                isChooseItem: false),
            ItemRowNotificationWidget(
                titleNotify: 'Stock Notifications',
                descriptionNotify: 'If the product you comes back in stock',
                isChooseItem: true),
            ItemRowNotificationWidget(
                titleNotify: 'New Stuff',
                descriptionNotify: 'Hear it first, wear it first',
                isChooseItem: false),
            ItemRowNotificationWidget(
                titleNotify: 'Dark Mode',
                descriptionNotify: 'Wanna try dark mode?',
                isChooseItem: true),
            ItemRowNotificationWidget(
                titleNotify: 'Number Notification',
                descriptionNotify: 'Send Notification on your number',
                isChooseItem: true),
            ItemRowNotificationWidget(
                titleNotify: 'Email Notification',
                descriptionNotify: 'Send Notification on your email',
                isChooseItem: false),
          ],
        ));
  }
}
