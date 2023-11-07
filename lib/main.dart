import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 import 'core/logic/cach_helper.dart';
import 'core/logic/helper_method.dart';
import 'view/pages/azkar_after_pray/view.dart';
import 'view/pages/azkar_saba7/view.dart';
import 'view/pages/tsabe7/view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.cyan));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          title: "الأذكار و التسبيح",
          theme: ThemeData(
             scaffoldBackgroundColor: Colors.white,
          ),
          builder: (context, child) =>
              Directionality(
            textDirection: TextDirection.rtl,
            child: child!,
          ),
          debugShowCheckedModeBanner: false,
          navigatorKey: navigateKey,
          home: Tasabe7View(),
        );
      },
    );
  }
}