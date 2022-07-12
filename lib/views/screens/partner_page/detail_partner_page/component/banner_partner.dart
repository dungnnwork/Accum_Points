import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerPartner extends StatelessWidget {
  const BannerPartner({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13.52.w),
        child: Image.asset(
          image!,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
