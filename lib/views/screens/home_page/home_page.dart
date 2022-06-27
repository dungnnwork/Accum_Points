import 'package:accum_points_app/size_config.dart';
import 'package:accum_points_app/views/component/background_page.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/brands.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/brands2.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/title_brands.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: SizeConfig().screenWidth,
        height: SizeConfig().screenHeight,
        child: Stack(
          children: [
            const BackgroundPage(),
            // Container(
            //   padding: EdgeInsets.only(
            //     top: SizeConfig().screenHeight * 0.06,
            //     left: 19.0,
            //     right: 19.0,
            //   ),
            //   child: Column(
            //     textDirection: TextDirection.ltr,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Row(
            //         children: [
            //           CircleAvatar(
            //             child: Image.asset("assets/images/avatar.png"),
            //           ),
            //           const SizedBox(
            //             width: 18.0,
            //           ),
            //           Column(
            //             textDirection: TextDirection.ltr,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               const Text(
            //                 "Xin chào Kim Ngân!",
            //                 style: TextStyle(
            //                   fontFamily: "Open Sans",
            //                   fontSize: 16.0,
            //                   fontWeight: FontWeight.bold,
            //                 ),
            //               ),
            //               const SizedBox(
            //                 height: 6.0,
            //               ),
            //               Row(
            //                 children: [
            //                   const Text(
            //                     "Tiêu chuẩn",
            //                     style: TextStyle(
            //                       fontFamily: "Open Sans",
            //                       fontSize: 14.0,
            //                       fontWeight: FontWeight.bold,
            //                     ),
            //                   ),
            //                   const SizedBox(
            //                     width: 12.0,
            //                   ),
            //                   Container(
            //                     child: Image.asset(
            //                         "assets/images/Group 159.png"),
            //                   ),
            //                 ],
            //               ),
            //             ],
            //           ),
            //           const SizedBox(
            //             width: 40.0,
            //           ),
            //           IconButton(
            //             onPressed: () {},
            //             icon: Image.asset(
            //               "assets/images/notification.png",
            //               width: 24.0,
            //               height: 24.0,
            //             ),
            //           )
            //         ],
            //       ),
            //       const SizedBox(
            //         height: 17.0,
            //       ),
            //       Image.asset(
            //         "assets/images/Group 120.png",
            //         width: 338.0,
            //         height: 154.0,
            //       ),
            //     ],
            //   ),
            // ),
            // ],
            // ),

            Container(
              width: SizeConfig().screenWidth,
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20.83)),
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TitleBrands(
                      title: 'Thương hiệu tích - tiêu điểm',
                      onPress: () {},
                    ),
                    SizedBox(height: getProportionateScreenHeight(50.75)),
                    const Brands(),
                    SizedBox(height: getProportionateScreenHeight(406.0)),
                    TitleBrands(
                      title: 'Săn ưu đãi',
                      onPress: () {},
                    ),
                    SizedBox(height: getProportionateScreenHeight(50.75)),
                    Brands2(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
