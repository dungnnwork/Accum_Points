import 'package:accum_points_app/views/components_app/background_page.dart';
import 'package:accum_points_app/views/components_app/title_detail.dart';
import 'package:flutter/material.dart';




class PartnerPage extends StatefulWidget {
  const PartnerPage({Key? key}) : super(key: key);

  @override
  State<PartnerPage> createState() => _PartnerPageState();
}

class _PartnerPageState extends State<PartnerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPage(),
                Column(
                  children: [
                     TitleDetail(
                      title: "Đối tác",
                      widget: IconButton(
                        onPressed: (){},
                        icon: Image.asset("assets/images/Vector heart.png"),
                        ),
                      ),
                  ],
                ),
        ],
      ),
    );
  }
}