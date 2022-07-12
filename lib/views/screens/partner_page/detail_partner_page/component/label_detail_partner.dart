import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../dependents_app/constants.dart';

class LabelDetailPartner extends StatelessWidget {
  const LabelDetailPartner({
    Key? key,
    required this.image,
    required this.title,
    required this.typeAdress,
  }) : super(key: key);
  final String? image;
  final String? title;
  final String? typeAdress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Row(
        children: [
          SizedBox(
            height: 67.h,
            width: 67.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0.w),
              child: Image.asset(image!),
            ),
          ),
          SizedBox(width: 8.w),
          DottedLine(
            direction: Axis.vertical,
            lineLength: 67.h,
            lineThickness: 1.w,
            dashLength: 1.86.h,
            dashGapLength: 1.86.h,
            dashColor: const Color(0xffA1A1A1),
          ),
          SizedBox(width: 17.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  color: kTextTitleBigColors,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                typeAdress!,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                  color: kTextPrimaryColors,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
