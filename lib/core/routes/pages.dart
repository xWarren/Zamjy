import 'package:get/get.dart';

import '../../features/authenticate/login/login_binding.dart';
import '../../features/authenticate/login/login_page.dart';
import '../../features/authenticate/register/register_binding.dart';
import '../../features/authenticate/register/register_page.dart';
import '../../features/cart/cart_binding.dart';
import '../../features/cart/cart_page.dart';
import '../../features/dashboard/dashboard_binding.dart';
import '../../features/dashboard/dashboard_page.dart';
import '../../features/home/home_binding.dart';
import '../../features/home/home_page.dart';
import '../../features/profile/profile_binding.dart';
import '../../features/profile/profile_page.dart';
import '../../features/splash/splash_binding.dart';
import '../../features/splash/splash_page.dart';
import 'routes.dart';

class Pages {
  static final pages = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.register,
      page: () => const RegisterPage(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.dashboard,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.cart,
      page: () => const CartPage(),
      binding: CartBinding(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),
  ];
}
