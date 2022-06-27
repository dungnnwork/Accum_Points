import 'package:accum_points_app/constants.dart';
import 'package:accum_points_app/size_config.dart';
import 'package:flutter/material.dart';

class Brands extends StatelessWidget {
  const Brands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> brands = [
      {
        "title": "The coffee house",
        "image": "assets/images/the coffee house.png",
      },
      {
        "title": "Gemini coffee",
        "image": "assets/images/Logo-Gemini-Coffee.png",
      },
      {
        "title": "The coffee house",
        "image": "assets/images/the coffee house.png",
      },
      {
        "title": "Gemini coffee",
        "image": "assets/images/Logo-Gemini-Coffee.png",
      },
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          brands.length,
          (index) => Container(
            height: getProportionateScreenHeight(6.2),
            width: getProportionateScreenWidth(3.0),
            margin: index != brands.length - 1
                ? EdgeInsets.only(right: getProportionateScreenWidth(26.78))
                : const EdgeInsets.only(right: 0.0),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: getProportionateScreenHeight(15.04),
                    width: getProportionateScreenWidth(3.0),
                    margin: EdgeInsets.only(
                        bottom: getProportionateScreenHeight(101.5)),
                    padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(40.6),
                    ),
                    decoration: BoxDecoration(
                        color: kBackgroundColors,
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenHeight(75.0)),
                        boxShadow: [
                          BoxShadow(
                            color: kTextTitleBigColors.withOpacity(0.16),
                            blurRadius: 4.0,
                            offset: const Offset(0, 4),
                          )
                        ]),
                    child: Text(
                      brands[index]['title'],
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(27.0),
                        fontWeight: FontWeight.w600,
                        color: kTextTitleBigColors,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(getProportionateScreenWidth(75)),
                  child: Image.asset(
                    brands[index]['image'],
                    fit: BoxFit.cover,
                    height: getProportionateScreenHeight(10.02),
                    width: getProportionateScreenWidth(3.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
