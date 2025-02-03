import 'package:flutter/material.dart';
import 'package:products_ui/features/models/product_model.dart';
import 'package:products_ui/features/screens/products_page/component/take_button.dart';
import 'package:products_ui/features/screens/products_page/widget/tabbar_w.dart';

import '../../../../common/styles/colors.dart';
import '../../../../common/styles/responsive.dart';
import '../../../../common/styles/text_style.dart';
import '../component/product_sub_info.dart';
import 'featured_items.dart';

class ProductsBody extends StatelessWidget {
  final ValueSetter valueSetter;
  final List<Product> products;
  final String title;

  const ProductsBody({super.key, required this.title, required this.products, required this.valueSetter});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding(context)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppStyle.h1.copyWith(fontSize: text28(context))),
                Text("\$\$  • Chinese • America • Deshi• food", style: AppStyle.normal),
                16.getH(context),
                Row(
                  children: [
                    Text('4.3', style: AppStyle.light),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: kDefaultPadding(context)),
                      child: Icon(Icons.star, color: AppColors.primary),
                    ),
                    Text('200+ Ratings', style: AppStyle.light),
                  ],
                ),
                20.getH(context),
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
              ],
            ),
          ),
          FeaturedItems(),
          TabBarWidget(valueSetter: (val){
            valueSetter(val);
          },)
        ],
      ),
    );
  }
}
