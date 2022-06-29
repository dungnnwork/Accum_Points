import 'package:accum_points_app/views/screens/home_page/widgets/brands/component/brands1.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/brands/component/brands2.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/brands/component/title_brands.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../constants.dart';

class Brands extends StatelessWidget {
  const Brands({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375.0, 812.0));
    return Container(
      width: 375.w,
      padding:
          EdgeInsets.symmetric(horizontal: 18.w,),
      decoration: BoxDecoration(
        color: kBackgroundColors,
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, -3),
              blurRadius: 4.0,
              color: kTextTitleBigColors.withOpacity(0.1)),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.w),
          topRight: Radius.circular(20.w),
        ),
      ),
      child: Column(
        children: [
          TitleBrands(
            title: 'Thương hiệu tích - tiêu điểm',
            onPress: () {},
          ),
          SizedBox(height: 16.h),
    const Brands1(),
          SizedBox(height: 1.h),
          TitleBrands(
            title: 'Săn ưu đãi',
            onPress: () {},
          ),
          SizedBox(height: 16.h),
    const Brands2(),
        ],
      ),
    );
    
  }
}
