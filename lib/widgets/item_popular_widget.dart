import 'package:fashion_app_ui/modules/detail/view/detail_page.dart';
import 'package:flutter/material.dart';

class ItemPopularWidget extends StatelessWidget {
  const ItemPopularWidget({Key? key}) : super(key: key);

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
        margin: const EdgeInsets.only(left: 16.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                'assets/images/image_01.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: 8.0,
              left: 16.0,
              right: 16.0,
              child: Container(
                margin: const EdgeInsets.only(top: 16.0, right: 16.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white70,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Elegant Suit',
                      style: TextStyle(color: Colors.black, fontSize: 23.0),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      'For Man',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "129.000 vnd",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              left: 12.0,
              top: 12.0,
              child: Icon(
                Icons.favorite,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
