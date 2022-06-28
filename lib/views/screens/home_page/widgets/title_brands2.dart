import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants.dart';

class TitleBrands2 extends StatelessWidget {
  const TitleBrands2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.0,
      // height: ScreenUtil().setHeight(510.0),
      padding: const EdgeInsets.only(
        left: 18.0,
        right: 18.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Săn ưu đãi",
            style: TextStyle(
              color: kTextTitleBigColors,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          // SizedBox(width: ScreenUtil().setWidth(179.0),),
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
