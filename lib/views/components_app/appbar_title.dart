import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                  margin: EdgeInsets.only(top: 57.h,),
                  padding: EdgeInsets.symmetric(horizontal: 18.w),
                  child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: (){
                          },
                          icon: Image.asset("assets/images/Path back.png"),
                          ),
                        Text(
                    "Chi tiết ưu đãi",
                     style:  TextStyle(
                       fontSize: 18.sp,
                       fontWeight: FontWeight.w700,     
                     ),
                     ),
                        IconButton(
                          onPressed: (){},
                          icon: Image.asset("assets/images/Vector heart.png"),
                          ),
                      ],
                    ),
            );
  }
}