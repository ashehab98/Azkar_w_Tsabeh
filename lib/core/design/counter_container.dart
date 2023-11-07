// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class CounterContainer extends StatefulWidget {
//   CounterContainer({
//     super.key,
//     required this.counter,
//   });
//   final int counter;
//   @override
//   State<CounterContainer> createState() => _CounterContainerState();
// }
//
// class _CounterContainerState extends State<CounterContainer> {
//   int _count = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(children: [
//       Center(
//         child: GestureDetector(
//           onTap: () {
//             if (_count < widget.counter) {
//               _count++;
//               setState(() {});
//             }
//           },
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15.r),
//               color: Color(0xffcfdde5),
//             ),
//             height: 100.h,
//             width: 300.h,
//             child: Center(
//               child: Text(
//                 _count.toString(),
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 40.sp,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//       Positioned(
//         bottom: 10.h,
//         left: 30.w,
//         child: GestureDetector(
//           onTap: () {
//             _count = 0;
//             setState(() {});
//           },
//           child: Container(
//             height: 30.h,
//             width: 60.w,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15.r),
//               color: Colors.grey.withOpacity(.3),
//             ),
//             child: Center(
//               child: Text(
//                 "إعادة",
//                 style: TextStyle(
//                   fontSize: 16.sp,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     ]);
//   }
// }
