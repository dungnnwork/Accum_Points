import 'package:accum_points_app/size_config.dart';
import 'package:flutter/material.dart';
import '../../../../constants.dart';

class TitleBrands extends StatelessWidget {
  const TitleBrands({Key? key, required this.title, required this.onPress})
      : super(key: key);

  final String? title;
  final Function? onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getProportionateScreenHeight(40.6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title!,
            style: TextStyle(
              color: kTextTitleBigColors,
              fontWeight: FontWeight.w600,
              fontSize: getProportionateScreenWidth(23.44),
            ),
          ),
          GestureDetector(
            onTap: onPress as void Function(),
            child: Text(
              "Xem tất cả",
              style: TextStyle(
                color: kTextPrimaryColors,
                fontSize: getProportionateScreenWidth(31.25),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
