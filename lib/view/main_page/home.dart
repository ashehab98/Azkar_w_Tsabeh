// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seb7a/view/main_page/view.dart';
import 'package:seb7a/view/pages/azkar_after_pray/view.dart';
import 'package:seb7a/view/pages/azkar_masa2/view.dart';
import 'package:seb7a/view/pages/azkar_saba7/view.dart';
import 'package:seb7a/view/pages/doaa_elsafar/view.dart';
import 'package:seb7a/view/pages/sebha/view.dart';
import 'package:seb7a/view/pages/tsabe7/view.dart';
import '../../gen/assets.gen.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  List<Widget> pages = [
    AzkarSaba7View(),
    AzkarMasa2View(),
    AzkarAfterPrayView(),
    DoaaSafarView(),
    Tasabe7View(),
    SebhaView(),
    MainPageView(),
  ];
  List<String> labels = [
    "أذكار الصباح",
    "أذكار المساء",
    "أذكار الصلاة",
    "دعاء السفر",
    "التسابيح",
    "السبحة",
    "الصفحة الرئيسية",
  ];

  List<String> icons = [
    Assets.icons.svg.main,
    Assets.icons.svg.myOrders,
    Assets.icons.svg.notifications,
    Assets.icons.svg.fav,
    Assets.icons.svg.myAccount,
    Assets.icons.svg.myAccount,
    Assets.icons.svg.myAccount,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        backgroundColor: Theme.of(context).primaryColor.withOpacity(.6),
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        items: List.generate(
          icons.length,
          (index) => BottomNavigationBarItem(
              icon: SvgPicture.asset(
                icons[index],
                color: currentIndex == index ? Colors.white : Color(0xffAED489),
              ),
              label: labels[index]),
        ),
      ),
    );
  }
}


