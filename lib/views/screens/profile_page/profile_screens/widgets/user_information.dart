import 'package:accum_points_app/views/components_app/background_offer.dart';
import 'package:accum_points_app/views/dependents_app/constants.dart';
import 'package:accum_points_app/views/screens/profile_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserInformation extends StatelessWidget {
  final String? title;
  final String? correct;
  const UserInformation({Key? key, this.title, this.correct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 53.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Image.asset("assets/images/Path back.png"),
                      color: const Color(0xffa1a1a1),
                    ),
                    Text(
                      title!,
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w700),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(correct!,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: kTextPrimaryColors,
                            ))),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Stack(
                  children: [
                    Image.asset("assets/images/Rectangle 573.png"),
                    Positioned(
                      top: 7.h,
                      left: 118.w,
                      right: 117.w,
                      bottom: 81.h,
                      child: Container(
                        width: 100.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 4),
                              color: const Color(0xffa4a4a4).withOpacity(0.25),
                            ),
                          ],
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            image: AssetImage("assets/images/avatar.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 92.w,
                      right: 91.w,
                      bottom: 12.h,
                      top: 116.h,
                      child: Container(
                        padding: EdgeInsets.only(top: 8.h),
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff).withOpacity(0.6),
                          borderRadius: BorderRadius.circular(4.w),
                        ),
                        width: 152.w,
                        height: 60.h,
                        child: Column(
                          children: [
                            const Center(
                              child: Text("Kim Ngân"),
                            ),
                            SizedBox(height: 4.h),
                            const Center(
                              child: Text("0988886666"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const BackgroundOffer(),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 340.h),
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Họ tên",
                      style: TextStyle(
                          color: const Color(0xff717171),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Kim Ngân",
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Divider(),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hạng",
                      style: TextStyle(
                          color: const Color(0xff717171),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Tiêu chuẩn",
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Divider(),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                          color: const Color(0xff717171),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "kimngan12345@gmail.com",
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Divider(),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Số điện thoại",
                      style: TextStyle(
                          color: const Color(0xff717171),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "098888666",
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Divider(),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Số CMND/CCCD",
                      style: TextStyle(
                          color: const Color(0xff717171),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "098888666",
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Divider(),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Giới tính",
                      style: TextStyle(
                          color: const Color(0xff717171),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Nữ",
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Divider(),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ngày sinh",
                      style: TextStyle(
                          color: const Color(0xff717171),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "14/05/1990",
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Divider(),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Địa chỉ",
                      style: TextStyle(
                          color: const Color(0xff717171),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Duy Tân, Dịch Vọng Hậu, Cầu Giấy",
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
