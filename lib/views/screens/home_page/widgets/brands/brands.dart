import 'package:accum_points_app/views/screens/home_page/widgets/brands/component/brands1.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/brands/component/brands2.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/brands/component/title_brands.dart';
import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../size_config.dart';

class Brands extends StatelessWidget {
  const Brands({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig().screenWidth,
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20.83)),
      decoration: BoxDecoration(
        color: kBackgroundColors,
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, -3),
              blurRadius: 4.0,
              color: kTextTitleBigColors.withOpacity(0.1)),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(getProportionateScreenWidth(18.75)),
          topRight: Radius.circular(getProportionateScreenWidth(18.75)),
        ),
      ),
      child: Column(
        children: [
          TitleBrands(
            title: 'Thương hiệu tích - tiêu điểm',
            onPress: () {},
          ),
          SizedBox(height: getProportionateScreenHeight(50.75)),
          const Brands1(),
          SizedBox(height: getProportionateScreenHeight(406.0)),
          TitleBrands(
            title: 'Săn ưu đãi',
            onPress: () {},
          ),
          SizedBox(height: getProportionateScreenHeight(50.75)),
          const Brands2(),
        ],
      ),
    );
  }
}
