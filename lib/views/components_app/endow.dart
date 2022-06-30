import 'package:accum_points_app/views/dependents_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Endow extends StatelessWidget {
  const Endow({
    Key? key,
    required this.image,
    required this.titleEndow,
    required this.nameBrandEndow,
    required this.numberPoint,
  }) : super(key: key);

  final String? image;
  final String? titleEndow;
  final String? nameBrandEndow;
  final int? numberPoint;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        color: kBackgroundColors,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 4.0,
            color: kTextTitleBigColors.withOpacity(0.16),
          ),
        ],
        borderRadius: BorderRadius.circular(5.w),
        border: Border.all(
          color: const Color(0xFFf4f4f4),
          width: 1.w,
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 125.w,
            child: Padding(
              padding: EdgeInsets.only(
                top: 4.h,
                bottom: 4.h,
                left: 4.w,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.w),
                child: Image.asset(
                  image!,
                  fit: BoxFit.cover,
                  height: 94.h,
                ),
              ),
            ),
          ),
          SizedBox(width: 18.w),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                top: 11.h,
                right: 10.w,
                bottom: 7.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        titleEndow!,
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: kTextTitleBigColors,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 16.w,
                          right: 16.w,
                          top: 5.h,
                          bottom: 4.h,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xfffff6d6),
                          borderRadius: BorderRadius.circular(
                            5.w,
                          ),
                        ),
                        child: Text(
                          nameBrandEndow!,
                          style: const TextStyle(
                            color: kTextPrimaryColors,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '$numberPoint',
                        style: TextStyle(
                          color: kbuttonBackgroundColors,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Image.asset(
                        'assets/icons/point.png',
                        width: 11.6.w,
                        height: 12.h,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
