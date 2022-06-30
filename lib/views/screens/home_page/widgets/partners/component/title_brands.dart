
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../dependents_app/constants.dart';

class TitleBrands extends StatelessWidget {
  const TitleBrands({Key? key, required this.title, required this.onPress})
      : super(key: key);

  final String? title;
  final Function? onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      margin: EdgeInsets.only(top: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title!,
            style: TextStyle(
              color: kTextTitleBigColors,
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
            ),
          ),
          GestureDetector(
            onTap: onPress as void Function(),
            child: Text(
              "Xem tất cả",
              style: TextStyle(
                color: kTextPrimaryColors,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
