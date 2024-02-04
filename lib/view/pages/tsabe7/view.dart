import 'package:flutter/material.dart';

import '../../../core/design/appbar.dart';
import '../../../core/design/main_container.dart';

class Tasabe7View extends StatelessWidget {
  const Tasabe7View({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
     child: Scaffold(
       appBar: const MainAppBar(
         text: 'التسابيح',
       ),
       body: ListView(
         children: const [
           MainContainer(
             text: "سُبْحَانَ اللَّهِ.ِ",
             text2: "يكتب له ألف حسنة أو يحط عنه ألف خطيئة.",
             counter: 100,
             num: 1,
           ),
           Divider(color: Colors.white,),
           MainContainer(
             text: "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ.",
             text2:
                 "حُطَّتْ خَطَايَاهُ وَإِنْ كَانَتْ مِثْلَ زَبَدِ الْبَحْرِ. لَمْ يَأْتِ أَحَدٌ يَوْمَ الْقِيَامَةِ بِأَفْضَلَ مِمَّا جَاءَ بِهِ إِلَّا أَحَدٌ قَالَ مِثْلَ مَا قَالَ أَوْ زَادَ عَلَيْهِ.",
             counter: 100,
             num: 2,
           ),
           Divider(color: Colors.white,),
           MainContainer(
             text: "سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّه.ِ",
             text2: "تَمْلَآَنِ مَا بَيْنَ السَّمَاوَاتِ وَالْأَرْضِ.",
             counter: 100,
             num: 3,
           ),
           Divider(color: Colors.white,),
           MainContainer(
             text: "سُبْحَانَ اللهِ العَظِيمِ وَبِحَمْدِه.ِِ",
             text2: "غرست له نخلة في الجنة.",
             counter: 100,
             num: 4,
           ),
           Divider(color: Colors.white,),
           MainContainer(
             text:
                 "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِِِ.",
             text2:
                 "كلمتان خفيفتان على اللسان، ثقيلتان في الميزان، حبيبتان إلى الرحمن.",
             counter: 100,
             num: 5,
           ),
           Divider(color: Colors.white,),
           MainContainer(
             text:
                 "لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلُّ شَيْءِ قَدِيرِ.ِِ",
             text2:
                 "كانت له عدل عشر رقاب، وكتبت له مئة حسنة، ومحيت عنه مئة سيئة، وكانت له حرزا من الشيطان.",
             counter: 100,
             num: 6,
           ),
           Divider(color: Colors.white,),
           MainContainer(
             text: "لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّه.ِ",
             text2: "كنز من كنوز الجنة.",
             counter: 100,
             num: 7,
           ),
           Divider(color: Colors.white,),
           MainContainer(
             text: "الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ.ِ",
             text2: "تملأ ميزان العبد بالحسنات.",
             counter: 100,
             num: 8,
           ),
           Divider(color: Colors.white,),
           MainContainer(
             text:
                 "الْلَّهُم صَلِّ وَسَلِم وَبَارِك عَلَى سَيِّدِنَا مُحَمَّد.ِ",
             text2:
                 "من صلى على حين يصبح وحين يمسى ادركته شفاعتى يوم القيامة.",
             counter: 100,
             num: 9,
           ),
           Divider(color: Colors.white,),
           MainContainer(
             text: "أستغفر الله.ِ",
             text2: "لفعل الرسول صلى الله عليه وسلم.",
             counter: 100,
             num: 10,
           ),
           Divider(color: Colors.white,),
           MainContainer(
             text:
                 "سُبْحَانَ الْلَّهِ، وَالْحَمْدُ لِلَّهِ، وَلَا إِلَهَ إِلَّا الْلَّهُ، وَالْلَّهُ أَكْبَرُ.ِ",
             text2:
                 "أنهن أحب الكلام الى الله، ومكفرات للذنوب، وغرس الجنة، وجنة لقائلهن من النار، وأحب الى النبي عليه السلام مما طلعت عليه الشمس، والْبَاقِيَاتُ الْصَّالِحَات.",
             counter: 100,
             num: 11,
           ),
           Divider(color: Colors.white,),
           MainContainer(
             text: "لَا إِلَهَ إِلَّا اللَّهُ.ِ",
             text2: "أفضل الذكر لا إله إلاّ الله.",
             counter: 100,
             num: 12,
           ),
           Divider(color: Colors.white,),
           MainContainer(
             text: "الْلَّهُ أَكْبَرُ.ِ",
             text2:
                 "من قال الله أكبر كتبت له عشرون حسنة وحطت عنه عشرون سيئة. الله أكبر من كل شيء.",
             counter: 100,
             num: 13,
           ),
           Divider(color: Colors.white,),
           MainContainer(
             text:
                 "سُبْحَانَ اللَّهِ ، وَالْحَمْدُ لِلَّهِ ، وَلا إِلَهَ إِلا اللَّهُ ، وَاللَّهُ أَكْبَرُ ، اللَّهُمَّ اغْفِرْ لِي ، اللَّهُمَّ ارْحَمْنِي ، اللَّهُمَّ ارْزُقْنِي.ِ",
             text2: "خير الدنيا والآخرة.",
             counter: 100,
             num: 14,
           ),
           Divider(color: Colors.white,),
           MainContainer(
             text:
                 "الْحَمْدُ لِلَّهِ حَمْدًا كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ.",
             text2:
                 "قَالَ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ لَقَدْ رَأَيْتُ اثْنَيْ عَشَرَ مَلَكًا يَبْتَدِرُونَهَا، أَيُّهُمْ يَرْفَعُهَا.",
             counter: 100,
             num: 15,
           ),
           Divider(color: Colors.white,),
           MainContainer(
             text:
                 "اللَّهُ أَكْبَرُ كَبِيرًا ، وَالْحَمْدُ لِلَّهِ كَثِيرًا ، وَسُبْحَانَ اللَّهِ بُكْرَةً وَأَصِيلاً.",
             text2:
                 "قَالَ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ عَجِبْتُ لَهَا ، فُتِحَتْ لَهَا أَبْوَابُ السَّمَاءِ.",
             counter: 100,
             num: 16,
           ),
           Divider(color: Colors.white,),
           MainContainer(
             text:
                 "اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَى إِبْرَاهِيمَ , وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ , اللَّهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ.",
             text2:
                 "في كل مره تحط عنه عشر خطايا ويرفع له عشر درجات ويصلي الله عليه عشرا وتعرض على الرسول صلى الله عليه وسلم.",
             counter: 100,
             num: 17,
           ),
         ],
       ),
     ),
      );
  }
}
