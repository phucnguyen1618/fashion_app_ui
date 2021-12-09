import 'dart:ui';

import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/nancy.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          SafeArea(
              top: true,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.shopping_basket_outlined,
                      color: Colors.black,
                    ),
                  ],
                ),
              )),
          Positioned(
              left: 48.0,
              right: 0.0,
              bottom: 0.0,
              child: Container(
                color: Colors.white,
                padding:
                    const EdgeInsets.only(left: 24.0, top: 24.0, bottom: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0, bottom: 32.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Yellow Tops',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 34.0,
                            height: 34.0,
                            alignment: Alignment.center,
                            color: Colors.black,
                            child: const Icon(
                              Icons.bookmark_border_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          'Description',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Photos',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 160.0,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  right: 16.0, top: 24.0, bottom: 24.0),
                              child: SizedBox(
                                width: 120,
                                height: 120,
                                child: Image.asset(
                                  'assets/images/fashion_photo.jpeg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            );
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24.0, bottom: 24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '129.000 vnd',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            color: Colors.black,
                            width: 96.0,
                            height: 48.0,
                            child: MaterialButton(
                              onPressed: () {},
                              child: const Text(
                                'Order',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
