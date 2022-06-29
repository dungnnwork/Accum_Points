import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants.dart';

class BackgroundPage extends StatelessWidget {
  const BackgroundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375.0, 812.0));
    return Container(
      // padding: EdgeInsets.only(bottom: 406.h, top: 0.0,),
      height: 812.0.h,
      width: 375.0.w,
      decoration:  BoxDecoration(
        // color: Color(0XFFFFD223),
        gradient: kLineargradientBackgroundColors,
      ),
      child: Container(
        padding: EdgeInsets.only(right: 73.w,),
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          fit: StackFit.loose,
          textDirection: TextDirection.ltr,
          children: [
            Image.asset(
              "assets/images/Ellipse 14.png",
              height: 224.h,
              width: 332.w,
              
              ),
            Image.asset(
              "assets/images/Ellipse 15.png",
              width: 277.w,
              height: 220.h,
              ),
            Image.asset(
              "assets/images/Ellipse 16.png",
              height: 216.h,
              width: 240.w,
              ),
          ],
        ),
      ),
    );
  }
}
