import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../dependents_app/constants.dart';

class InforTabbarPartner extends StatelessWidget {
  const InforTabbarPartner({
    Key? key,
    required this.infor,
  }) : super(key: key);
  final String? infor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      margin: EdgeInsets.only(top: 17.h, bottom: 16.h),
      child: SingleChildScrollView(
        child: Text(
          infor!,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: kTextTitleBigColors),
        ),
      ),
    );
  }
}
