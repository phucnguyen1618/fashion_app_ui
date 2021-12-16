part of 'menu_app_page.dart';

extension MenuAppChildren on MenuAppPage {
  Widget columnInfor() {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(35.0),
            child: Image.asset(
              'assets/images/image_02.jpg',
              width: 70.0,
              height: 70.0,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            'David Will',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            'demo.email@example.com',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget columnMenuApp() {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Get.toNamed(Routes.PROFILE),
            child: const ItemMenuAppWidget(
              color: Colors.red,
              iconData: Icons.person,
              content: 'Edit Profile',
            ),
          ),
          GestureDetector(
            onTap: () => Get.toNamed(Routes.CART),
            child: const ItemMenuAppWidget(
              color: Colors.green,
              iconData: Icons.shopping_cart,
              content: 'My Orders (1)',
            ),
          ),
          GestureDetector(
            onTap: () => Get.toNamed(Routes.HISTORY),
            child: const ItemMenuAppWidget(
              color: Colors.deepOrangeAccent,
              iconData: Icons.history,
              content: 'Transaction History (8)',
            ),
          ),
          GestureDetector(
            onTap: () => Get.toNamed(Routes.FAVORITE),
            child: const ItemMenuAppWidget(
              color: Colors.pink,
              iconData: Icons.favorite,
              content: 'Favorite Items (26)',
            ),
          ),
          GestureDetector(
            onTap: () => Get.toNamed(Routes.NOTIFICATION),
            child: const ItemMenuAppWidget(
              color: Colors.cyan,
              iconData: Icons.settings,
              content: 'Notifications Settings',
            ),
          ),
        ],
      ),
    );
  }
}
