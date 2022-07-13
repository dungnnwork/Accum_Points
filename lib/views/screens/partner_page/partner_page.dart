import 'package:accum_points_app/views/components_app/background_page.dart';
import 'package:accum_points_app/views/components_app/background_product.dart';
import 'package:accum_points_app/views/components_app/partner.dart';
import 'package:accum_points_app/views/components_app/title_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PartnerPage extends StatefulWidget {
  const PartnerPage({Key? key}) : super(key: key);

  @override
  State<PartnerPage> createState() => _PartnerPageState();
}

class _PartnerPageState extends State<PartnerPage> {
  List<Map<String, dynamic>> brands = [
    {
      'image': 'assets/images/coffe_house_big.png',
      'title': 'The coffee house',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/Gemini-Coffee-big.png',
      'title': 'Gemini coffee',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/king_coffee.png',
      'title': 'King Coffee',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/mentor_tea.png',
      'title': 'Trà đá Mentor',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/roll.png',
      'title': 'Bánh cuốn Gia An',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/o_mai.png',
      'title': 'Ô Mai Hồng Lam',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/coffe_house_big.png',
      'title': 'The coffee house',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/Gemini-Coffee-big.png',
      'title': 'Gemini coffee',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/king_coffee.png',
      'title': 'King Coffee',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/mentor_tea.png',
      'title': 'Trà đá Mentor',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/roll.png',
      'title': 'Bánh cuốn Gia An',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/o_mai.png',
      'title': 'Ô Mai Hồng Lam',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/coffe_house_big.png',
      'title': 'The coffee house',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/Gemini-Coffee-big.png',
      'title': 'Gemini coffee',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/king_coffee.png',
      'title': 'King Coffee',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/mentor_tea.png',
      'title': 'Trà đá Mentor',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/roll.png',
      'title': 'Bánh cuốn Gia An',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/o_mai.png',
      'title': 'Ô Mai Hồng Lam',
      'type_andress': 'Nhà hàng',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPage(),
          Column(
            children: [
              const TitleDetail(
                title: "Đối tác",
                widgetLeft: "",
                widgetRight: '',
              ),
              SizedBox(height: 12.h),
              Expanded(
                child: BackGroundProduct(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    margin: EdgeInsets.only(bottom: 16.h),
                    child: GridView.builder(
                        itemCount: brands.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12.h,
                          mainAxisSpacing: 11.h,
                        ),
                        itemBuilder: (context, index) => Partner(
                            image: brands[index]['image'],
                            title: brands[index]['title'],
                            typeAndress: brands[index]['type_andress'])),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
