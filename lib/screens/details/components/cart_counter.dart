import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 0;
  @override
  Widget build(BuildContext context) {

    Widget buildOutlinedButton (IconData iconData, VoidCallback press) {
      return
        SizedBox(
          width: 40,
          height: 32,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(13),
                ),
              ),
            ),
            onPressed: press,
            child: Icon(iconData),
          ),
        );
    }

    return Row(
      children: [
        buildOutlinedButton(
          Icons.remove,
              () {
            setState(() {
              if (numOfItems > 0) {
                numOfItems--;
              }
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding / 2,
          ),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        buildOutlinedButton(
          Icons.add,
              () {
            setState(() {
              numOfItems++;
            });
          },
        ),
      ],
    );
  }
}
