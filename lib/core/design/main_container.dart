import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainContainer extends StatefulWidget {
  final String text, text1, text2;
  final int counter,num;

  const MainContainer({
    super.key,
    required this.text,
    this.text1 = "",
    this.text2 = "",
    required this.counter, required this.num,
  });

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  int _count = 0;
  Color _getCounterColor() {
    if (_count < widget.counter)
      return Color(0xffcfdde5);
    else
      return Colors.green.withOpacity(.6);
  }

  Color _getResetColor() {
    if (_count < widget.counter)
      return Colors.grey.withOpacity(.3);
    else
      return Colors.amber.withOpacity(.5);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding:   EdgeInsets.all(16),
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
            SizedBox(
              height: 10.h,
            ),
            Text(
              widget.text2,
              style: TextStyle(
                color: Colors.blue.withOpacity(.9),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox.shrink(),
            SizedBox(
              height: 20.h,
            ),
            Stack(children: [
              Center(
                child: GestureDetector(
                  onTap: () {
                    if (_count < widget.counter) {
                      _count++;
                      setState(() {});
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
                        "${_count}/${widget.counter}",
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
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width:200.w),
                    GestureDetector(
                      onTap: () {
                        _count = 0;
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
                            "0.0",
                            style: TextStyle(
                              fontSize: 20.sp,
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
}
