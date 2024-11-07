import 'package:flutter/material.dart';
import 'package:moslem_app/core/constant/app_image.dart';
import 'package:moslem_app/feature/azkar/data/models/am_pm_model.dart';
import 'package:moslem_app/feature/azkar/presentation/widget/azkar_item.dart';
import 'package:moslem_app/feature/azkar/presentation/widget/custom_appBar.dart';

class QuranView extends StatelessWidget {
    QuranView({super.key});
   final List<AmPmModel> quranCompletionDua = [
     AmPmModel(
         AlZekr:
         "اللهم ارحمني بالقرآن واجعله لي إمامًا ونورًا وهدى ورحمة، اللهم ذكرني منه ما نسيت وعلمني منه ما جهلت، وارزقني تلاوته آناء الليل وأطراف النهار، واجعله لي حجةً يا رب العالمين. \nاللهم أصلح لي ديني الذي هو عصمة أمري، وأصلح لي دنياي التي فيها معاشي، وأصلح لي آخرتي التي فيها معادي، واجعل الحياة زيادة لي في كل خير، واجعل الموت راحة لي من كل شر. \nاللهم اجعل خير عمري آخره وخير عملي خواتمه وخير أيامي يوم ألقاك فيه.",
         AlAgr: "يقال عند ختم القرآن الكريم، طلبًا للرحمة والهداية والتوفيق."),
   ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppBar(
          backgroundImage: AppImage.quranImage,
        ),
        backgroundColor: const Color(0xff919F8F),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: ListView.builder(
            itemBuilder: (context, index) => AzkarItem(
              index: index,
              alAgr: quranCompletionDua[index].AlAgr,
              alzker: quranCompletionDua[index].AlZekr,
            ),
            itemCount: quranCompletionDua.length,
          ),
        ),
      ),
    );
  }
}
