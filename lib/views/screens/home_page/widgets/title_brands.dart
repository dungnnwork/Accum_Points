
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants.dart';

class TitleBrands extends StatelessWidget {
  const TitleBrands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 18.0,right: 18.0,top: 20.0,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
    const Text(
            "Thương hiệu tích - tiêu điểm",
            style: TextStyle(
              color: kTextTitleBigColors,
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Xem tất cả",
              style: TextStyle(
                color: kTextPrimaryColors,
                fontSize: 12.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
