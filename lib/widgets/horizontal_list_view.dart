import 'package:flutter/material.dart';
import 'package:nectar/widgets/product_card.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 100,
        itemBuilder: (context, index) {
          return ProductCard();
        },
        separatorBuilder: (_, __) => SizedBox(
          width: 10,
        ),
      ),
    );
  }
}
