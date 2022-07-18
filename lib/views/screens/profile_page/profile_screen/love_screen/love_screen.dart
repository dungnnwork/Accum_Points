import 'package:accum_points_app/views/components_app/background_offer.dart';
import 'package:accum_points_app/views/components_app/background_page.dart';
import 'package:accum_points_app/views/components_app/title_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LoveScreen extends StatefulWidget {
  const LoveScreen({Key? key}) : super(key: key);

  @override
  State<LoveScreen> createState() => _LoveScreenState();
}

class _LoveScreenState extends State<LoveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPage(),
                Column(
                  children: [
                    TitleDetail(title: "Yêu thích",
                     widgetLeft: Image.asset("assets/images/Path back.png"),
                     ),
                    SizedBox(height: 11.h,),
             const  BackgroundOffer(),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 132.h),
                  color: Colors.blue,
                ),
        ],
      ),
    );
  }
}