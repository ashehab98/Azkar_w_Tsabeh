// ignore_for_file: unnecessary_overrides, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vibration/vibration.dart';

class MainContainer extends StatefulWidget {
  final String text, text1, text2;
  final int counter, num;

  const MainContainer({
    super.key,
    required this.text,
    this.text1 = "",
    this.text2 = "",
    required this.counter,
    required this.num,
  });

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer>
    with AutomaticKeepAliveClientMixin {
  int _count = 0;

  Color _getCounterColor() {
    if (_count < widget.counter)
      return const Color(0xfffdcfb0).withOpacity(.6);
    else
      return const Color(0xff86A789);
  }

  Color _getResetColor() {
    if (_count < widget.counter) {
      return const Color(0xffFAE7C9);
    } else {
      return const Color(0xffB2C8BA);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      color: const Color(0xffECE3CE),
      child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.all(16.r),
          children: [
            Text(
              widget.text1,
              style: TextStyle(
                color: Colors.brown.withOpacity(.9),
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              widget.text,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              widget.text2,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 20.h),
            Stack(children: [
              Center(
                child: GestureDetector(
                  onTap: () {
                    if (_count < widget.counter) {
                      _count++;
                      setState(() {});
                    } else if (_count == widget.counter) {
                      Vibration.vibrate(duration: 50);
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: _getCounterColor(),
                    ),
                    height: 100.h,
                    width: 300.h,
                    child: Center(
                      child: Text(
                        "$_count/${widget.counter}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10.h,
                left: 30.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Text(
                        widget.num.toString(),
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: const Color(0xff3A4D39).withOpacity(.4),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 190.w),
                    GestureDetector(
                      onTap: () {
                        _count = 0;
                        Vibration.vibrate(duration: 50);
                        setState(() {});
                      },
                      child: Container(
                        height: 30.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: _getResetColor(),
                        ),
                        child: Center(
                          child: Text(
                            "0/${widget.counter}",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ]),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
