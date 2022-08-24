import 'package:ecommerce/constant.dart';
import 'package:ecommerce/model/products.dart';
import 'package:ecommerce/screens/details/component/add_to_cart.dart';
import 'package:ecommerce/screens/details/component/counter_with_fav_boton.dart';
import 'package:ecommerce/screens/details/component/description.dart';
import 'package:ecommerce/screens/details/component/product_title_with_image.dart';
import 'package:flutter/material.dart';
import 'color_and_size.dart';

class DetailScreenBody extends StatelessWidget {
  final Product product;

  const DetailScreenBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kdefaultpadding,
                    right: kdefaultpadding,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      const SizedBox(height: kdefaultpadding / 2),
                      Description(product: product),
                      const SizedBox(height: kdefaultpadding / 2),
                      CounterWithFavBaton(product: product),
                      const SizedBox(height: kdefaultpadding / 2),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
