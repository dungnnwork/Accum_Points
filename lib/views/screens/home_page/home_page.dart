


// import 'package:accum_points_app/size_config.dart';
import 'package:accum_points_app/views/component/background_page.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/brands.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/brands2.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/title_brands.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/title_brands2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      body: Stack(
        children: [
    const  BackgroundPage(),
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
          SizedBox(
            height:20.h,
            // child: Colors.black,
            ),
          ClipRRect(
            borderRadius: BorderRadius.only(
                  topLeft:
                      Radius.circular(ScreenUtil().radius(30.0.r)),
                  topRight:
                      Radius.circular(ScreenUtil().radius(30.0.r)),
                ),
            child: Container(
              padding: const EdgeInsets.only(top: 302.0,),
              width:375.r,
              // height: 512.0,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children:   [
                    // start text trademark
                    TitleBrands(),
                    // start image trademark
                    SizedBox(height: 16.h),
                    Brands(),
                    SizedBox(height: 22.h),
                    // start text preferential hunting
                    TitleBrands2(),
                    // SizedBox(height: 16.0),
                    // start preferential hunting
                    SizedBox(height: 20.h,),
                    Brands2(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

