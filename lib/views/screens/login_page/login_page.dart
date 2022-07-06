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
        height: 812.h,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(children: [
          Positioned(
            top: 140.h,
            left: 19.w,
            child: Container(
              width: 337.w,
              height: 446.h,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xfffdfdfd),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        blurRadius: 50,
                        offset: Offset(0, -5))
                  ]),
            ),
          ),
          Positioned(
              top: 184.h,
              left: 103.w,
              child: Text(
                'Đăng nhập',
                style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff0f0f0f)),
              )),
          Positioned(
              top: 268.h,
              left: 48.w,
              child: Text(
                'Số điện thoại',
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff263238)),
              )),
          Positioned(
            top: 295.h,
            left: 48.w,
            child: SizedBox(
              width: 280.w,
              height: 49.h,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Nhập số điện thoại',
                    contentPadding:
                        const EdgeInsets.only(top: 15, left: 16, bottom: 12),
                    hintStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff717171)),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide:
                          BorderSide(color: Color(0x00a1a1a1), width: 1),
                    )),
              ),
            ),
          ),
          Positioned(
              top: 360.h,
              left: 48.w,
              child: Text(
                'Mật khẩu',
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff263238)),
              )),
          Positioned(
            top: 387.h,
            left: 48.w,
            child: SizedBox(
              width: 280.w,
              height: 49.h,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Nhập mật khẩu',
                    contentPadding:
                        const EdgeInsets.only(top: 15, left: 16, bottom: 12),
                    hintStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff717171)),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide:
                          BorderSide(color: Color(0x00a1a1a1), width: 1),
                    )),
              ),
            ),
          ),
          Positioned(
            top: 446.h,
            left: 48.w,
            child: SizedBox(
              height: 17.0,
              width: 17.0,
              child: IconButton(
                  padding: const EdgeInsets.all(0.0),
                  onPressed: () {
                    setState(() {
                      _rememberMe = !_rememberMe;
                    });
                  },
                  icon: Image.asset(
                      _rememberMe
                          ? 'assets/images/check.png'
                          : 'assets/images/un_check.png',
                      width: 17,
                      height: 17)),
            ),
          ),
          Positioned(
              top: 444.h,
              left: 75.w,
              child: Text(
                'Lưu mật khẩu',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffE1B000)),
              )),
          Positioned(
              top: 444.h,
              left: 224.w,
              child: Text(
                'Quên mật khẩu?',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffE1B000)),
              )),
          Positioned(
              top: 500.h,
              left: 48.w,
              width: 280.w,
              height: 48.h,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffffd233)),
                child: Center(
                  child: Text(
                    'Đăng nhập',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: const Color(0xff161616),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              )),
          Positioned(
              top: 718.h,
              left: 115.w,
              child: Text(
                'Bạn chưa có tài khoản',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )),
          Positioned(
              top: 749.h,
              left: 145.w,
              child: Text(
                'Đăng ký ngay',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffE1B000)),
              )),
        ]),
      ),
    );
  }
}
