import 'package:ecommerce/constant.dart';
import 'package:ecommerce/model/products.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final Product product;

  const Description({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kdefaultpadding),
      child: Text(
        product.description,
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}
