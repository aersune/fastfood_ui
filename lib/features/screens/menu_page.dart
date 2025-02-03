import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';



@RoutePage()
class MenuPage extends StatelessWidget {
  final List<MenuItem> menuItems = [
    MenuItem(
      name: 'Cookie Sandwich',
      description: 'Shortbread, chocolate turtle cookies, and red velvet.',
      price: '\$10',
      category: 'Chinese',
      imageUrl: 'path/to/cookie_sandwich_image',
    ),
    MenuItem(
      name: 'Combo Burger',
      description: 'Shortbread, chocolate turtle cookies, and red velvet.',
      price: '\$10',
      category: 'Chinese',
      imageUrl: 'path/to/combo_burger_image',
    ),
    // Add more menu items here
  ];

   MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Page'),
      ),
      body: PageView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return MenuItemWidget(menuItem: menuItems[index]);
        },
      ),
    );
  }
}

class MenuItem {
  final String name;
  final String description;
  final String price;
  final String category;
  final String imageUrl;

  MenuItem({
    required this.name,
    required this.description,
    required this.price,
    required this.category,
    required this.imageUrl,
  });
}

class MenuItemWidget extends StatelessWidget {
  final MenuItem menuItem;

  const MenuItemWidget({required this.menuItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(menuItem.imageUrl), // Ensure you add images to your assets
        SizedBox(height: 10),
        Text(
          menuItem.name,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(menuItem.description),
        Text('Price: ${menuItem.price}'),
        Text('Category: ${menuItem.category}'),
      ],
    );
  }}