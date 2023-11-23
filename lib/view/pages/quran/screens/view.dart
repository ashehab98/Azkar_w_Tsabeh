import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seb7a/core/logic/helper_method.dart';
import 'package:seb7a/view/main_page/view.dart';
import 'package:seb7a/view/pages/quran/screens/reading.dart';

import '../../quran_search/screens/search.dart';
import '../model/model.dart';

class QuranView extends StatefulWidget {
  @override
  _QuranViewState createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> with TickerProviderStateMixin {
  List<Surah> surahList = [];
  int selectedIndex = 0;
  bool isReverse = false;
  ScrollController _controller = ScrollController();
  @override
  void initState() {
    readJson();
    super.initState();
  }

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/surah1/surah.json');
    final data = await json.decode(response);
    for (var item in data["chapters"]) {
      surahList.add(Surah.fromMap(item));
    }
    debugPrint(surahList.length.toString());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "المصحف الشريف",
          style: TextStyle(
            color: Colors.brown,
            fontSize: 25.sp,
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
              navigateTo(MainPageView());
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Color(0xff86A789),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              navigateTo(SearchPage());
            },
            icon: Icon(Icons.search),
            color: Color(0xff86A789),
          ),
        ],
      ),
      body: surahList.isEmpty
          ? Center(child: CircularProgressIndicator())
          : chaptersList(isReverse ? surahList.reversed.toList() : surahList),
    );
  }

  Widget chaptersList(List<Surah> chapters) {
    return Container(
      color: const Color(0xffECE3CE),
      child: ListView.separated(
        controller: _controller,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            child: Text(
              chapters[index].id.toString(),
            ),
          ),
          title: Text(chapters[index].name),
          subtitle:
              Text("عدد آياتها ${chapters[index].versesCount.toString()}"),
          trailing: Text(
            chapters[index].arabicName,
            style: GoogleFonts.cairo(
              fontSize: 18.sp,
            ),
          ),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) =>
                  SurahPage(surah: chapters[index]),
            ),
          ),
        ),
        separatorBuilder: (context, index) => Divider(height: 1.h),
        itemCount: chapters.length,
      ),
    );
  }
}
