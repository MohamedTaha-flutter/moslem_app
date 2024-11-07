import 'package:flutter/material.dart';
import 'package:moslem_app/core/constant/app_image.dart';
import 'package:moslem_app/feature/azkar/data/models/am_pm_model.dart';
import 'package:moslem_app/feature/azkar/presentation/widget/azkar_item.dart';
import 'package:moslem_app/feature/azkar/presentation/widget/custom_appBar.dart';

class SafarView extends StatelessWidget {
   SafarView({super.key});
  final List<AmPmModel> travelDua = [
    AmPmModel(
        AlZekr:
        "اللّهُ أكبر، اللّهُ أكبر، اللّهُ أكبر، سُبْحانَ الَّذي سَخَّرَ لَنا هذا وَما كُنَّا لَهُ مُقْرِنينَ وَإِنَّا إِلى رَبِّنا لَمُنْقَلِبُونَ. \nاللّهُمَّ إِنّا نَسْأَلُكَ في سَفَرِنا هذا البِرَّ وَالتَّقْوى وَمِنَ العَمَلِ ما تَرْضى، \nاللّهُمَّ هَوِّنْ عَلَيْنا سَفَرَنا هذا وَاطْوِ عَنّا بُعْدَهُ، \nاللّهُمَّ أَنْتَ الصّاحِبُ في السَّفَرِ وَالخَليفَةُ في الأَهْلِ، \nاللّهُمَّ إِنّي أَعُوذُ بِكَ مِنْ وَعْثاءِ السَّفَرِ وَكَآبَةِ المَنْظَرِ وَسُوءِ المُنْقَلَبِ في المالِ وَالأَهْلِ.",
        AlAgr: "يقال عند بدء السفر طلبًا للحفظ والأمان في الطريق."),
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppBar(
          backgroundImage: AppImage.safarImage,
        ),
        backgroundColor: const Color(0xff919F8F),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: ListView.builder(
            itemBuilder: (context, index) => AzkarItem(
              index: index,
              alAgr: travelDua[index].AlAgr,
              alzker: travelDua[index].AlZekr,
            ),
            itemCount: travelDua.length,
          ),
        ),
      ),
    );
  }
}
