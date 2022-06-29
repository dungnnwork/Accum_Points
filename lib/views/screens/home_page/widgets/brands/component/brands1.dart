import 'package:accum_points_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Brands1 extends StatelessWidget {
  const Brands1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   ScreenUtil.init(context, designSize: const Size(375.0, 812.0));    
   List<Map<String, dynamic>> brands = [
      {
        "title": "The coffee house",
        "image": "assets/images/the coffee house.png",
      },
      {
        "title": "Gemini coffee",
        "image": "assets/images/Logo-Gemini-Coffee.png",
      },
      {
        "title": "The coffee house",
        "image": "assets/images/the coffee house.png",
      },
      {
        "title": "Gemini coffee",
        "image": "assets/images/Logo-Gemini-Coffee.png",
      },
       {
        "title": "The coffee house",
        "image": "assets/images/the coffee house.png",
      },
      {
        "title": "Gemini coffee",
        "image": "assets/images/Logo-Gemini-Coffee.png",
      },
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          brands.length,
          (index) => Container(
            height: 125.h,
            width: 125.w,
            margin: index != brands.length - 1
                ? EdgeInsets.only(right: 14.w)
                : const EdgeInsets.only(right: 0.0),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 54.h,
                    width: 125.w,
                    margin: EdgeInsets.only(
                        bottom: 8.h),
                    padding: EdgeInsets.only(
                      top: 20.h,
                    ),
                    decoration: BoxDecoration(
                        color: kBackgroundColors,
                        borderRadius: BorderRadius.circular(
                            11.h
                            ),
                        boxShadow: [
                          BoxShadow(
                            color: kTextTitleBigColors.withOpacity(0.16),
                            blurRadius: 4.0,
                            offset: const Offset(0, 4),
                          )
                        ]),
                    child: Text(
                      brands[index]['title'],
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: kTextTitleBigColors,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(5.w),
                  child: Image.asset(
                    brands[index]['image'],
                    fit: BoxFit.cover,
                    height: 81.h,
                    width: 125.w,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
