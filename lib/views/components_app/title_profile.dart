import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleProfile extends StatelessWidget {
  final String title;
  const TitleProfile({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 57.h),
      child: Row(
        children: [
          IconButton(
            onPressed: (){},
            icon: Image.asset("assets/images/Path back.png"),
            ),
          SizedBox(width: 100.w,),  
          Text(
            title,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
            ),  
        ],
      ),
    );
  }
}