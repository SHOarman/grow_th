import 'package:get/get.dart';
import 'package:grow_th/presentation/authpage/Reg.dart';
import 'package:grow_th/presentation/authpage/ResetPassword.dart';
import 'package:grow_th/presentation/authpage/email_verification.dart';
import 'package:grow_th/presentation/authpage/forgot_password.dart';
import 'package:grow_th/presentation/home_ui/homeScreen.dart';

import '../../presentation/authpage/login.dart';
import '../../presentation/onlodingdata/onboarding_screen.dart';
import '../../presentation/onlodingdata/splash_screen.dart';
import 'app_routes.dart';

class AppPages {
  static const initial = AppRoutes.splash;

  static final routes = [
    GetPage(name: AppRoutes.splash, page: () => const SplashScreen()),
    GetPage(name: AppRoutes.onboarding, page: () => const OnboardingScreen()),
    GetPage(name: AppRoutes.login, page: () => LoginScreen()),
    GetPage(name: AppRoutes.register, page: () => RegisterScreen()),
    GetPage(name: AppRoutes.forgotpassword, page: ()=>Forgotpassword()),
    GetPage(name: AppRoutes.emailverification, page: ()=>EmailVerification()),
    GetPage(name: AppRoutes.resetpassword, page: ()=>Resetpassword()),
    GetPage(name: AppRoutes.homescreen, page: ()=>HomeScreen()),
  ];
}
