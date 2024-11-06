import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moslem_app/core/constant/constant.dart';
import 'package:moslem_app/core/style/text_style.dart';
import 'package:moslem_app/feature/azkar/presentation/view/am_pm_view.dart';
import 'package:moslem_app/feature/azkar/presentation/view/house_view.dart';
import 'package:moslem_app/feature/azkar/presentation/view/noom_view.dart';
import 'package:moslem_app/feature/azkar/presentation/view/quran_view.dart';
import 'package:moslem_app/feature/azkar/presentation/view/safar_view.dart';
import 'package:moslem_app/feature/azkar/presentation/view/salah_view.dart';
import 'package:moslem_app/feature/azkar/presentation/widget/app_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFFE8ECE8),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.0.w),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 70.h),
                Text(
                  'حصن المسلم',
                  style: AppTextStyle.font20Weight600Black
                      .copyWith(fontSize: 30.sp),
                ),
                SizedBox(height: 50.h),
                AppButton(
                  text: "أذكار الصباح والمساء",
                  image: "assets/images/a_am_pm.png",
                  onTap: () {
                    goTo(context, (context) => AmPmView());
                  },
                ),
                AppButton(
                  text: "أذكار الصلاة",
                  image: "assets/images/a_salah.png",
                  onTap: () {
                    goTo(context, (context) => SalahView());
                  },
                ),
                AppButton(
                  text: "أذكار النوم",
                  image: "assets/images/a_noom.png",
                  onTap: () {
                    goTo(context, (context) => NoomView());
                  },
                ),
                AppButton(
                  text: "دعاء دخول المنزل و الخوج  منه ",
                  image: "assets/images/a_house.png",
                  onTap: () {
                    goTo(context, (context) => HouseView());
                  },
                ),
                AppButton(
                  text: "دعاء ختم الفرأن",
                  image: "assets/images/a_quran.png",
                  onTap: () {
                    goTo(context, (context) => QuranView());
                  },
                ),
                AppButton(
                  text: "دعاء السفر ",
                  image: "assets/images/a_safeer.png",
                  onTap: () {
                    goTo(context, (context) => SafarView());
                  },
                ),
                Spacer(),
                Expanded(
                  child: Text(
                    'ٱلَّذِینَ ءَامَنُواْ وَتَطۡمَىِٕنُّ قُلُوبُهُم بِذِكۡرِ ٱلـلَّـهِۗ أَلَا بِذِكۡرِ ٱللَّهِ تَطۡمَىِٕنُّ ٱلۡقُلُوبُ',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.font20Weight600Black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
