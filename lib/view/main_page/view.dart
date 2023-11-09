// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:seb7a/core/logic/app_image.dart';
import 'package:seb7a/core/logic/helper_method.dart';
import 'package:seb7a/gen/assets.gen.dart';
import 'package:seb7a/view/pages/azkar_after_pray/view.dart';
import 'package:seb7a/view/pages/azkar_masa2/view.dart';
import 'package:seb7a/view/pages/azkar_saba7/view.dart';
import 'package:seb7a/view/pages/doaa_elsafar/view.dart';
import 'package:seb7a/view/pages/sebha/view.dart';
import 'package:seb7a/view/pages/tsabe7/view.dart';

import '../pages/qebla/view.dart';

class MainPageView extends StatelessWidget {
  const MainPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "الصفحة الرئيسية",
            ),
          ),
          body: Stack(
            children: [
              AppImage(
                Assets.images.backGround.path,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 30.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "إختر نوع الأذكار",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.brown,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                navigateTo(AzkarSaba7View());
                              },
                              child: Container(
                                height: 100.h,
                                width: 110.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  border: Border.all(
                                      color: Colors.grey, width: 4.w),
                                ),
                                child: Center(
                                  child: Text(
                                    "أذكار الصباح",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                navigateTo(AzkarMasa2View());
                              },
                              child: Container(
                                height: 100.h,
                                width: 110.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    border: Border.all(
                                        color: Colors.grey, width: 4.w)),
                                child: Center(
                                  child: Text(
                                    "أذكار المساء",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              navigateTo(AzkarAfterPrayView());
                            },
                            child: Container(
                              height: 100.h,
                              width: 110.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  border: Border.all(
                                      color: Colors.grey, width: 4.w)),
                              child: Center(
                                child: Text(
                                  "أذكار الصلاة",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              navigateTo(DoaaSafarView());
                            },
                            child: Container(
                              height: 100.h,
                              width: 110.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  border: Border.all(
                                      color: Colors.grey, width: 4.w)),
                              child: Center(
                                child: Text(
                                  "دعاء السفر",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              navigateTo(Tasabe7View());
                            },
                            child: Container(
                              height: 100.h,
                              width: 110.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  border: Border.all(
                                      color: Colors.grey, width: 4.w)),
                              child: Center(
                                child: Text(
                                  "التسابيح",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              navigateTo(SebhaView());
                            },
                            child: Container(
                              height: 100.h,
                              width: 110.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  border: Border.all(
                                      color: Colors.grey, width: 4.w)),
                              child: Center(
                                child: Text(
                                  "السبحة",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          navigateTo(QeblaView());
                        },
                        child: Container(
                          height: 100.h,
                          width: 110.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              border:
                                  Border.all(color: Colors.grey, width: 4.w)),
                          child: Center(
                            child: Text(
                              "إتجاة القبلة",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
