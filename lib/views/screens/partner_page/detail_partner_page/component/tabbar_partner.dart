import 'package:accum_points_app/views/screens/partner_page/detail_partner_page/component/andress_tabbar_partner.dart';
import 'package:accum_points_app/views/screens/partner_page/detail_partner_page/component/endow_tabbar_partner.dart';
import 'package:accum_points_app/views/screens/partner_page/detail_partner_page/component/infor_tabbar_partner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../dependents_app/constants.dart';

class TabBarPartner extends StatefulWidget {
  const TabBarPartner({
    Key? key,
  }) : super(key: key);

  @override
  State<TabBarPartner> createState() => _TabBarPartnerState();
}

class _TabBarPartnerState extends State<TabBarPartner>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);

    return Container(
      margin: EdgeInsets.only(top: 250.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Container(
              height: 40.h,
              padding: EdgeInsets.only(top: 6.h, left: 6.h, bottom: 6.h),
              decoration: BoxDecoration(
                  color: const Color(0xffFFFAE9),
                  borderRadius: BorderRadius.circular(20.w)),
              child: TabBar(
                labelColor: kTextTitleBigColors,
                unselectedLabelColor: const Color(0xff757575),
                controller: tabController,
                indicator: BoxDecoration(
                    color: const Color(0xffFFD233),
                    borderRadius: BorderRadius.circular(14.w)),
                tabs: [
                  Tab(
                    child: Text(
                      'Thông tin',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 14.sp),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Cửa hàng',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 14.sp),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Ưu đãi',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 14.sp),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                InforTabbarPartner(
                  infor:
                      "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text ",
                ),
                AndressTabbarPartner(),
                EndowTabbarPartner(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
