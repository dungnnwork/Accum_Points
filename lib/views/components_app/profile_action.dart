import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ProfileAction extends StatelessWidget {
  final String? imageUrl;
  final String? des;
  final GestureTapCallback? onTap;
  const ProfileAction({Key? key, this.imageUrl, this.des, this.onTap,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Image.asset(imageUrl!),
              SizedBox(width: 15.w,),
              Text(des!, style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600),), 
            ],
          ),
        ),
        SizedBox(height: 17.h,),
      ],
    );
  }
}

