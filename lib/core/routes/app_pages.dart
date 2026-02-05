import 'package:get/get.dart';
import 'package:grow_th/presentation/authpage/Reg.dart';
import 'package:grow_th/presentation/authpage/ResetPassword.dart';
import 'package:grow_th/presentation/authpage/email_verification.dart';
import 'package:grow_th/presentation/authpage/forgot_password.dart';
import 'package:grow_th/presentation/home_ui/homeScreen.dart';
import 'package:grow_th/presentation/profile/faqscreen.dart';
import 'package:grow_th/presentation/profile/profile.dart';
import 'package:grow_th/presentation/profile/profileEdit.dart';
import 'package:grow_th/presentation/profile/supportscreen.dart';

import '../../presentation/authpage/login.dart';
import '../../presentation/onlodingdata/onboarding_screen.dart';
import '../../presentation/onlodingdata/splash_screen.dart';
import 'app_routes.dart';

class AppPages {
  static const initial = AppRoutes.profile;

  static final routes = [
    GetPage(name: AppRoutes.splash, page: () => const SplashScreen()),
    GetPage(name: AppRoutes.onboarding, page: () => const OnboardingScreen()),
    GetPage(name: AppRoutes.login, page: () => LoginScreen()),
    GetPage(name: AppRoutes.register, page: () => RegisterScreen()),
    GetPage(name: AppRoutes.forgotpassword, page: ()=>Forgotpassword()),
    GetPage(name: AppRoutes.emailverification, page: ()=>EmailVerification()),
    GetPage(name: AppRoutes.resetpassword, page: ()=>Resetpassword()),
    GetPage(name: AppRoutes.homescreen, page: ()=>HomeScreen()),

    //====================profile========================================
     GetPage(name: AppRoutes.profile, page: ()=>Profile()),
     GetPage(name: AppRoutes.profileedit, page: ()=>Profileedit()),
    GetPage(name: AppRoutes.support, page: ()=>Supportscreen()),
    GetPage(name: AppRoutes.faq, page: ()=>Faqscreen()),



  ];
}
