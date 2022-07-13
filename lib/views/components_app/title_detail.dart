
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleDetail extends StatelessWidget {
  final String title;
  final Widget widget;
  const TitleDetail({Key? key, required this.title, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.only(top: 71.h,left: 17.w,right: 18.w),
       child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
            Container(
              padding: EdgeInsets.zero,
              width: 24.w,
              height: 24.h,
              child: widget,
            ),
          //  IconButton(
          //   onPressed: (){
          //     Navigator.pop(context);
          //   },
          //   icon: Image.asset("assets/images/Path back.png"),
          //   ),
            Text(
              title,
                style:  TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
            
            ),
            ),
            Container(
              padding: EdgeInsets.zero
              ,
              width: 24.w,
              height: 24.h,
              child: widget,
            ),

            // IconButton(
            //   onPressed: (){},
            //   icon: Image.asset("assets/images/Vector heart.png"),
            //   ),
           ],
       ),
    );
  }
}