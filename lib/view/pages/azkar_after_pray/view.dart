import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/design/appbar.dart';
import '../../../core/design/main_container.dart';

class AzkarAfterPrayView extends StatelessWidget {
  const AzkarAfterPrayView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MainAppBar(
          text: 'أذكار بعد الصلاة المفروضة',
        ),
        body: ListView(
          children: [
            const MainContainer(
              text1: "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ",
              text:
                  "اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ.",
              text2:
                  "من قالها حين يصبح أجير من الجن حتى يمسى ومن قالها حين يمسى أجير من الجن حتى يصبح.",
              counter: 1,
              num: 1,
            ),
            Divider(thickness: 4.h, color: Colors.grey.withOpacity(.3)),
            const MainContainer(
              text:
                  "لا إلهَ إلاّ اللّهُ وحدَهُ لا شريكَ لهُ، لهُ المُـلْكُ ولهُ الحَمْد، وهوَ على كلّ شَيءٍ قَدير، اللّهُـمَّ لا مانِعَ لِما أَعْطَـيْت، وَلا مُعْطِـيَ لِما مَنَـعْت، وَلا يَنْفَـعُ ذا الجَـدِّ مِنْـكَ الجَـد.",
              counter: 1,
              num: 2,
            ),
            Divider(thickness: 4.h, color: Colors.grey.withOpacity(.3)),
            const MainContainer(
              text:
                  "لا إلهَ إلاّ اللّه, وحدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمد، وهوَ على كلّ شيءٍ قدير، لا حَـوْلَ وَلا قـوَّةَ إِلاّ بِاللهِ، لا إلهَ إلاّ اللّـه، وَلا نَعْـبُـدُ إِلاّ إيّـاه, لَهُ النِّعْـمَةُ وَلَهُ الفَضْل وَلَهُ الثَّـناءُ الحَـسَن، لا إلهَ إلاّ اللّهُ مخْلِصـينَ لَـهُ الدِّينَ وَلَوْ كَـرِهَ الكـافِرون.",
              counter: 1,
              num: 3,
            ),
            Divider(thickness: 4.h, color: Colors.grey.withOpacity(.3)),
            const MainContainer(
              text: "سُـبْحانَ اللهِ، والحَمْـدُ لله ، واللهُ أكْـبَر.",
              counter: 33,
              num: 4,
            ),
            Divider(thickness: 4.h, color: Colors.grey.withOpacity(.3)),
            const MainContainer(
              text:
                  "لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمْد، وهُوَ على كُلّ شَيءٍ قَـدير.",
              counter: 1,
              num: 5,
            ),
            Divider(thickness: 4.h, color: Colors.grey.withOpacity(.3)),
            const MainContainer(
              text1: "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم",
              text:
                  "قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ.",
              text2:
                  "ثلاث مرات بعد صلاتي الفجر والمغرب. ومرة بعد الصلوات الأخرى.",
              counter: 3,
              num: 6,
            ),
            Divider(thickness: 4.h, color: Colors.grey.withOpacity(.3)),
            const MainContainer(
              text1: "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم",
              text:
                  "قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ.",
              text2:
                  "ثلاث مرات بعد صلاتي الفجر والمغرب. ومرة بعد الصلوات الأخرى.",
              counter: 3,
              num: 7,
            ),
            Divider(thickness: 4.h, color: Colors.grey.withOpacity(.3)),
            const MainContainer(
              text1: "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم",
              text:
                  "قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ.",
              text2:
                  "ثلاث مرات بعد صلاتي الفجر والمغرب. ومرة بعد الصلوات الأخرى.",
              counter: 3,
              num: 8,
            ),
            Divider(thickness: 4.h, color: Colors.grey.withOpacity(.3)),
            const MainContainer(
              text1: "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ",
              text:
                  "اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ.",
              counter: 1,
              num: 7,
            ),
            Divider(thickness: 4.h, color: Colors.grey.withOpacity(.3)),
            const MainContainer(
              text:
                  "لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ لهُ، لهُ المُلكُ ولهُ الحَمْد، يُحيـي وَيُمـيتُ وهُوَ على كُلّ شيءٍ قدير.",
              text2: "عَشْر مَرّات بَعْدَ المَغْرِب وَالصّـبْح.",
              counter: 10,
              num: 8,
            ),
            Divider(thickness: 4.h, color: Colors.grey.withOpacity(.3)),
            const MainContainer(
              text:
                  "اللّهُـمَّ إِنِّـي أَسْأَلُـكَ عِلْمـاً نافِعـاً وَرِزْقـاً طَيِّـباً ، وَعَمَـلاً مُتَقَـبَّلاً.",
              text2: "بَعْد السّلامِ من صَلاةِ الفَجْر.",
              counter: 1,
              num: 9,
            ),
            Divider(thickness: 4.h, color: Colors.grey.withOpacity(.3)),
            const MainContainer(
              text: "اللَّهُمَّ أَجِرْنِي مِنْ النَّار.",
              text2: "بعد صلاة الصبح والمغرب.",
              counter: 7,
              num: 10,
            ),
            Divider(thickness: 4.h, color: Colors.grey.withOpacity(.3)),
            const MainContainer(
              text:
                  "اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِكَ.",
              counter: 1,
              num: 11,
            ),
          ],
        ),
      ),
    );
  }
}