import 'package:accum_points_app/views/accum_app.dart';
import 'package:accum_points_app/views/screens/login_page/login_page.dart';
import 'package:accum_points_app/views/screens/sign_up_page/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const LoginPage(),
            theme: ThemeData(
              fontFamily: "Open Sans",
            ),
          );
        });
  }
}
