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
      designSize: const Size(390, 860),
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
