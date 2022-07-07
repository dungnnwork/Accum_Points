import 'dart:isolate';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 375.w,
        height: 832.h,
        decoration: const BoxDecoration(color: Colors.white),
        child: Container(
          height: 446.h,
          margin: EdgeInsets.only(left: 19.w, top: 140.h, right: 19),
          decoration: BoxDecoration(
            color: const Color(0xfffdfdfd),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(blurRadius: 50, color: Color.fromRGBO(0, 0, 0, 0.1))
            ],
          ),
          padding: EdgeInsets.only(top: 44.h, left: 29.w, right: 28.h),
          child: Column(
              textDirection: TextDirection.ltr,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Đăng nhập',
                    style: TextStyle(
                        color: Color(0xff0f0f0f),
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 44.h),
                Text(
                  'Số điện thoại',
                  style: TextStyle(
                      color: Color(0xff263238),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 2.h),
              ]),
        ),
      ),
    );
  }
}
