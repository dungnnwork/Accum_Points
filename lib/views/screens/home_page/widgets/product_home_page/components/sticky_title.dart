import 'package:accum_points_app/views/screens/endow_page/endow_page.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/product_home_page/components/brands_partner.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/product_home_page/components/title_background_product.dart';
import 'package:accum_points_app/views/screens/partner_page/partner_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliver_tools/sliver_tools.dart';

class StikyTitle extends StatelessWidget {
  const StikyTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPinnedHeader(
      child: Column(
        children: [
          TitleBackGroundProduct(
            title: 'Thương hiệu tích - tiêu điểm',
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PartnerPage()));
            },
          ),
          SizedBox(height: 16.h),
          const BrandsPartner(),
          SizedBox(height: 1.h),
          TitleBackGroundProduct(
            title: 'Săn ưu đãi',
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const EndowPage()));
            },
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
