import 'package:flutter/material.dart';
import 'package:products_ui/features/models/product_model.dart';
import 'package:products_ui/features/screens/products_page/component/take_button.dart';
import 'package:products_ui/features/screens/products_page/widget/tabbar/tabbar_widget.dart';

import '../../../../common/styles/colors.dart';
import '../../../../common/styles/text_style.dart';
import '../component/product_sub_info.dart';
import 'featured_items.dart';

class ProductsBody extends StatelessWidget {
  final List<Product> products;
  final String title;

  const ProductsBody({super.key, required this.title, required this.products});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: AppStyle.h1.copyWith(fontSize: 28)),
            Text("\$\$  • Chinese • America • Deshi• food", style: AppStyle.normal),
            const SizedBox(height: 16),
            Row(
              children: [
                Text('4.3', style: AppStyle.light),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.star, color: AppColors.primary),
                ),
                Text('200+ Ratings', style: AppStyle.light),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductSubInfo(
                  image: 'assets/images/dollar.png',
                  title: 'Free',
                  subtitle: 'Delivery',
                ),
                ProductSubInfo(
                  image: 'assets/images/time.png',
                  title: '25',
                  subtitle: 'Minutes',
                ),
                TakeButton()
              ],
            ),
            FeaturedItems(),
            TabBarWidget()
          ],
        ),
      ),
    );
  }
}
