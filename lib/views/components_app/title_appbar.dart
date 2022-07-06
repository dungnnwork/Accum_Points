
import 'package:accum_points_app/views/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleAppBar extends StatelessWidget {
  final String title;
  final Widget widget;
  const TitleAppBar({Key? key, required this.title, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.only(top: 57.h,),
       child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
           IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
            },
            icon: Image.asset("assets/images/Path back.png"),
            ),
           Text(
            title,
            style:  TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,

            ),
            ),
            Container(
              child: widget,
            ),
           ],
       ),
    );
  }
}