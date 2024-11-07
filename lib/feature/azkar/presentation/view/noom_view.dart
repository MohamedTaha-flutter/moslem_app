import 'package:flutter/material.dart';
import 'package:moslem_app/core/constant/app_image.dart';
import 'package:moslem_app/feature/azkar/data/models/am_pm_model.dart';
import 'package:moslem_app/feature/azkar/presentation/widget/azkar_item.dart';
import 'package:moslem_app/feature/azkar/presentation/widget/custom_appBar.dart';

class NoomView extends StatelessWidget {
   NoomView({super.key});
   final List<AmPmModel> sleepAzkar = [
     AmPmModel(
       AlZekr:
       "باسمك ربي وضعت جنبي، وبك أرفعه، فإن أمسكت نفسي فارحمها، وإن أرسلتها فاحفظها بما تحفظ به عبادك الصالحين.",
       AlAgr: "يقال عند النوم.",
     ),
     AmPmModel(
       AlZekr: "اللهم باسمك أموت وأحيا.",
       AlAgr: "يقال عند النوم.",
     ),
     AmPmModel(
       AlZekr: "اللهم قني عذابك يوم تبعث عبادك.",
       AlAgr: "يقال ثلاث مرات عند النوم.",
     ),
     AmPmModel(
       AlZekr:
       "اللهم إني أسلمت نفسي إليك، ووجهت وجهي إليك، وفوضت أمري إليك، وألجأت ظهري إليك، رغبة ورهبة إليك، لا ملجأ ولا منجا منك إلا إليك. آمنت بكتابك الذي أنزلت، وبنبيك الذي أرسلت.",
       AlAgr: "يقال عند النوم.",
     ),
     AmPmModel(
       AlZekr: "سبحان الله، والحمد لله، والله أكبر.",
       AlAgr: "يقال ثلاثًا وثلاثين مرة من كلٍّ عند النوم.",
     ),
     AmPmModel(
       AlZekr: "آية الكرسي",
       AlAgr: "يقرأ عند النوم لحفظ الله للعبد حتى يصبح.",
     ),
     AmPmModel(
       AlZekr: "قل هو الله أحد، قل أعوذ برب الفلق، قل أعوذ برب الناس",
       AlAgr: "يقال ثلاث مرات، مع النفث في اليدين ومسح الجسد قدر المستطاع.",
     ),
     AmPmModel(
       AlZekr:
       "بسم الله الذي لا يضر مع اسمه شيء في الأرض ولا في السماء وهو السميع العليم.",
       AlAgr: "يقال ثلاث مرات عند النوم.",
     ),
     AmPmModel(
       AlZekr:
       "الحمد لله الذي أطعمنا وسقانا وكفانا وآوانا، فكم ممن لا كافي له ولا مؤوي.",
       AlAgr: "يقال عند النوم.",
     ),
     AmPmModel(
       AlZekr:
       "اللهم عالم الغيب والشهادة فاطر السماوات والأرض، رب كل شيء ومليكه، أشهد أن لا إله إلا أنت، أعوذ بك من شر نفسي، ومن شر الشيطان وشركه، وأن أقترف على نفسي سوءًا أو أجره إلى مسلم.",
       AlAgr: "يقال عند النوم.",
     ),
   ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppBar(
          backgroundImage: AppImage.noomImage,
        ),
        backgroundColor: const Color(0xff919F8F),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: ListView.builder(
            itemBuilder: (context, index) => AzkarItem(
              index: index,
              alAgr: sleepAzkar[index].AlAgr,
              alzker: sleepAzkar[index].AlZekr,
            ),
            itemCount: sleepAzkar.length,
          ),
        ),
      ),
    );
  }
}
