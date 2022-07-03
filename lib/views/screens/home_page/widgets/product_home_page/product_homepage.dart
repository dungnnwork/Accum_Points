import 'package:accum_points_app/views/components_app/background_product.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/product_home_page/components/endows_partner.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/product_home_page/components/sticky_title.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class ProductHomepage extends StatelessWidget {
  const ProductHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverStack(
      insetOnOverlap: true,
      children: [
        SliverPositioned.fill(
          child: BackGroundProduct(
            child: Container(),
          ),
        ),
        MultiSliver(
          children: const [
            StikyTitle(),
            SliverClip(
              child: EndowsPartner(),
            ),
          ],
        ),
      ],
    );
  }
}
