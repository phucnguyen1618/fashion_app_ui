import 'package:fashion_app_ui/widgets/custom_number_button_widget.dart';
import 'package:flutter/material.dart';

class ItemOrderWidget extends StatelessWidget {
  const ItemOrderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      height: 86.0,
      width: double.infinity,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: SizedBox(width: 80.0, height: 80.0,
                child: Image.asset('assets/images/image_03.jpeg', fit: BoxFit.fill,),),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Party Dress',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 3.0,),
                    Text(
                      'For Man',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '40.000 vnd',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 65.0,),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Row(
                        children: const [
                          CustomNumberButtonWidget(iconData: Icons.remove, isChoose: true),
                          SizedBox(width: 4.0,),
                          Text('02', style: TextStyle(color: Colors.black, fontSize: 16.0),),
                          SizedBox(width: 4.0,),
                          CustomNumberButtonWidget(iconData: Icons.add, isChoose: false),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
