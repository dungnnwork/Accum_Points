import 'package:accum_points_app/views/dependents_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundOffer extends StatelessWidget {
  const BackgroundOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 87.h),
        // width: 375.w,
        // height: 812.h,
        decoration: BoxDecoration(
          color: kBackgroundColors,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, -3),
                blurRadius: 4.0,
                color: kTextTitleBigColors.withOpacity(0.1)),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.w),
            topRight: Radius.circular(20.w),
          ),
        ),
      ),
    );
  }
}