import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../dependents_app/constants.dart';

class Welcome extends StatelessWidget {
  const Welcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 18.w,
        right: 18.w,
        top: 61.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50.w,
            height: 50.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                    color: const Color(0xffA4A4A4).withOpacity(0.25)),
              ],
              border: Border.all(
                  width: 375.w,
                  color: kBackgroundColors,
                  style: BorderStyle.solid,
                  ),
              image: const DecorationImage(
                image: AssetImage('assets/images/avatar.jpg'),
              ),
            ),
          ),
          SizedBox(width: 18.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Xin chào Đặng Thanh Long!',
                style: TextStyle(
                  color: kTextTitleBigColors,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 6.h),
              Row(
                children: [
                  Text(
                    'Tiêu chuẩn',
                    style: TextStyle(
                      color: kTextTitleBigColors,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Container(
                    padding: EdgeInsets.only(
                        top: 3.h,
                        left: 9.w,
                        right: 6.5.h,
                        bottom: 3.h,
                        ),
                    decoration: BoxDecoration(
                      color: kBackgroundColors,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(31.25)),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 4),
                            blurRadius: 4,
                            color: kTextTitleBigColors.withOpacity(0.1))
                      ],
                    ),
                    child: Row(
                      children: [
                        Text(
                          '1000',
                          style: TextStyle(
                            color: const Color(0xffC19700),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Image.asset('assets/icons/user_point.png'),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          Image.asset('assets/icons/notification.png'),
        ],
      ),
    );
  }
}
