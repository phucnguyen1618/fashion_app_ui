import 'package:flutter/material.dart';

class ItemTrendsWidget extends StatelessWidget {
  const ItemTrendsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      width: 260.0,
      height: 280.0,
      child: Stack(
        children: [
          SizedBox(
            width: 240.0,
            height: 240.0,
            child: Image.asset('assets/images/fashion_photo.jpeg', fit: BoxFit.fill,),
          ),
          Positioned(
              left: 0.0,
              bottom: 0.0,
              child: Card(
                margin: EdgeInsets.zero,
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 20.0, left: 16.0),
                  width: 200.0,
                  height: 120.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Woman's",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Trending collection',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
            right: 0.0,
            bottom: 24.0,
            child: Container(
              color: Colors.black,
              width: 76.0,
              height: 50.0,
              child: MaterialButton(
                onPressed: () {  },
                child: const Text('Go', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
