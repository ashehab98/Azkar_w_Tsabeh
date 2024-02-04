import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:seb7a/core/design/appbar.dart';
import 'package:seb7a/core/logic/app_image.dart';
import 'package:vibration/vibration.dart';

import '../../../core/logic/cach_helper.dart';
import '../../../gen/assets.gen.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  int count = CacheHelper.getCount();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const MainAppBar(text: "السبحة"),
        body: Stack(children: [
          AppImage(
            Assets.images.Sebha.path,
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.h,
              bottom: 100.h,
              right: 30.w,
              left: 30.w,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Container(
                      width: 200.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey,
                          width: 10.w,
                        ),
                      ),
                      child: Center(
                          child: Text(
                        count.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 80.sp,
                          color: Colors.teal,
                        ),
                      )),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            count++;
                            CacheHelper.setCount(count);
                            setState(() {});
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 100.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.blue,
                                width: 10.w,
                              ),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.teal,
                              size: 80.r,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            count = 0;
                            CacheHelper.setCount(count);
                            Vibration.vibrate(duration: 50);
                            setState(() {});
                          },
                          child: Container(
                            height: 100.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.red,
                                width: 10.w,
                              ),
                            ),
                            child: Center(
                                child: Text(
                              "Reset",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 27.sp,
                              ),
                            )),
                          ),
                        ),
                      ]),
                ]),
          ),
        ]),
      ),
    );
  }
}
