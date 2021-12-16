part of 'home_page.dart';

extension HomeChildren on HomePage {
  Widget appBarHome() {
    final controller = Get.put(HomeController());
    return SafeArea(
        left: true,
        top: true,
        right: true,
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => GestureDetector(
                onTap: () => controller.onMenuAppClicked(),
                child: Icon(
                  Icons.sort,
                  color: controller.isIconMenuClicked.value ? Colors.blue : Colors.black,
                ),
              ),),
              GestureDetector(
                onTap: () => controller.onAvatarProfileClicked(),
                child: const Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: CircleAvatar(
                    child: Text('P'),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

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
    final controller = Get.put(HomeController());
    return Obx(() => BottomNavigationBar(
        currentIndex: controller.currentIndex.value,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.home_outlined,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.home_outlined,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
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
            label: '',
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
            label: '',
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
        onTap: (index) {
          controller.onItemBottomNavigationBarTap(index);
        }));
  }

  Widget contentHome() {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appBarHome(),
          headerBodyHome(),
          Container(
            margin: const EdgeInsets.all(8.0),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 28.0, bottom: 16.0),
            child: Text(
              'Popular Collection',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const ItemPopularWidget();
              },
            ),
          ),
          bottomNavigationMenu(),
        ],
      ),
    );
  }
}
