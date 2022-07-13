import 'package:accum_points_app/views/components_app/background_offer.dart';
import 'package:accum_points_app/views/components_app/background_page.dart';
import 'package:accum_points_app/views/components_app/title_detail.dart';
import 'package:accum_points_app/views/screens/profile_page/profile_screens/widgets/my_endow_detail.dart';
import 'package:flutter/material.dart';

class MyEndow extends StatefulWidget {
  const MyEndow({Key? key}) : super(key: key);

  @override
  State<MyEndow> createState() => _MyEndowState();
}

class _MyEndowState extends State<MyEndow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPage(),
          Column(
            children: const [
              TitleDetail(
                  title: "Ưu đãi của tôi",
                  widgetLeft: "assets/images/Vector heart.png",
                  widgetRight: ''),
              BackgroundOffer(),
            ],
          ),
          const MyEndowDetail(),
        ],
      ),
    );
  }
}
