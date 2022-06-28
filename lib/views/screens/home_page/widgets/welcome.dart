import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class Welcome extends StatelessWidget {
  const Welcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(20.83),
        right: getProportionateScreenWidth(16.81),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: getProportionateScreenWidth(7.5),
            height: getProportionateScreenHeight(16.24),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                    color: const Color(0xffA4A4A4).withOpacity(0.25)),
              ],
              border: Border.all(
                  width: getProportionateScreenWidth(375),
                  color: kBackgroundColors,
                  style: BorderStyle.solid),
              image: const DecorationImage(
                image: AssetImage('assets/images/avatar.jpg'),
              ),
            ),
          ),
          SizedBox(width: getProportionateScreenWidth(20.83)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Xin chào Kim Ngân!',
                style: TextStyle(
                  color: kTextTitleBigColors,
                  fontSize: getProportionateScreenWidth(23.44),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(135.33)),
              Row(
                children: [
                  Text(
                    'Tiêu chuẩn',
                    style: TextStyle(
                      color: kTextTitleBigColors,
                      fontSize: getProportionateScreenWidth(26.78),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(31.25)),
                  Container(
                    padding: EdgeInsets.only(
                        top: getProportionateScreenHeight(270.67),
                        left: getProportionateScreenWidth(41.67),
                        right: getProportionateScreenHeight(125),
                        bottom: getProportionateScreenHeight(270.67)),
                    decoration: BoxDecoration(
                      color: kBackgroundColors,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(31.25)),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 4),
                            blurRadius: 4,
                            color: kTextTitleBigColors.withOpacity(0.1))
                      ],
                    ),
                    child: Row(
                      children: [
                        Text(
                          '1000',
                          style: TextStyle(
                            color: const Color(0xffC19700),
                            fontSize: getProportionateScreenWidth(23.44),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: getProportionateScreenWidth(75.0)),
                        Image.asset('assets/icons/user_point.png'),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          Image.asset('assets/icons/notification.png'),
        ],
      ),
    );
  }
}
