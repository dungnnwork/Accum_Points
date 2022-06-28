import 'package:flutter/material.dart';

import '../../../../constants.dart';

class Brands2 extends StatelessWidget {
  const Brands2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> brands2 = [
      {
        "image": "assets/images/hello summer.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "The coffee house",
        "point": "assets/images/50 point.png",
      },
      {
        "image": "assets/images/super sale.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "Gemini",
        "point": "assets/images/200 points.png",
      },
      {
        "image": "assets/images/hello summer.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "The coffee house",
        "point": "assets/images/50 point.png",
      },
      {
        "image": "assets/images/super sale.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "Gemini",
        "point": "assets/images/200 points.png",
      },
      {
        "image": "assets/images/hello summer.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "The coffee house",
        "point": "assets/images/50 point.png",
      },
      {
        "image": "assets/images/super sale.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "Gemini",
        "point": "assets/images/200 points.png",
      },
      {
        "image": "assets/images/hello summer.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "The coffee house",
        "point": "assets/images/50 point.png",
      },
      {
        "image": "assets/images/super sale.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "Gemini",
        "point": "assets/images/200 points.png",
      },
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
            brands2.length,
            (index) => Container(
                  padding: const EdgeInsets.only(
                    left: 18.0,
                    right: 18.0,
                    top: 16.0,
                  ),
                  // padding:const EdgeInsets.all(7.0,),
                  child: Row(
                    children: [
                      Container(
                          child: Image.asset(
                        brands2[index]['image'],
                        fit: BoxFit.cover,
                      )),
                      const SizedBox(
                        width: 18.0,
                      ),
                      Container(
                        // padding:const EdgeInsets.all(7.0,),
                        // height: 83.0,
                        child: Column(
                          textDirection: TextDirection.ltr,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              brands2[index]['title'],
                              style: const TextStyle(
                                color: kTextTitleBigColors,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xfffff6d6),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Text(
                                brands2[index]['nameBrand'],
                                style: const TextStyle(
                                  color: kTextPrimaryColors,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Container(
                              child: Image.asset(brands2[index]['point']),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
      ),
    );
  }
}
