import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Responsive Design
import 'package:device_preview/device_preview.dart'; // Device Preview
import 'package:flutter/foundation.dart'; // For kReleaseMode

import 'core/routes/app_pages.dart';
import 'core/theme/app_theme.dart';
import 'core/dependency_injection/injection.dart';

void main() {
  DependencyInjection.init();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode, // Disable in release mode
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(440, 956),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          title: 'Grow_th',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          initialRoute: AppPages.initial,
          getPages: AppPages.routes,
        );
      },
    );
  }
}
