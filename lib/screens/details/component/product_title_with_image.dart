import 'package:ecommerce/constant.dart';
import 'package:ecommerce/model/products.dart';
import 'package:flutter/material.dart';

class ProductTitleWithImage extends StatelessWidget {
  final Product product;

  const ProductTitleWithImage({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kdefaultpadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: kdefaultpadding),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: kdefaultpadding / 2),
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(text: "Price\n"),
                      TextSpan(
                        text: "\$${product.price}",
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: kdefaultpadding),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(product.image, fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
