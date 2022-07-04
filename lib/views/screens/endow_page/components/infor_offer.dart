import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InforOffer extends StatelessWidget {
  const InforOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 18.h),
          decoration: const BoxDecoration(
            color:  Color(0XFFFFD233),
            image: DecorationImage(
              image: AssetImage("assets/images/Vector heart.png"),
              ),
          ),
        ),
      ],
    );
  }
}