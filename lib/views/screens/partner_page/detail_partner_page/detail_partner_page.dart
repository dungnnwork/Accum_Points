import 'package:accum_points_app/views/components_app/background_page.dart';
import 'package:accum_points_app/views/components_app/background_product.dart';
import 'package:accum_points_app/views/components_app/title_detail.dart';
import 'package:accum_points_app/views/screens/partner_page/detail_partner_page/component/banner_partner.dart';
import 'package:accum_points_app/views/screens/partner_page/detail_partner_page/component/label_detail_partner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'component/tabbar_partner.dart';

class DetailPartnerPage extends StatefulWidget {
  const DetailPartnerPage({Key? key}) : super(key: key);

  @override
  State<DetailPartnerPage> createState() => _DetailPartnerPageState();
}

class _DetailPartnerPageState extends State<DetailPartnerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPage(),
          Column(
            children: [
              const TitleDetail(
                title: 'Chi tiết đối tác',
              ),
              Expanded(
                child: BackGroundProduct(
                  child: Container(
                    padding: EdgeInsets.only(top: 18.h),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            const BannerPartner(
                                image: 'assets/images/hello summer 18.png'),
                            SizedBox(height: 24.h),
                            const LabelDetailPartner(
                              image: 'assets/images/coffe_house 67_67.png',
                              title: 'The coffee house',
                              typeAdress: 'Nhà hàng',
                            ),
                          ],
                        ),
                        const TabBarPartner(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
