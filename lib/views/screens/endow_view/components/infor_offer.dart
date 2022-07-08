import 'package:accum_points_app/views/dependents_app/constants.dart';
import 'package:accum_points_app/views/screens/endow_view/components/button_endow.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InforOffer extends StatelessWidget {
  const InforOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 18.w, right: 18.w),
      margin: EdgeInsets.only(
        top: 123.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/hello summer 18.png"),
          SizedBox(
            height: 13.h,
          ),
          DottedBorder(
            padding: EdgeInsets.zero,
            strokeWidth: 0.1.w,
            borderType: BorderType.RRect,
            radius: Radius.circular(10.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(8.w, 8.w, 0.0, 8.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/coffe_house 67_67.png"),
                      SizedBox(
                        width: 25.w,
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                SizedBox(
                                  width: 12.w,
                                ),
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
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Image.asset("assets/images/Rectangle 56.png"),
                    Container(
                      padding: EdgeInsets.only(left: 11.w, top: 6.h),
                      child: Row(
                        children: [
                          Text(
                            "50",
                            style: TextStyle(
                              color: kTextPrimaryColors,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Image.asset("assets/images/Group 105.png"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            "Chi tiết",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Container(
            height: 80.h,
            child: Text(
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. ",
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: kTextTitleBigColors,
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          const DottedLine(
            lineThickness: 0.1,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Điều kiện áp dụng",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Container(
            height: 60,
            child: Text(
              "If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text",
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: kTextTitleBigColors,
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          const DottedLine(
            lineThickness: 0.1,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "Địa điểm áp dụng",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Column(
              children: List.generate(
            2,
            (index) => Container(
              margin: EdgeInsets.only(bottom: 9.h),
              child: Row(
                children: [
                  Container(
                    width: 30.w,
                    height: 30.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/images/image_30x30.png"),
                      fit: BoxFit.cover,
                    )),
                  ),
                  SizedBox(
                    width: 17.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The coffee house Duy Tân",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/icons/location1.png",
                            width: 11.w,
                            height: 13.h,
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          const Text("Số 6, the are many variations  "),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
          SizedBox(
            height: 20.h,
          ),
          const ButtonEndow(),
        ],
      ),
    );
  }
}
