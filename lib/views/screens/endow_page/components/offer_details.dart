
import 'package:accum_points_app/views/components_app/background_offer.dart';
import 'package:accum_points_app/views/components_app/background_page.dart';
import 'package:accum_points_app/views/dependents_app/constants.dart';
import 'package:accum_points_app/views/components_app/title_detail.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
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
                  widget: IconButton(
                    onPressed: (){},
                    icon: Image.asset("assets/images/Vector heart.png"),
                    ),
                  ),
       const    BackgroundOffer(),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 18.w, right: 18.w),
              margin: EdgeInsets.only(top: 123.h,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/hello summer 18.png"),
                  SizedBox(height: 13.h,),
                  Container(
                    child: DottedBorder(
                      strokeWidth: 1.w,
                      borderType: BorderType.RRect,
                      radius: Radius.circular(10.w),
                      child: Row(
                        children: [
                          Image.asset("assets/images/coffe_house 67_67.png"),
                          SizedBox(width: 25.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Ưu đãi giảm 15%",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                ),
                              Text(
                                "The coffee house",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: kTextPrimaryColors,
                                ),
                                ),
                              Row(
                                children: [
                                  Text(
                                    "Thời hạn:",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    ),
                                  SizedBox(width: 12.w,),
                                  Text(
                                    "30/06/2022",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    )  
                                ],
                              ),  
                            ],
                          ),
                          SizedBox(width: 39.w,),
                          Stack(
                            children: [
                              Image.asset("assets/images/Rectangle 56.png"),
                              Container(
                                child: Row(
                                  children: [
                              const Text("50 "),
                                    Image.asset("assets/images/Group 105.png"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h,),
                  Text(
                    "Chi tiết",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    ),
                  SizedBox(height: 8.h,),
           const  Text(
                    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable"
                    ),
                  SizedBox(height: 12.h,),
            const DottedLine(
                  ),
                  SizedBox(height: 10.h,),
                  Text(
                    "Điều kiện áp dụng",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    ),
                   SizedBox(height: 8.h,),
             const Text("If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text") ,
                   SizedBox(height: 12.h,),
             const DottedLine(),
                   SizedBox(height: 5.h,),     
                   Text(
                    "Địa điểm áp dụng",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    ),

                ],
              ),
            ),
        ],
      ),
    );
  }
}