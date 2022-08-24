import 'package:ecommerce/assets/assets.dart';
import 'package:ecommerce/model/products.dart';
import 'package:ecommerce/screens/details/component/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CounterWithFavBaton extends StatelessWidget {
  final Product product;
  const CounterWithFavBaton({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Counter(),
        Container(
          padding: const EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(Assets.heart),
        ),
      ],
    );
  }
}
