import 'package:flutter/material.dart';
import 'package:store_app/screens/details/components/product_title_with_image.dart';

import '../../../constants.dart';
import '../../../models/product.dart';
import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'counter_with_fav_button.dart';
import 'description.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: size.height * 0.3,
                    ),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24),
                        topLeft: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: [
                        ColorAndSize(product: product),
                        const SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        Description(product: product),
                        const SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        const CounterWithFavButton(),
                        const SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        AddToCart(product: product),
                      ],
                    ),
                  ),
                  ProductTitleWithImage(product: product)
                ],
              ))
        ],
      ),
    );
  }
}
