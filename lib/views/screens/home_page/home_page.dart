
import 'package:accum_points_app/views/components/background_page.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/app_banner/banner_item.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/partners/brands.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
    const  BackgroundPage(),
    const  Welcome(),
           Container(
            padding: EdgeInsets.only(top: 130.h,),
            alignment: AlignmentDirectional.topStart,
              child: SingleChildScrollView(
                child: Column(
                  children: [
            const   BannerItem(),
                    SizedBox(height: 8.h),
              const Brands(),
                  ],
                ),
            ), 
           ),
        ],
      ),
    );
  }
}

