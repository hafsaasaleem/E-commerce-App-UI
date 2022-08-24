import 'package:ecommerce/constant.dart';
import 'package:ecommerce/model/products.dart';
import 'package:ecommerce/screens/home/components/item_card.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/screens/details/detail_screen.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kdefaultpadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        TabBar(
          controller: _tabController,
          labelColor: kTextColor,
          unselectedLabelColor: Colors.grey,
          indicatorColor: kTextColor,
          labelStyle: const TextStyle(fontWeight: FontWeight.bold),
          indicatorPadding: const EdgeInsets.all(16),
          labelPadding: const EdgeInsets.only(left: 12, bottom: 12),
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: const [
            Tab(text: "Hand bag"),
            Tab(text: "Jewellery"),
            Tab(text: "Footware"),
            Tab(text: "Dresses"),
          ],
        ),
        const SizedBox(height: kdefaultpadding),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              ProductScreen(),
              ProductScreen(),
              ProductScreen(),
              ProductScreen(),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
}

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kdefaultpadding),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: kdefaultpadding,
          mainAxisSpacing: kdefaultpadding,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) => ItemCard(
          product: products[index],
          press: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                product: products[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
