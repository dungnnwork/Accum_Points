import 'package:accum_points_app/views/accum_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375.0, 812.0));
    return ScreenUtilInit(
      designSize: const Size(375.0, 812.0),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: const AccumApp(),
      );
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: const AccumApp(),
    //   theme: ThemeData(
    //     fontFamily: "Open Sans",
    //   ),
    // );
  }
}


