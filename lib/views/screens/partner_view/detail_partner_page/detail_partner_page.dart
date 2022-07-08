import 'package:accum_points_app/views/components_app/background_page.dart';
import 'package:accum_points_app/views/components_app/background_product.dart';
import 'package:accum_points_app/views/components_app/title_detail.dart';
import 'package:accum_points_app/views/dependents_app/constants.dart';
import 'package:accum_points_app/views/screens/home_view/widgets/product_home_page/components/endows_partner.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailPartnerPage extends StatefulWidget {
  const DetailPartnerPage({Key? key}) : super(key: key);

  @override
  State<DetailPartnerPage> createState() => _DetailPartnerPageState();
}

class _DetailPartnerPageState extends State<DetailPartnerPage>
    with TickerProviderStateMixin {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPage(),
          Column(
            children: [
              TitleDetail(
                title: 'Chi tiết đối tác',
                widget: Image.asset('assets/icons/Vector heart.png'),
              ),
              SizedBox(height: 12.h),
              Expanded(
                child: BackGroundProduct(
                  child: Container(
                    padding: EdgeInsets.only(top: 18.h),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18.w),
                              width: double.infinity,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(13.52.w),
                                child: Image.asset(
                                  "assets/images/hello summer 18.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 24.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18.w),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 67.h,
                                    width: 67.h,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(10.0.w),
                                      child: Image.asset(
                                          'assets/images/coffe_house 67_67.png'),
                                    ),
                                  ),
                                  SizedBox(width: 8.w),
                                  DottedLine(
                                    direction: Axis.vertical,
                                    lineLength: 67.h,
                                    lineThickness: 1.w,
                                    dashLength: 1.86.h,
                                    dashGapLength: 1.86.h,
                                    dashColor: const Color(0xffA1A1A1),
                                  ),
                                  SizedBox(width: 17.w),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'The coffee house',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp,
                                          color: kTextTitleBigColors,
                                        ),
                                      ),
                                      SizedBox(height: 8.h),
                                      Text(
                                        'Nhà hàng',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.sp,
                                          color: kTextPrimaryColors,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 250.h),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.w),
                                child: Container(
                                  height: 40,
                                  padding: EdgeInsets.only(
                                      top: 6.h, left: 6.h, bottom: 6.h),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffFFFAE9),
                                      borderRadius:
                                          BorderRadius.circular(20.w)),
                                  child: TabBar(
                                    labelColor: kTextTitleBigColors,
                                    unselectedLabelColor:
                                        const Color(0xff757575),
                                    controller: tabController,
                                    indicator: BoxDecoration(
                                        color: const Color(0xffFFD233),
                                        borderRadius:
                                            BorderRadius.circular(14.w)),
                                    tabs: [
                                      Tab(
                                        child: Text(
                                          'Thông tin',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.sp),
                                        ),
                                      ),
                                      Tab(
                                        child: Text(
                                          'Cửa hàng',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.sp),
                                        ),
                                      ),
                                      Tab(
                                        child: Text(
                                          'Ưu đãi',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.sp),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  controller: tabController,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 18.w),
                                      margin: EdgeInsets.only(
                                          top: 17.h, bottom: 16.h),
                                      child: SingleChildScrollView(
                                        child: Text(
                                          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13.sp,
                                              color: kTextTitleBigColors),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 15.h),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 18.w),
                                      child: Column(
                                        children: List.generate(
                                          5,
                                          (index) => Container(
                                            margin:
                                                EdgeInsets.only(bottom: 6.h),
                                            child: Column(
                                              children: [
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      width: 30.w,
                                                      height: 30.h,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      2.w),
                                                          image:
                                                              const DecorationImage(
                                                            image: AssetImage(
                                                                "assets/images/image_30x30.png"),
                                                            fit: BoxFit.cover,
                                                          )),
                                                    ),
                                                    SizedBox(
                                                      width: 17.w,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "The coffee house Ngoại giao đoàn",
                                                          style: TextStyle(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  kTextTitleBigColors),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Image.asset(
                                                              "assets/icons/location1.png",
                                                              width: 16.w,
                                                              height: 16.h,
                                                            ),
                                                            SizedBox(
                                                              width: 13.w,
                                                            ),
                                                            Text(
                                                              "Số 6, the are many variations of passages ",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize:
                                                                      12.sp,
                                                                  color:
                                                                      kTextTitleBigColors),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      width: 16.h,
                                                      height: 16.h,
                                                      child: Image.asset(
                                                          'assets/icons/direct-right.png'),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(height: 5.h),
                                                DottedLine(
                                                  direction: Axis.horizontal,
                                                  lineLength: double.infinity,
                                                  lineThickness: 1.w,
                                                  dashLength: 1.5.w,
                                                  dashGapLength: 2.w,
                                                  dashColor:
                                                      const Color(0xffC4C4C4),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 20.h),
                                      child: const SingleChildScrollView(
                                        child: EndowsPartner(),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

/* 
Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 6.w),
                              child: TabBar(
                                controller: tabController,
                                tabs: const [
                                  Tab(text: 'Thông tin '),
                                  Tab(text: 'Cửa hàng'),
                                  Tab(text: 'Ưu đãi'),
                                ],
                              ),
                            ),
                            SizedBox(height: 20.h),
                            TabBarView(
                              controller: tabController,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 18.w),
                                  child: const Text(
                                      "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text "),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 18.w),
                                  child: const Text(
                                      "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text "),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 18.w),
                                  child: const Text(
                                      "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text "),
                                )
                              ],
                            )
                          ],
                        ),


color: const Color(0xffFFFAE9),
                              borderRadius: BorderRadius.circular(20.w)),
padding: EdgeInsets.symmetric(
                                vertical: 6.h, horizontal: 6.w),
                                 Widget? onChangeChild() {
    Widget? child;
    switch (selectIndex) {
      case 0:
        child = Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: const Text(
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text "),
        );
        break;
      case 1:
        child = Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: const Text(
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text "),
        );

        break;
      case 2:
        child = const Expanded(
            child: SingleChildScrollView(child: EndowsPartner()));
        break;
    }
    return child;
  }

  double? onChangeHeight() {
    double? height;
    switch (selectIndex) {
      case 0:
        height = 24.h;
        break;
      case 1:
        height = 13.h;
        break;
      case 2:
        height = 20.h;
        break;
    }
    return height;
  }

*/
