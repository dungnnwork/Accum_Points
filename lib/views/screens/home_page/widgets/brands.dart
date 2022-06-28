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
        //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
            brands.length,
            (index) => Container(
                  // padding:const EdgeInsets.fromLTRB(18.0, 0.0, 14.0, 0.0,),
                  padding: const EdgeInsets.only(
                    left: 18.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 10.0,
                        color: const Color(0xffffffff).withOpacity(0.16),
                      ),
                    ],
                    // border: Border.all(
                    //   style: BorderStyle.solid,
                    // ),
                  ),

                  child: Column(
                    children: [
                      Image.asset(
                        brands[index]['image'],
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        brands[index]['title'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )),
      ),
    );
  }
}
