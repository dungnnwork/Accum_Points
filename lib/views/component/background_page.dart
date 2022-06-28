import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants.dart';
// import '../../size_config.dart';

class BackgroundPage extends StatelessWidget {
  const BackgroundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(327.0),
      width: ScreenUtil().setWidth(375.0),
      // height: SizeConfig().screenHeight,
      // width: SizeConfig().screenWidth,
      decoration: BoxDecoration(
        gradient: kLineargradientBackgroundColors,
      ),
      child: Stack(
        // alignment: AlignmentDirectional.topStart,
        children: [
          Image.asset(
            "assets/images/Ellipse 14.png",
            // width: ScreenUtil().setWidth(356.0),
            // height: ScreenUtil().setHeight(356.0),
            ),
          Image.asset(
            "assets/images/Ellipse 15.png",
              // width: ScreenUtil().setWidth(356.0),
              // height: ScreenUtil().setHeight(356.0),
            ),
          Image.asset(
            "assets/images/Ellipse 16.png",
              // width: ScreenUtil().setWidth(389.0),
              // height: ScreenUtil().setHeight(356.0),
            ),
        ],
      ),
    );
  }
}
