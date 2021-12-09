import 'package:flutter/material.dart';

import 'item_new_in_widget.dart';

class NewInWidget extends StatelessWidget {
  const NewInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, top: 32.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 250.0,
                height: 1.0,
                color: const Color(0xFFE0E0E0),
                child: const SizedBox(),
              ),
              const Text(
                'New In',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0,),
          SizedBox(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index){
                  return const ItemNewInWidget();
                }),
          ),
        ],
      ),
    );
  }
}
