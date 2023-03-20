import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key, required this.product, required this.onPress}) : super(key: key);

  final Product product;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(kDefaultPadding),
                decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Hero(
                  tag: product.image ?? "",
                  child: Image.asset(product.image ?? ""),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
              child: Text(
                product.title ?? "Not found",
                style: const TextStyle(
                    color: kTextLightColor
                ),
              ),
            ),
            Text('\$${product.price.toString()}',
                style: const TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
    );
  }
}
