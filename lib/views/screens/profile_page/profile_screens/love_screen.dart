import 'package:accum_points_app/views/components_app/background_offer.dart';
import 'package:accum_points_app/views/components_app/background_page.dart';
import 'package:accum_points_app/views/components_app/title_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LoveScrenn extends StatelessWidget {
  const LoveScrenn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:  [
     const BackgroundPage(),
           Column(
            children: [
        const  TitleProfile(title: "Yêu thích"),
               SizedBox(height: 11.h,),
        const  BackgroundOffer(),
               
            ],
           ),
        ],
      ),
    );
  }
}