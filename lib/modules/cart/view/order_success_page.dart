import 'package:fashion_app_ui/modules/cart/controller/order_success_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderSuccessPage extends StatelessWidget {
  const OrderSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OrderSuccessController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Icon(Icons.check, color: Colors.white,),
            ),
            const SizedBox(height: 16.0,),
            const Text(
              'Congrats! Order',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'Successfully Placed',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 4.0,
            ),
            const Text(
              'Your order number is #345990',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
            Container(
              width: double.infinity,
              height: 48.0,
              margin: const EdgeInsets.only(left: 48.0, right: 48.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: MaterialButton(
                onPressed: () => controller.onBackToHome(),
                child: const Text(
                  'BACK TO HOME',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
