import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moslem_app/feature/azkar/presentation/view/layout/home_view.dart';

void main() {
  runApp(
    RunApp(),
  );
}

class RunApp extends StatelessWidget {
  const RunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 1000),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "تطبيق المسلم",
          home: HomeView(),
        );
      },
    );
  }
}
//flutter_launcher_icons:
// android: "launcher_icon"
// ios: true
// image_path: "assets/images/launcher_icon.png"
// adaptive_icon_foreground: "assets/images/launcher_icon.png"
// adaptive_icon_background: "#5F8F3C"
// min_sdk_android: 21
// remove_alpha_ios: true