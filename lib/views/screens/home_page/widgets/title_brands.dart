import 'package:accum_points_app/size_config.dart';
import 'package:flutter/material.dart';
import '../../../../constants.dart';

class TitleBrands extends StatelessWidget {
  const TitleBrands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getProportionateScreenHeight(40.6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Thương hiệu tích - tiêu điểm",
            style: TextStyle(
              color: kTextTitleBigColors,
              fontWeight: FontWeight.w600,
              fontSize: getProportionateScreenWidth(23.44),
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
