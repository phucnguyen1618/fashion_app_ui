import 'package:fashion_app_ui/modules/detail/controller/detail_controller.dart';
import 'package:fashion_app_ui/widgets/choose_size_button_widget.dart';
import 'package:fashion_app_ui/widgets/rounded_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'detail_children.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailController());
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(56.0)),
                  child: Image.asset(
                    'assets/images/image_02.jpg',
                    width: double.infinity,
                    height: 390,
                    fit: BoxFit.cover,
                  ),
                ),
                SafeArea(
                  left: true,
                  right: true,
                  top: true,
                  bottom: false,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => controller.onBack(0),
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
                left: 0.0,
                right: 0.0,
                bottom: 0.0,
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Man',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const Text(
                        'Elegan Suit',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const Text(
                        '30.000 vnd',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 16.0, right: 16.0, bottom: 16.0),
                        child: Text(
                          'University is the place where students get knowledge and new experiences. Studying in university gives a vast exposure to the student in his specified field. University builds a professional base in the studentTill their higher school students used to study in various fields. They have to read different subjects which are not in their career streams. Therefore they attend college or universities to get ample knowledge of their field.',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                          maxLines: 4,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Size',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                rowSize(),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Colors',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                rowColor(),
                              ],
                            )
                          ],
                        ),
                      ),
                      footerDetailPage(),
                    ],
                  ),
                )),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 100,
              right: 16.0,
              child: columnChooseNumber(),
            ),
          ],
        ));
  }
}
