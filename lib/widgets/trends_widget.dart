import 'package:flutter/material.dart';

import 'item_trends_widget.dart';

class TrendsWidget extends StatelessWidget {
  const TrendsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 32.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Trends',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 250.0,
                height: 1.0,
                color: const Color(0xFFE0E0E0),
                child: const SizedBox(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 20.0, bottom: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Spring Summer 2020', style: TextStyle(fontSize: 16.0),),
                Text('View all', style: TextStyle(fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          SizedBox(
            height: 280.0,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
              return const ItemTrendsWidget();
            }),
          ),
        ],
      ),
    );
  }
}
