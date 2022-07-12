import 'package:accum_points_app/views/components_app/background_offer.dart';
import 'package:accum_points_app/views/components_app/background_page.dart';
import 'package:accum_points_app/views/components_app/brands.dart';
import 'package:accum_points_app/views/components_app/title_detail.dart';
import 'package:accum_points_app/views/dependents_app/constants.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/product_home_page/components/endows_partner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoveScrenn extends StatefulWidget {
  const LoveScrenn({Key? key}) : super(key: key);

  @override
  State<LoveScrenn> createState() => _LoveScrennState();
}

class _LoveScrennState extends State<LoveScrenn> with TickerProviderStateMixin {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    // List<Map<String, dynamic>> favariteOffers = [
    //    {
    //     "image"       : "assets/images/hello summer.png",
    //     "title"       : "Ưu đãi giảm 50.000 đồng",
    //     "nameBrand"   : "The coffee house",
    //     'numberPoints': 50,
    //   },
    //   {
    //     "image"       : "assets/images/super sale.png",
    //     "title"       : "Ưu đãi giảm 50.000 đồng",
    //     "nameBrand"   : "Gemini",
    //     'numberPoints': 200,
    //   },
    //   {
    //     "image"       : "assets/images/hello summer.png",
    //     "title"       : "Ưu đãi giảm 50.000 đồng",
    //     "nameBrand"   : "The coffee house",
    //     'numberPoints': 50,
    //   },
    // ];
    List<Map<String, String>> listBrands = [
      {
        'image': 'assets/images/coffe_house 67_67.png',
        'nameBrand': 'The coffee house',
        'typeBrand': 'Nhà hàng',
      },
      {
        'image': 'assets/images/tri_tue_book.png',
        'nameBrand': 'Nhà sách Trí Tuệ',
        'typeBrand': 'Nhà sách',
      },
      {
        'image': 'assets/images/download 3.png',
        'nameBrand': 'Nhà sách Tiến Thọ',
        'typeBrand': 'Nhà sách',
      },
      {
        'image': 'assets/images/coffe_house 67_67.png',
        'nameBrand': 'The coffee house',
        'typeBrand': 'Nhà hàng',
      },
    ];
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPage(),
          Column(
            children: [
              const TitleDetail(
                title: "Yêu thích",
              ),
              SizedBox(
                height: 11.h,
              ),
              const BackgroundOffer(),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 130.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Container(
                    height: 50.h,
                    padding: EdgeInsets.only(top: 6.h, bottom: 6.h, left: 6.w),
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFAE9),
                      borderRadius: BorderRadius.circular(20.w),
                    ),
                    child: TabBar(
                      labelColor: kTextTitleBigColors,
                      unselectedLabelColor: const Color(0xff757575),
                      controller: tabController,
                      indicator: BoxDecoration(
                        color: kbuttonBackgroundColors,
                        borderRadius: BorderRadius.circular(14.w),
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            "Ưu đãi",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Thương hiệu",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
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
                        margin: EdgeInsets.only(top: 20.h),
                        child: const SingleChildScrollView(
                          child: EndowsPartner(),
                        ),
                        // child: Column(
                        //   // children: List.generate(favariteOffers.length, (index) => Endow(
                        //   //   image: favariteOffers[index]['image'],
                        //   //   titleEndow: favariteOffers[index]['titleEndow'],
                        //   //   nameBrandEndow: favariteOffers[index]['nameBrand'],
                        //   //   numberPoints: favariteOffers[index]['numberPoints'],
                        //   // ),
                        //   // ),
                        // ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 14.h),
                        child: Column(
                          children: List.generate(
                            listBrands.length,
                            (index) => Brand(
                              image: listBrands[index]['image'],
                              nameBrand: listBrands[index]['nameBrand'],
                              typeBrand: listBrands[index]['typeBrand'],
                            ),
                          ),
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
