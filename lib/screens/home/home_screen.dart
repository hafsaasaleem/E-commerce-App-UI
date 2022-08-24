import 'package:ecommerce/assets/assets.dart';
import 'package:ecommerce/constant.dart';
import 'package:ecommerce/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const HomeScreenBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(Assets.backicon),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            Assets.search,
            color: kTextColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            Assets.cart,
            color: kTextColor,
          ),
        ),
        const SizedBox(
          width: kdefaultpadding / 2,
        ),
      ],
    );
  }
}
