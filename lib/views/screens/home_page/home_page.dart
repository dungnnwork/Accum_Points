import 'package:accum_points_app/views/components_app/background_page.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/banner_item.dart';
import 'package:accum_points_app/views/components_app/background_product.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/product_home_page/product_homepage.dart';
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
          const BackgroundPage(),
          const Welcome(),
          Container(
            padding: EdgeInsets.only(
              top: 130.h,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const BannerItem(),
                  SizedBox(height: 8.h),
                  const BackGroundProduct(
                    child: ProductHomepage(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
