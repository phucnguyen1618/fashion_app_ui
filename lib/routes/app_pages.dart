import 'package:fashion_app_ui/modules/cart/view/cart_page.dart';
import 'package:fashion_app_ui/modules/cart/view/order_success_page.dart';
import 'package:fashion_app_ui/modules/detail/view/detail_page.dart';
import 'package:fashion_app_ui/modules/favorite/view/favorite_page.dart';
import 'package:fashion_app_ui/modules/history/view/history_page.dart';
import 'package:fashion_app_ui/modules/home/view/home_page.dart';
import 'package:fashion_app_ui/modules/home/view/menu_app_page.dart';
import 'package:fashion_app_ui/modules/notification/notification_page.dart';
import 'package:fashion_app_ui/modules/profile/view/profile_page.dart';
import 'package:fashion_app_ui/modules/signup/view/sign_up_page.dart';
import 'package:fashion_app_ui/modules/splash/view/splash_page.dart';
import 'package:fashion_app_ui/modules/verify/view/verify_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

final routePages = [
  GetPage(name: Routes.SLPASH, page: () => const SplashPage()),
  GetPage(name: Routes.SIGNUP, page: () => const SignUpPage()),
  GetPage(name: Routes.VERIFY, page: () => const VerifyPage()),
  GetPage(name: Routes.HOME, page: () => const HomePage()),
  GetPage(name: Routes.FAVORITE, page: () => const FavoritePage()),
  GetPage(name: Routes.CART, page: () => const CartPage()),
  GetPage(name: Routes.PROFILE, page: () => const ProfilePage()),
  GetPage(name: Routes.HISTORY, page: () => const HistoryPage()),
  GetPage(name: Routes.NOTIFICATION, page: () => const NotificationPage()),
  GetPage(name: Routes.DETAIL, page: () => const DetailPage()),
  GetPage(name: Routes.ORDER_SUCCESS, page: () => const OrderSuccessPage()),
  GetPage(name: Routes.MENU_APP, page: () => const MenuAppPage()),
];
