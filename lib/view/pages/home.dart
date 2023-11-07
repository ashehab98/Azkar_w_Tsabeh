// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
//
// import 'package:flutter/material.dart';
// import 'package:seb7a/view/pages/azkar_after_pray/view.dart';
// import 'package:seb7a/view/pages/azkar_masa2/view.dart';
// import 'package:seb7a/view/pages/azkar_saba7/view.dart';
// import 'package:seb7a/view/pages/tsabe7/view.dart';
//
// class HomeView extends StatefulWidget {
//   const HomeView({super.key});
//
//   @override
//   State<HomeView> createState() => _HomeViewState();
// }
//
// class _HomeViewState extends State<HomeView> {
//   int currentIndex = 0;
//
//   List<Widget> pages = [
//     AzkarSaba7View(),
//     AzkarMasa2View(),
//     AzkarAfterPrayView(),
//     Tasabe7View(),
//   ];
//   List<String> labels = [
//     "أذكار الصباح",
//     "أذكار المساء",
//     "أذكار ما بعد الصلاة",
//     "تسابيح",
//   ];
//   List icons = [
//     Icon(Icons.add),
//     Icon(Icons.add),
//     Icon(Icons.add),
//     Icon(Icons.add),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: pages[currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Color(0xffAED489),
//         backgroundColor: Theme.of(context).primaryColor,
//         currentIndex: currentIndex,
//         onTap: (value) {
//           currentIndex = value;
//           setState(() {});
//         },
//         type: BottomNavigationBarType.fixed,
//         items: List.generate(
//           labels.length,
//           (index) => BottomNavigationBarItem(
//               icon: SvgPicture.asset(
//                 icons[index],
//                 color: currentIndex == index ? Colors.white : Color(0xffAED489),
//               ),
//               label: labels[index]),
//         ),
//       ),
//     );
//   }
// }
