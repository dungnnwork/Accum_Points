import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../dependents_app/constants.dart';
import '../screens/partner_page/detail_partner_page/detail_partner_page.dart';

class Partner extends StatelessWidget {
  const Partner({
    Key? key,
    required this.image,
    required this.title,
    required this.typeAndress,
  }) : super(key: key);
  final String? image;
  final String? title;
  final String? typeAndress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const DetailPartnerPage(),
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 75.h,
              width: 161.w,
              margin: EdgeInsets.only(bottom: 8.h),
              padding: EdgeInsets.only(top: 24.h, left: 5.w, bottom: 10.h),
              decoration: BoxDecoration(
                color: kBackgroundColors,
                borderRadius: BorderRadius.circular(5.w),
                boxShadow: [
                  BoxShadow(
                    color: kTextTitleBigColors.withOpacity(0.16),
                    blurRadius: 4.0,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: kTextTitleBigColors,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    typeAndress!,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: kTextPrimaryColors,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.w),
                topRight: Radius.circular(5.w),
              ),
              child: Image.asset(
                image!,
                fit: BoxFit.cover,
                height: 106.h,
                width: 161.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
