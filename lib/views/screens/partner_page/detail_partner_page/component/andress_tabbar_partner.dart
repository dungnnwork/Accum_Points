import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../dependents_app/constants.dart';

class AndressTabbarPartner extends StatelessWidget {
  const AndressTabbarPartner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.h),
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Column(
        children: List.generate(
          5,
          (index) => Container(
            margin: EdgeInsets.only(bottom: 6.h),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.w),
                          image: const DecorationImage(
                            image: AssetImage(
                                "assets/images/coffe_house_30x30.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      width: 17.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The coffee house Ngoại giao đoàn",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: kTextTitleBigColors),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/location1.png",
                              width: 16.w,
                              height: 16.h,
                            ),
                            SizedBox(
                              width: 13.w,
                            ),
                            Text(
                              "Số 6, the are many variations of passages ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  color: kTextTitleBigColors),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 16.h,
                      height: 16.h,
                      child: Image.asset('assets/images/direct-right.png'),
                    )
                  ],
                ),
                SizedBox(height: 5.h),
                DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 1.w,
                  dashLength: 1.5.w,
                  dashGapLength: 2.w,
                  dashColor: const Color(0xffC4C4C4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
