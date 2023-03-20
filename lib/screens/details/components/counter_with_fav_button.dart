import 'package:flutter/material.dart';

import 'cart_counter.dart';

class CounterWithFavButton extends StatelessWidget {
  const CounterWithFavButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CartCounter(),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 32,
              width: 32,
              decoration: const  BoxDecoration(
                color: Colors.redAccent,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
          )
        ]
    );
  }
}
