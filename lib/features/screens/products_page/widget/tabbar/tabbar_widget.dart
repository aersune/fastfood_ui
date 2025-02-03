import 'package:flutter/material.dart';
import 'package:products_ui/styles/responsive.dart';


class TabBarWidget extends StatefulWidget {
   const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> with SingleTickerProviderStateMixin {
  final Map<String, List<String>> products = {
    'Seafood': ['Grilled Salmon', 'Garlic Shrimp', 'Lobster Bisque'],
    'Appetizers': ['Spring Rolls', 'Bruschetta', 'Stuffed Mushrooms'],
    'Beef & Lamb': ['Steak', 'Lamb Chops', 'Beef Burger'],
    'Dimsum': ['Shumai', 'Dumplings', 'Pork Buns'],
  };
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [


        ],
      );
  }
}

class ProductList extends StatelessWidget {
  final List<String> products;

  const ProductList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(products[index]),
          onTap: () {
            // Handle product tap
            print('Selected: ${products[index]}');
          },
        );
      },
    );
  }}