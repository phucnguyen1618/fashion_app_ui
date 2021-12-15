part of 'home_page.dart';

extension HomeChildren on HomePage {
  Widget headerBodyHome() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: RichText(
        text: const TextSpan(
          text: "Let's\n",
          style: TextStyle(color: Colors.black, fontSize: 23.0),
          children: [
            TextSpan(
              text: "Get Started!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bottomNavigationMenu() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          title: SizedBox(),
          icon: Icon(
            Icons.home_outlined,
            color: Colors.black,
          ),
          activeIcon: Icon(
            Icons.home_outlined,
            color: Colors.blue,
          ),
        ),
        BottomNavigationBarItem(
          title: SizedBox(),
          icon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.search,
            color: Colors.blue,
          ),
        ),
        BottomNavigationBarItem(
          title: SizedBox(),
          icon: Icon(
            Icons.favorite_border,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.favorite_border,
            color: Colors.blue,
          ),
        ),
        BottomNavigationBarItem(
          title: SizedBox(),
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.blue,
          ),
        ),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
