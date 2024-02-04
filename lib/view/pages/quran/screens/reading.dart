import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/quran.dart' as quran;
import 'package:seb7a/core/logic/helper_method.dart';
import 'package:seb7a/view/pages/quran/screens/view.dart';
import '../model/model.dart';

class SurahPage extends StatelessWidget {
  final Surah surah;
  const SurahPage({super.key, required this.surah});
  @override
  Widget build(BuildContext context) {
    int count = surah.versesCount;
    int index = surah.id;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text(
            surah.arabicName,
            style: TextStyle(
              color: Colors.brown,
              fontSize: 30.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Container(
            height: 32.h,
            width: 32.w,
            padding: EdgeInsets.only(right: 5.w),
            margin: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9.r),
              color: Theme.of(context).primaryColor.withOpacity(.13),
            ),
            child: IconButton(
              onPressed: () {
                navigateTo(const QuranView());
              },
              icon: const Icon(Icons.arrow_back_ios),
              color: const Color(0xff86A789),
            ),
          ),
        ),
        body: Container(
          color: const Color(0xffECE3CE),
          child: SafeArea(
            minimum: EdgeInsets.all(15.r),
            child: Container(
              color: const Color(0xffECE3CE),
              child: ListView(children: [
                Padding(
                  padding: EdgeInsets.all(16.r),
                  child: header(),
                ),
                SizedBox(
                  height: 5.h,
                ),
                RichText(
                  textAlign: count <= 20 ? TextAlign.center : TextAlign.justify,
                  text: TextSpan(
                    children: [
                      for (var i = 1; i <= count; i++) ...{
                        TextSpan(
                          text: ' ${quran.getVerse(index, i, verseEndSymbol: false)} ',
                          style: TextStyle(
                            fontFamily: 'Kitab',
                            fontSize: 25.sp,
                            color: Colors.black87,
                          ),
                        ),
                        WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: CircleAvatar(
                              radius: 14.r,
                              child: Text(
                                '$i',
                                textAlign: TextAlign.center,
                                textScaleFactor:
                                    i.toString().length <= 2 ? 1 : .8,
                              ),
                            ))
                      }
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.r),
                  child: footer(),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget header() {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (surah.id != 9)
            Text(
              ' ${quran.basmala} ',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.brown,
                fontFamily: 'NotoNastaliqUrdu',
                fontSize: 24.sp,
              ),
            ),
        ],
      ),
    );
  }

  Widget footer() {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "صَدََقََ اَلَلَهَ اَلَعََظَِيَمَ",
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: Colors.brown,
              fontFamily: 'NotoNastaliqUrdu',
              fontSize: 24.sp,
            ),
          ),
        ],
      ),
    );
  }
}
