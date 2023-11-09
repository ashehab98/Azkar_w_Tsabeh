import 'package:flutter/material.dart';

import '../../../core/design/appbar.dart';
import '../../../core/design/main_container.dart';

class DoaaSafarView extends StatelessWidget {
  const DoaaSafarView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: MainAppBar(
          text: 'دعاء الخروج من المنزل و السفر',
        ),
        body: ListView(
          children: const [
            MainContainer(
              text1: "دعاء الخوزج من المنزل",
              text:
                  "(بِسْمِ اللَّهِ تَوَكَّلْتُ عَلَى اللَّهِ، ولاَ حَوْلَ وَلاَ قُوَّةَ إِلاَّ بِاللَّهِ .. اللَّهُمَّ أَعُوذُ بِكَ أَنْ أَضِلَّ، أَوْ أُضَلَّ، أَوْ أَزِلَّ، أَوْ أُزَلَّ، أَوْ أَظْلِمَ، أَوْ أُظْلَمَ، أَوْ أَجْهَلَ، أَوْ يُجْهَلَ عَلَيَّ).",

              counter: 1,
              num: 1,
            ),
            Divider(color: Colors.white,),
            MainContainer(
              text1: "دعاء السفر",
              text:
              "اللَّهُ أَكْبَرُ، اللَّهُ أَكْبَرُ، اللَّهُ أَكْبَرُ، ﴿سُبْحَانَ الَّذِي سَخَّرَ لَنَا هَذَا وَمَا كُنَّا لَهُ مُقْرِنِينَ * وَإِنَّا إِلَى رَبِّنَا لَمُنقَلِبُونَ﴾ ((اللَّهُمَّ إِنّا نَسْأَلُكَ فِي سَفَرِنَا هَذَا البِرَّ وَالتَّقْوَى، وَمِنَ الْعَمَلِ مَا تَرْضَى، اللَّهُمَّ هَوِّنْ عَلَيْنَا سَفَرَنَا هَذَا وَاطْوِ عَنَّا بُعْدَهُ، اللَّهُمَّ أَنْتَ الصَّاحِبُ فِي السَّفَرِ، وَالْخَليفَةُ فِي الْأَهْلِ، اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ وَعْثَاءِ السَّفَرِ، وَكَآبَةِ الْمَنْظَرِ، وَسُوءِ الْمُنْقَلَبِ فِي الْمَالِ وَالْأَهْل))ِ.",
              text2:
              "وإذا رَجَعَ قَالَهُنَّ وَزَادَ فِيهِنَّ: ((آيِبُونَ، تائِبُونَ، عَابِدُونَ، لِرَبِّنَا حَامِدُونَ)).",
              counter: 1,
              num: 2,
            ),
          ],
        ),
      ),
    );
  }
}