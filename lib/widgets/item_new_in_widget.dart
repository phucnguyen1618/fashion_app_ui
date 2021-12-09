import 'package:fashion_app_ui/detail_page.dart';
import 'package:flutter/material.dart';

class ItemNewInWidget extends StatelessWidget {
  const ItemNewInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailPage(),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 16.0),
        child: SizedBox(
          height: 120.0,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.all(16.0),
                width: 100.0,
                height: 100.0,
                child: Image.asset(
                  'assets/images/fashion_image.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(top: 16.0, bottom: 16.0, right: 16.0),
                height: 100.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Yellow Tops',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Trending Fashion',
                      style: TextStyle(color: Colors.black54, fontSize: 16.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "129.000 vnd",
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
