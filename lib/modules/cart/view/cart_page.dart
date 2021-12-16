import 'package:fashion_app_ui/modules/cart/controller/cart_controller.dart';
import 'package:fashion_app_ui/widgets/custom_button_apply_widget.dart';
import 'package:fashion_app_ui/widgets/item_order_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'cart_page_children.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CartController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => controller.onBack(),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
        ),
        title: const Text(
          'My order',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const ItemOrderWidget();
                  }),
              Card(
                margin: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                child: Container(
                  height: 56.0,
                  margin: const EdgeInsets.only(
                      left: 16.0, right: 16.0, top: 10.0, bottom: 10.0),
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 16.0, top: 8.0),
                          constraints: BoxConstraints.expand(
                            width: 150.0,
                          ),
                          hintText: 'Promo Code',
                          border: InputBorder.none,
                        ),
                      ),
                      CustomButtonApplyWidget(),
                    ],
                  ),
                ),
              ),
              columnInforOrder(),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        Container(
          margin: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12.0),
          ),
          width: double.infinity,
          height: 56,
          child: MaterialButton(
            onPressed: () => controller.onCheckOut(),
            child: const Text(
              'CHECKOUT',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
