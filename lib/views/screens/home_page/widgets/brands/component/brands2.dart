import 'package:accum_points_app/size_config.dart';
import 'package:flutter/material.dart';
import '../../../../../../constants.dart';

class Brands2 extends StatelessWidget {
  const Brands2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> brands2 = [
      {
        "image": "assets/images/hello summer.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "The coffee house",
        'numberPoint': 50,
        "point": "assets/icons/point.png",
      },
      {
        "image": "assets/images/super sale.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "Gemini",
        'numberPoint': 200,
        "point": "assets/icons/point.png",
      },
      {
        "image": "assets/images/hello summer.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "The coffee house",
        'numberPoint': 50,
        "point": "assets/icons/point.png",
      },
      {
        "image": "assets/images/super sale.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "Gemini",
        'numberPoint': 200,
        "point": "assets/icons/point.png",
      },
      {
        "image": "assets/images/hello summer.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "The coffee house",
        'numberPoint': 50,
        "point": "assets/icons/point.png",
      },
      {
        "image": "assets/images/super sale.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "Gemini",
        'numberPoint': 200,
        "point": "assets/icons/point.png",
      },
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(
        brands2.length,
        (index) => Container(
          margin: EdgeInsets.only(bottom: getProportionateScreenHeight(50.75)),
          decoration: BoxDecoration(
            color: kBackgroundColors,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 4.0,
                color: kTextTitleBigColors.withOpacity(0.16),
              ),
            ],
            borderRadius:
                BorderRadius.circular(getProportionateScreenWidth(75)),
            border: Border.all(
              color: const Color(0xFFf4f4f4),
              width: getProportionateScreenWidth(375),
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: getProportionateScreenWidth(3.0),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: getProportionateScreenHeight(203.0),
                    bottom: getProportionateScreenHeight(203.0),
                    left: getProportionateScreenWidth(93.75),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        getProportionateScreenWidth(75.0)),
                    child: Image.asset(
                      brands2[index]['image'],
                      fit: BoxFit.cover,
                      height: getProportionateScreenHeight(8.63),
                    ),
                  ),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20.83)),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    top: getProportionateScreenHeight(73.81),
                    right: getProportionateScreenWidth(37.5),
                    bottom: getProportionateScreenHeight(116),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            brands2[index]['title'],
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: kTextTitleBigColors,
                              fontSize: getProportionateScreenWidth(26.78),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                              height: getProportionateScreenHeight(135.33)),
                          Container(
                            padding: EdgeInsets.only(
                              left: getProportionateScreenWidth(23.44),
                              right: getProportionateScreenWidth(23.44),
                              top: getProportionateScreenHeight(162.4),
                              bottom: getProportionateScreenHeight(203),
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xfffff6d6),
                              borderRadius: BorderRadius.circular(
                                getProportionateScreenWidth(75),
                              ),
                            ),
                            child: Text(
                              brands2[index]['nameBrand'],
                              style: const TextStyle(
                                color: kTextPrimaryColors,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(101.5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '${brands2[index]['numberPoint']}',
                            style: TextStyle(
                              color: kbuttonBackgroundColors,
                              fontSize: getProportionateScreenWidth(26.78),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: getProportionateScreenWidth(187.5)),
                          Image.asset(
                            brands2[index]['point'],
                            width: getProportionateScreenWidth(32.25),
                            height: getProportionateScreenHeight(67.67),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
