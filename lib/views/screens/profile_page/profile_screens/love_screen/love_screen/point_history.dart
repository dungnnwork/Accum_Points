
import 'package:accum_points_app/views/components_app/background_page.dart';
import 'package:accum_points_app/views/components_app/title_detail.dart';


import 'package:flutter/material.dart';


class PointHistory extends StatelessWidget {
  const PointHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          const BackgroundPage(),
                Column(
                  children: [
                    TitleDetail(
                      title: "Lịch sử điểm",
                      widget: IconButton(
                                onPressed: () {},
                                icon: Image.asset("assets/images/Vector heart.png"),
                            )  ,
                   ),
                  ],
                ),
        ],
      ),
    );
  }
}