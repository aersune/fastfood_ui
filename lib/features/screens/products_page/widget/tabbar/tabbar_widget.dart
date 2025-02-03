import 'package:flutter/material.dart';
import 'package:products_ui/common/styles/text_style.dart';
import 'package:products_ui/features/screens/products_page/widget/tabbar/widgets/product_card.dart';
import '../../../../../common/styles/responsive.dart';
import '../../../../models/product_model.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  List<List<Product>> productsData = [
    Product.products,
    Product.product2,
    Product.product3,
    Product.products,
  ];
  List<Product> products = Product.products;

  List<Product> seaFoods = [];
  List<Product> fastfoods = [];

  var activeTab = 0;

  @override
  Widget build(BuildContext context) {
    seaFoods = products.where((item) => item.category == 'seafoods').toList();
    fastfoods = products.where((item) => item.category == 'fastfuuds').toList();
    List<String> productNames = ["Seafood", "Appetizers", "Beef & Lamb", "Dimsum"];
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: productNames.map((title) {
              int index = productNames.indexOf(title);
              bool isActive = index == activeTab;
              return InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        products = productsData[index];
                        activeTab = index;
                      });
                    },
                    child: Text(
                      title,
                      style: AppStyle.normal.copyWith(color: isActive ? Colors.black : null),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        20.getH(context),
        fastfoods.isNotEmpty
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Most Populars', style: AppStyle.h1),
                  Column(
                    children: fastfoods.map((el) => ProductCard(product: el)).toList(),
                  )
                ],
              )
            : const SizedBox.shrink(),
        seaFoods.isNotEmpty
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SeaFoods',
                    style: AppStyle.h1,
                  ),
                  Column(
                    children: seaFoods.map((el) => ProductCard(product: el)).toList(),
                  )
                ],
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
