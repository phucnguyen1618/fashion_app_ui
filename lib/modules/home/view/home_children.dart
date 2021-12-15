part of 'home_page.dart';

extension HomeChildren on HomePage {
  Widget headerBodyHome() {
    return Column(
      children: [],
    );
  }

  Widget bottomNavigationMenu() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          title: SizedBox(),
          icon: Icon(
            Icons.home_outlined,
            color: Colors.blue,
          ),
        ),
        BottomNavigationBarItem(
          title: SizedBox(),
          icon: Icon(
            Icons.search,
            color: Colors.blue,
          ),
        ),
        BottomNavigationBarItem(
          title: SizedBox(),
          icon: Icon(
            Icons.favorite_border,
            color: Colors.blue,
          ),
        ),
        BottomNavigationBarItem(
          title: SizedBox(),
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.blue,
          ),
        ),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
