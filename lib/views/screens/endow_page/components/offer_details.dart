import 'package:accum_points_app/views/components_app/background_offer.dart';
import 'package:accum_points_app/views/components_app/background_page.dart';
import 'package:accum_points_app/views/components_app/title_detail.dart';
import 'package:accum_points_app/views/screens/endow_page/components/infor_offer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class OfferDetails extends StatelessWidget {
  const OfferDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
    const BackgroundPage(),
          Column(
            children:  [
             TitleDetail(
                title: "Chi tiết ưu đãi",
                widgetLeft: Image.asset("assets/images/Path back.png"),
                widgetRight: Image.asset("assets/images/Vector heart.png"),
              ),
              SizedBox(height: 8.h,),
      const   BackgroundOffer(),
            ],
          ),
    const InforOffer(),  
        ],
      ),
    );
  }
}
