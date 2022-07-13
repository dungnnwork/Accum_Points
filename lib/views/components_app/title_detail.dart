import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleDetail extends StatelessWidget {
  final String title;
  final String widgetLeft;
  final String widgetRight;

  const TitleDetail({
    Key? key,
    required this.title,
    required this.widgetLeft,
    required this.widgetRight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 71.h, left: 17.w, right: 18.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.zero,
              width: 24.w,
              height: 24.h,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(widgetLeft)),
              ),
            ),
          ),

          Text(
            title,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.zero,
              width: 24.w,
              height: 24.h,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(widgetRight)),
              ),
            ),
          ),

          // IconButton(
          //   onPressed: (){},
          //   icon: Image.asset("assets/images/Vector heart.png"),
          //   ),
        ],
      ),
    );
  }
}
