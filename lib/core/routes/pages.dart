import 'package:get/get.dart';

import '../../features/authenticate/login/login_binding.dart';
import '../../features/authenticate/login/login_page.dart';
import '../../features/authenticate/register/register_binding.dart';
import '../../features/authenticate/register/register_page.dart';
import '../../features/dashboard/dashboard_binding.dart';
import '../../features/dashboard/dashboard_page.dart';
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
      name: Routes.splash,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
  ];
}
