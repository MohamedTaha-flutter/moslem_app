import 'package:flutter/material.dart';
import 'package:moslem_app/core/constant/app_image.dart';
import 'package:moslem_app/feature/azkar/data/models/am_pm_model.dart';
import 'package:moslem_app/feature/azkar/presentation/widget/azkar_item.dart';
import 'package:moslem_app/feature/azkar/presentation/widget/custom_appBar.dart';

class SalahView extends StatelessWidget {
   SalahView({super.key});
  List<AmPmModel> prayerAzkar = [
    AmPmModel(
      AlZekr: "أستغفر الله",
      AlAgr: "يقال ثلاث مرات بعد الصلاة.",
    ),
    AmPmModel(
      AlZekr: "اللهم أنت السلام ومنك السلام تباركت يا ذا الجلال والإكرام",
      AlAgr: "يقال بعد التسليم من الصلاة.",
    ),
    AmPmModel(
      AlZekr:
      "لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير. اللهم لا مانع لما أعطيت، ولا معطي لما منعت، ولا ينفع ذا الجد منك الجد.",
      AlAgr: "يقال بعد كل صلاة.",
    ),
    AmPmModel(
      AlZekr:
      "لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير. لا حول ولا قوة إلا بالله، لا إله إلا الله، ولا نعبد إلا إياه، له النعمة وله الفضل وله الثناء الحسن. لا إله إلا الله مخلصين له الدين ولو كره الكافرون.",
      AlAgr: "يقال بعد كل صلاة.",
    ),
    AmPmModel(
      AlZekr: "سبحان الله",
      AlAgr: "يقال ثلاث وثلاثين مرة بعد كل صلاة.",
    ),
    AmPmModel(
      AlZekr: "الحمد لله",
      AlAgr: "يقال ثلاث وثلاثين مرة بعد كل صلاة.",
    ),
    AmPmModel(
      AlZekr: "الله أكبر",
      AlAgr: "يقال ثلاث وثلاثين مرة بعد كل صلاة.",
    ),
    AmPmModel(
      AlZekr:
      "لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير",
      AlAgr: "يقال بعد الذكر السابق ليصبح العدد مئة.",
    ),
    AmPmModel(
      AlZekr: "آية الكرسي",
      AlAgr: "يقال بعد كل صلاة.",
    ),
    AmPmModel(
      AlZekr: "قل هو الله أحد، قل أعوذ برب الفلق، قل أعوذ برب الناس",
      AlAgr: "يقال بعد كل صلاة، وبعد المغرب والفجر ثلاث مرات.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppBar(
          backgroundImage: AppImage.salahImage,
        ),
        backgroundColor: const Color(0xff919F8F),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: ListView.builder(
            itemBuilder: (context, index) => AzkarItem(
              index: index,
              alAgr: prayerAzkar[index].AlAgr,
              alzker: prayerAzkar[index].AlZekr,
            ),
            itemCount: prayerAzkar.length,
          ),
        ),
      ),
    );
  }
}
