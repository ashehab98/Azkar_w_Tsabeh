import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  MainAppBar({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        height: 55.h,
        color: Color(0xffcfdde5),
        child: Row(children: [
          Container(
            padding: EdgeInsets.only(bottom: 4.h, right: 3.w),
            height: 35.h,
            width: 35.w,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(.13),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),

          Expanded(
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(55.h);
}
