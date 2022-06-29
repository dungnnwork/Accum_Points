
import 'package:accum_points_app/views/component/background_page.dart';
import 'package:accum_points_app/views/component/banner.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/brands/brands.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  final controller = PageController(initialPage: 1);
  
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375.0, 812.0));
    return Scaffold(
      body: Stack(
        children: [
    const  BackgroundPage(),
    const  Welcome(),
       //  SizedBox(height: 16.h,),
           Container(
            padding: EdgeInsets.only(top: 130.h,),
            alignment: AlignmentDirectional.topStart,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: 375.w,
                      height: 154.h,
                      child: PageView.builder(
                        itemCount: bannerList.length,
                        controller: controller,
                        itemBuilder: ((context, index) {
                          return Container(
                            margin:  EdgeInsets.symmetric(horizontal: 16.w),
                             decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.w),
                               image:  DecorationImage(
                                image: AssetImage(bannerList[index].thumnail),
                                fit: BoxFit.cover,
                          )
                           ),
                         );
                        }
                        ),
                        ),
                    ),
                    SizedBox(height: 16.h),
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

