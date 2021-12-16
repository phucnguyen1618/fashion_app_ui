import 'package:fashion_app_ui/widgets/item_order_widget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const ItemOrderWidget();
                }),
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Promo Code',
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                )
              ],
            )
          ],
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
            onPressed: () {},
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
