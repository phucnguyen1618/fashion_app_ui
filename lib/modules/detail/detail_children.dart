part of 'detail_page.dart';

extension DetailChildren on DetailPage {
  Widget rowSize() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0, top: 8.0),
      child: Row(
        children: const [
          ChooseSizeButtonWidget(size: 'S', isChoose: false),
          SizedBox(
            width: 4.0,
          ),
          ChooseSizeButtonWidget(size: 'M', isChoose: true),
          SizedBox(
            width: 4.0,
          ),
          ChooseSizeButtonWidget(size: 'L', isChoose: false),
          SizedBox(
            width: 4.0,
          ),
          ChooseSizeButtonWidget(size: 'XL', isChoose: false),
        ],
      ),
    );
  }

  Widget rowColor() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0, top: 8.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(12.5),
            ),
            child: const SizedBox(
              width: 25,
              height: 25,
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12.5),
            ),
            child: const SizedBox(
              width: 25,
              height: 25,
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(12.5),
            ),
            child: const SizedBox(
              width: 25,
              height: 25,
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(12.5),
            ),
            child: const SizedBox(
              width: 25,
              height: 25,
            ),
          ),
        ],
      ),
    );
  }

  Widget footerDetailPage() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, bottom: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          rowDisplayFavorites(),
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.0),
                bottomLeft: Radius.circular(12.0),
              ),
            ),
            width: 168.0,
            height: 56.0,
            child: MaterialButton(
              onPressed: () {},
              child: const Text(
                'Add to Cart',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget columnChooseNumber() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(28.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          RoundedButtonWidget(iconData: Icons.add, isChoose: true),
          SizedBox(
            height: 8.0,
          ),
          Text(
            '01',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8.0,
          ),
          RoundedButtonWidget(iconData: Icons.remove, isChoose: false),
        ],
      ),
    );
  }

  Widget rowDisplayFavorites() {
    return SizedBox(
      width: 200.0,
      height: 56.0,
      child: Stack(
        alignment: Alignment.center,
        children: const [
          Positioned(
              top: 0.0,
              bottom: 0.0,
              left: 0.0,
              child: CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Text(
                  'A',
                  style: TextStyle(color: Colors.white),
                ),
              )),
          Positioned(
              top: 0.0,
              bottom: 0.0,
              left: 16.0,
              child: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Text(
                  'B',
                  style: TextStyle(color: Colors.white),
                ),
              )),
          Positioned(
              top: 0.0,
              bottom: 0.0,
              left: 32.0,
              child: CircleAvatar(
                backgroundColor: Colors.orangeAccent,
                child: Text(
                  'C',
                  style: TextStyle(color: Colors.white),
                ),
              )),
          Positioned(
              top: 0.0,
              bottom: 0.0,
              left: 48.0,
              child: CircleAvatar(
                backgroundColor: Colors.greenAccent,
                child: Text(
                  'D',
                  style: TextStyle(color: Colors.white),
                ),
              )),
          Positioned(
            top: 0.0,
            bottom: 0.0,
            left: 64.0,
            child: CircleAvatar(
              backgroundColor: Colors.pinkAccent,
              child: Text(
                'E',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            left: 112.0,
            child: Text(
              '155+ like',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
