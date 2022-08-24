import 'package:ecommerce/assets/assets.dart';
import 'package:ecommerce/constant.dart';
import 'package:ecommerce/model/products.dart';
import 'package:ecommerce/screens/details/component/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: DetailScreenBody(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(Assets.backicon, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Assets.search),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Assets.cart),
        ),
        const SizedBox(
          width: kdefaultpadding / 2,
        ),
      ],
    );
  }
}
