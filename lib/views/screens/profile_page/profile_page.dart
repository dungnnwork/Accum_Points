import 'package:accum_points_app/views/components_app/background_offer.dart';
import 'package:accum_points_app/views/components_app/background_page.dart';
import 'package:accum_points_app/views/components_app/title_detail.dart';
import 'package:accum_points_app/views/dependents_app/constants.dart';
import 'package:accum_points_app/views/screens/profile_page/profile_screens/love_screen/love_screen/love_screen.dart';
import 'package:accum_points_app/views/screens/profile_page/profile_screens/love_screen/love_screen/point_history.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPage(),
          Column(
            children: [
              TitleDetail(
                title: "Cá nhân",
                widget: Container(),
              ),
              Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.only(
                    left: 10.w, top: 12.h, right: 6.w, bottom: 12.h),
                width: 339.w,
                height: 89.h,
                decoration: BoxDecoration(
                  color: const Color(0xfffff8dd).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10.w),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 56.w,
                      height: 56.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 4),
                              blurRadius: 4,
                              color: const Color(0xffA4A4A4).withOpacity(0.25)),
                        ],
                        border: Border.all(
                          width: 375.w,
                          color: kBackgroundColors,
                          style: BorderStyle.solid,
                        ),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/avatar.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Kim Ngân",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 163.w,
                            ),
                            Container(
                              width: 8.w,
                              height: 14.h,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Chevron_Right.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/Group 160.png"),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              "Hạng Tiêu Chuẩn",
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                top: 3.h,
                                left: 9.w,
                                right: 6.5.h,
                                bottom: 3.h,
                              ),
                              decoration: BoxDecoration(
                                color: kBackgroundColors,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(31.25)),
                                boxShadow: [
                                  BoxShadow(
                                      offset: const Offset(0, 4),
                                      blurRadius: 4,
                                      color:
                                          kTextTitleBigColors.withOpacity(0.1))
                                ],
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "1000",
                                    style: TextStyle(
                                      color: const Color(0xffC19700),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Image.asset('assets/icons/user_point.png'),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              width: 8.w,
                              height: 14.h,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Chevron_Right.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              const BackgroundOffer(),
            ],
          ),
          //  const   ProfileAction(),
          Container(
            padding: EdgeInsets.only(top: 248.h, left: 20.w, right: 18.w),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Image.asset("assets/icons/icons_profile/ticket-star.png"),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "Ưu đãi của tôi",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13.sp,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                const DottedLine(
                  lineThickness: 0.1,
                ),
                SizedBox(
                  height: 15.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Image.asset("assets/icons/icons_profile/people.png"),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "Mời bạn bè",
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                const DottedLine(lineThickness: 0.1),
                SizedBox(
                  height: 15.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PointHistory()));
                  },
                  child: Row(
                    children: [
                      Image.asset("assets/icons/icons_profile/book.png"),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "Lịch sử điểm",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                const DottedLine(lineThickness: 0.1),
                SizedBox(
                  height: 15.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoveScrenn()));
                  },
                  child: Row(
                    children: [
                      Image.asset("assets/icons/icons_profile/Group 172.png"),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "Yêu thích",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                const DottedLine(lineThickness: 0.1),
                SizedBox(
                  height: 15.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Image.asset("assets/icons/icons_profile/info-circle.png"),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "Về chúng tôi",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                const DottedLine(lineThickness: 0.1),
                SizedBox(
                  height: 15.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Image.asset("assets/icons/icons_profile/headphone.png"),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "Hỗ trợ",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                const DottedLine(lineThickness: 0.1),
                SizedBox(
                  height: 15.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Image.asset("assets/icons/icons_profile/unlock.png"),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "Đổi mật khẩu",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                const DottedLine(lineThickness: 0.1),
                SizedBox(
                  height: 15.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Image.asset("assets/icons/icons_profile/login.png"),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "Đăng xuất",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
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
