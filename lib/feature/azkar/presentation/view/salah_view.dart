import 'package:flutter/material.dart';
import 'package:moslem_app/core/constant/app_image.dart';
import 'package:moslem_app/core/constant/azkar_list.dart';
import 'package:moslem_app/feature/azkar/presentation/widget/azkar_item.dart';
import 'package:moslem_app/feature/azkar/presentation/widget/custom_appBar.dart';

class SalahView extends StatelessWidget {
  const SalahView({super.key});

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
