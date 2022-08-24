import 'package:ecommerce/assets/assets.dart';
import 'package:ecommerce/constant.dart';
import 'package:ecommerce/model/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddToCart extends StatelessWidget {
  final Product product;

  const AddToCart({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kdefaultpadding),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: kdefaultpadding),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: product.color)),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                Assets.addtocart,
                color: product.color,
              ),
            ),
          ),
          Expanded(
              child: SizedBox(
            height: 50,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: product.color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              child: Text(
                "Buy Now".toUpperCase(),
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
