import 'package:flutter_zimpligital_siravit/app/modules/main/bindings/main_bindings.dart';
import 'package:flutter_zimpligital_siravit/app/modules/main/views/screens/main_screen.dart';
import 'package:flutter_zimpligital_siravit/app/modules/splash/bindings/spalsh_bindings.dart';
import 'package:flutter_zimpligital_siravit/app/modules/splash/views/screens/splash_screen.dart';
import 'package:get/route_manager.dart';

class Routes {
  static const String splash = '/';
  static const String main = '/main';
}

class AppPages {
  static const String initial = Routes.splash;
  static final List<GetPage> routes = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.main,
      page: () => const MainScreen(),
      binding: MainBinding(),
    ),
  ];
}
