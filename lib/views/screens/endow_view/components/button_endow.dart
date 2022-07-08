import 'package:accum_points_app/views/dependents_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonEndow extends StatefulWidget {
  const ButtonEndow({Key? key}) : super(key: key);

  @override
  State<ButtonEndow> createState() => _ButtonEndowState();
}

class _ButtonEndowState extends State<ButtonEndow> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 45.h,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(10.w),
          color: kbuttonBackgroundColors,
        ),
        child:  Center(
          child: Text(
            "Đổi ưu đãi",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
            ),
        ),
      ),
    );
  }
}