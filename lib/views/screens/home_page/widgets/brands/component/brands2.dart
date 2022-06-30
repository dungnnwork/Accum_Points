import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../constants.dart';

class Brands2 extends StatelessWidget {
  const Brands2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375.0, 812.0));
    List<Map<String, dynamic>> brands2 = [
      {
        "image": "assets/images/hello summer.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "The coffee house",
        'numberPoint': 50,
        "point": "assets/icons/point.png",
      },
      {
        "image": "assets/images/super sale.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "Gemini",
        'numberPoint': 200,
        "point": "assets/icons/point.png",
      },
      {
        "image": "assets/images/hello summer.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "The coffee house",
        'numberPoint': 50,
        "point": "assets/icons/point.png",
      },
      {
        "image": "assets/images/super sale.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "Gemini",
        'numberPoint': 200,
        "point": "assets/icons/point.png",
      },
      {
        "image": "assets/images/hello summer.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "The coffee house",
        'numberPoint': 50,
        "point": "assets/icons/point.png",
      },
      {
        "image": "assets/images/super sale.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "Gemini",
        'numberPoint': 200,
        "point": "assets/icons/point.png",
      },
    ];
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          brands2.length,
          (index) => Container(
            margin: EdgeInsets.only(bottom: 16.h),
            decoration: BoxDecoration(
              color: kBackgroundColors,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 4),
                  blurRadius: 4.0,
                  color: kTextTitleBigColors.withOpacity(0.16),
                ),
              ],
              borderRadius: BorderRadius.circular(5.w),
              border: Border.all(
                color: const Color(0xFFf4f4f4),
                width: 1.w,
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 125.w,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 4.h,
                      bottom: 4.h,
                      left: 4.w,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.w),
                      child: Image.asset(
                        brands2[index]['image'],
                        fit: BoxFit.cover,
                        height: 94.h,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 18.w),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 11.h,
                      right: 10.w,
                      bottom: 7.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              brands2[index]['title'],
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: kTextTitleBigColors,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: 16.w,
                                right: 16.w,
                                top: 5.h,
                                bottom: 4.h,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xfffff6d6),
                                borderRadius: BorderRadius.circular(
                                  5.w,
                                ),
                              ),
                              child: Text(
                                brands2[index]['nameBrand'],
                                style: const TextStyle(
                                  color: kTextPrimaryColors,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '${brands2[index]['numberPoint']}',
                              style: TextStyle(
                                color: kbuttonBackgroundColors,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 2.w),
                            Image.asset(
                              brands2[index]['point'],
                              width: 11.6.w,
                              height: 12.h,
                            ),
                          ],
                        )
                      ],
                    ),
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
