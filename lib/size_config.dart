// import 'package:flutter/material.dart';

// class SizeConfig {
//   static late MediaQueryData _mediaQueryData;
//   static late double _screenWidth;
//   static late double _screenHeight;

//   void init(BuildContext context) {
//     _mediaQueryData = MediaQuery.of(context);
//     // set screen width
//     _screenWidth = _mediaQueryData.size.width;
//     // set screen height
//     _screenHeight = _mediaQueryData.size.height;
//   }

//   double get screenHeight => _screenHeight;
//   double get screenWidth => _screenWidth;
// }

// double getProportionateScreenHeight(double inputHeight) {
//   double screenHeight = SizeConfig().screenHeight;
//   double proportionateScreenHeight = screenHeight / inputHeight;
//   return proportionateScreenHeight;
// }

// double getProportionateScreenWidth(double inputWidth) {
//   double screenHeight = SizeConfig().screenWidth;
//   double proportionateScreenWidth = screenHeight / inputWidth;
//   return proportionateScreenWidth;
// }
