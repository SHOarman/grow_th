import 'package:get/get.dart';

import '../../presentation/authpage/login.dart';
import '../../presentation/onlodingdata/onboarding_screen.dart';
import '../../presentation/onlodingdata/splash_screen.dart';
import 'app_routes.dart';

class AppPages {
  static const initial = AppRoutes.splash;

  static final routes = [
    GetPage(name: AppRoutes.splash, page: () => const SplashScreen()),
    GetPage(name: AppRoutes.onboarding, page: () => const OnboardingScreen()),
    GetPage(name: AppRoutes.login, page: ()=>LoginScreen()),

  ];
}
