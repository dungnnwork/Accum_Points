import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../size_config.dart';

class BackgroundPage extends StatelessWidget {
  const BackgroundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig().screenHeight,
      width: SizeConfig().screenWidth,
      decoration: BoxDecoration(
        gradient: kLineargradientBackgroundColors,
      ),
      child: Stack(
        children: [
          Image.asset("assets/images/Ellipse 14.png"),
          Image.asset("assets/images/Ellipse 15.png"),
          Image.asset("assets/images/Ellipse 16.png"),
        ],
      ),
    );
  }
}
