import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleDetail extends StatelessWidget {
  final String title;
  final Widget widget;
  const TitleDetail({Key? key, required this.title, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(
            top: 57.h,
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Positioned(
          top: 51.h,
          left: 17.w,
          child: GestureDetector(
              onTap: () {}, child: Image.asset("assets/icons/arrow-left.png")),
        ),
        Positioned(top: 59.h, right: 18.w, child: widget),
      ],
    );
  }
}


/* 
 
*/