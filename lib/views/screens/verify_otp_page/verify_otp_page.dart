import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({Key? key}) : super(key: key);

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 375.w,
        height: 812.h,
        child: Stack(children: <Widget>[
          Positioned(
            child: Container(
              width: 337,
              height: 433,
              decoration: BoxDecoration(color: Color(0xfffdfdfd), boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                )
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
