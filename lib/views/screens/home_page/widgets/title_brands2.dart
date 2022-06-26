import 'package:flutter/material.dart';

import '../../../../constants.dart';

class TitleBrands2 extends StatelessWidget {
  const TitleBrands2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 18.0,
        right: 18.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            "Săn ưu đãi",
            style: TextStyle(
              color: kTextTitleBigColors,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Xem tất cả",
              style: TextStyle(
                color: kTextPrimaryColors,
                fontSize: 12.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
