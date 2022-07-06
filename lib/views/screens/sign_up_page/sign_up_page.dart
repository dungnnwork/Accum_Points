import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: // Figma Flutter Generator NgkWidget - FRAME
          Container(
              width: 375.w,
              height: 812.h,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(children: <Widget>[
                Positioned(
                    top: 127.w,
                    left: 19.h,
                    child: Container(
                        width: 337.w,
                        height: 508.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.1),
                                offset: Offset(0, -5),
                                blurRadius: 50)
                          ],
                          color: const Color(0xfffdfdfd),
                        ))),
                Positioned(
                    top: 153.h,
                    left: 123.w,
                    child: Text(
                      'Đăng ký',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: const Color(0xff0f0f0f),
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                Positioned(
                    top: 229.h,
                    left: 48.w,
                    child: Text(
                      'Số điện thoại',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: const Color(0xff0f0f0f),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                Positioned(
                    top: 256.h,
                    left: 48.w,
                    width: 280.w,
                    height: 49.h,
                    child: const TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Nhập số điện thoại',
                          contentPadding:
                              EdgeInsets.only(top: 15, left: 16, bottom: 12),
                          hintStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xffa1a1a1), width: 1))),
                    )),
                Positioned(
                    top: 321.h,
                    left: 48.w,
                    child: Text(
                      'Mật khẩu',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: const Color(0xff0f0f0f),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                Positioned(
                    top: 348.h,
                    left: 48.w,
                    width: 280.w,
                    height: 49.h,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Nhập mật khẩu',
                        contentPadding: const EdgeInsets.only(
                            top: 15, left: 16, bottom: 12),
                        hintStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Color(0xffa1a1a1), width: 1)),
                        suffixIcon: IconButton(
                          icon: Icon(_secureText
                              ? Icons.visibility_off
                              : Icons.remove_red_eye),
                          onPressed: () {
                            setState(() {
                              _secureText = !_secureText;
                            });
                          },
                        ),
                      ),
                      obscureText: _secureText,
                    )),
                Positioned(
                    top: 413.h,
                    left: 48.w,
                    child: Text(
                      'Nhập lại mật khẩu',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: const Color(0xff0f0f0f),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                Positioned(
                    top: 440.h,
                    left: 48.w,
                    width: 280.w,
                    height: 49.h,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Nhập mật khẩu',
                        contentPadding: const EdgeInsets.only(
                            top: 15, left: 16, bottom: 12),
                        hintStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Color(0xffa1a1a1), width: 1)),
                        suffixIcon: IconButton(
                          icon: Icon(_secureText
                              ? Icons.visibility_off
                              : Icons.remove_red_eye),
                          onPressed: () {
                            setState(() {
                              _secureText = !_secureText;
                            });
                          },
                        ),
                      ),
                      obscureText: _secureText,
                    )),
                Positioned(
                    top: 537.h,
                    left: 48.w,
                    width: 280.w,
                    height: 48.h,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffffd233)),
                      child: Center(
                        child: Text(
                          'Đăng ký',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: const Color(0xff1e1e1e),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    )),
                Positioned(
                    top: 718.h,
                    left: 122.w,
                    child: Text(
                      'Bạn đã có tài khoản',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: const Color(0xff0f0f0f),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                Positioned(
                    top: 749.h,
                    left: 136.w,
                    child: Text(
                      'Đăng nhập ngay',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: const Color(0xffe1b000),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
              ])),
    );
  }
}
