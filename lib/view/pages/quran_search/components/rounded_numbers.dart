import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconCircularNum extends StatelessWidget {
  final int number;

  const IconCircularNum({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tightFor(
        width: 50.0.w,
        height: 50.0.h,
      ),
      decoration: const BoxDecoration(
        color: Color(0xFFEA1556),
         shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          '$number',
          style: const TextStyle(fontFamily: 'Amiri', fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}