import 'package:flutter/material.dart';
import 'package:moslem_app/core/constant/app_image.dart';
import 'package:moslem_app/feature/azkar/data/models/am_pm_model.dart';
import 'package:moslem_app/feature/azkar/presentation/widget/azkar_item.dart';
import 'package:moslem_app/feature/azkar/presentation/widget/custom_appBar.dart';

class HouseView extends StatelessWidget {
   HouseView({super.key});
   final List<AmPmModel> homeAzkar = [
     AmPmModel(
       AlZekr: "بسم الله ولجنا، وبسم الله خرجنا، وعلى الله ربنا توكلنا.",
       AlAgr: "يقال عند دخول المنزل.",
     ),
     AmPmModel(
       AlZekr:
       "اللهم إني أسألك خير المولج وخير المخرج، بسم الله ولجنا وبسم الله خرجنا، وعلى الله توكلنا.",
       AlAgr: "يقال عند دخول المنزل.",
     ),
     AmPmModel(
       AlZekr: "بسم الله توكلت على الله، ولا حول ولا قوة إلا بالله.",
       AlAgr: "يقال عند الخروج من المنزل، ويكون له حفظٌ من الله.",
     ),
     AmPmModel(
       AlZekr:
       "اللهم إني أعوذ بك أن أضل أو أُضل، أو أَزلّ أو أُزل، أو أَظلم أو أُظلم، أو أَجهل أو يُجهل علي.",
       AlAgr: "يقال عند الخروج من المنزل.",
     ),
   ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppBar(
          backgroundImage: AppImage.houseImage,
        ),
        backgroundColor: const Color(0xff919F8F),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: ListView.builder(
            itemBuilder: (context, index) => AzkarItem(
              index: index,
              alAgr: homeAzkar[index].AlAgr,
              alzker: homeAzkar[index].AlZekr,
            ),
            itemCount: homeAzkar.length,
          ),
        ),
      ),
    );
  }
}
