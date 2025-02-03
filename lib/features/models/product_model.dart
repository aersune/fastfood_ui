import 'package:flutter/material.dart';



class Product {
  final String id;
  final String image;
  final String title;
  final String price;
  final String category;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.category,
  });


  static final List<Product> product2 = [
    Product(
      id: '0',
      image: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd',
      title: 'Burger',
      price: '\$12',
      category: 'fastfuuds',
    ),
    Product(
      id: '1',
      image: 'https://plus.unsplash.com/premium_photo-1668146927669-f2edf6e86f6f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8c3VzaGl8ZW58MHx8MHx8fDA%3D',
      title: 'Sushi',
      price: '\$22',
      category: 'seafoods',
    ),
    Product(
      id: '2',
      image: 'https://images.unsplash.com/photo-1625943555419-56a2cb596640?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      title: 'Shrimp Scampi',
      price: '\$28',
      category: 'seafoods',
    ),
  ];

  static final List<Product> product3 = [
    Product(
      id: '0',
      image: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd',
      title: 'Burger',
      price: '\$12',
      category: 'fastfuuds',
    ),
    Product(
      id: '1',
      image: 'https://images.unsplash.com/photo-1513104890138-7c749659a591?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      title: 'Pizza',
      price: '\$18',
      category: 'fastfuuds',
    ),
    Product(
      id: '2',
      image: 'https://images.unsplash.com/photo-1550547660-d9450f859349',
      title: 'Fried Chicken',
      price: '\$15',
      category: 'fastfuuds',
    ),
    Product(
      id: '3',
      image: 'https://plus.unsplash.com/premium_photo-1668146927669-f2edf6e86f6f?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      title: 'Sushi',
      price: '\$22',
      category: 'seafoods',
    ),
  ];

  static final List<Product> products = [
    Product(
      id: '0',
      image: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd',
      title: 'Burger',
      price: '\$12',
      category: 'fastfuuds',
    ),
    Product(
      id: '1',
      image: 'https://images.unsplash.com/photo-1586190848861-99aa4a171e90',
      title: 'Pizza',
      price: '\$18',
      category: 'fastfuuds',
    ),
    Product(
      id: '2',
      image: 'https://images.unsplash.com/photo-1550547660-d9450f859349',
      title: 'Fried Chicken',
      price: '\$15',
      category: 'fastfuuds',
    ),
    Product(
      id: '3',
      image: 'https://images.unsplash.com/photo-1562967914-608f82629710',
      title: 'French Fries',
      price: '\$8',
      category: 'fastfuuds',
    ),
    Product(
      id: '4',
      image: 'https://plus.unsplash.com/premium_photo-1668146927669-f2edf6e86f6f?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      title: 'Sushi',
      price: '\$22',
      category: 'seafoods',
    ),
    Product(
      id: '5',
      image: 'https://images.unsplash.com/photo-1625943555419-56a2cb596640?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      title: 'Shrimp Scampi',
      price: '\$28',
      category: 'seafoods',
    ),
    Product(
      id: '6',
      image: 'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2',
      title: 'Fish Tacos',
      price: '\$16',
      category: 'seafoods',
    ),
    Product(
      id: '7',
      image: 'https://images.unsplash.com/photo-1567620832903-9fc6debc209f',
      title: 'Grilled Salmon',
      price: '\$30',
      category: 'seafoods',
    ),
    Product(
      id: '8',
      image: 'https://images.unsplash.com/photo-1606755456206-b25206cde27e',
      title: 'Hot Dog',
      price: '\$10',
      category: 'fastfuuds',
    ),
    Product(
      id: '9',
      image: 'https://images.unsplash.com/photo-1596662951482-0c4ba74a6df6',
      title: 'Taco',
      price: '\$14',
      category: 'fastfuuds',
    ),
    Product(
      id: '10',
      image: 'https://images.unsplash.com/photo-1613514785940-daed07799d9b',
      title: 'Lobster Roll',
      price: '\$45',
      category: 'seafoods',
    ),
    Product(
      id: '11',
      image: 'https://images.unsplash.com/photo-1611599537845-1c7aca0091c0',
      title: 'Calamari',
      price: '\$20',
      category: 'seafoods',
    ),
    Product(
      id: '12',
      image: 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398',
      title: 'Cheeseburger',
      price: '\$13',
      category: 'fastfuuds',
    ),
    Product(
      id: '13',
      image: 'https://images.unsplash.com/photo-1606755456206-b25206cde27e',
      title: 'Fried Shrimp',
      price: '\$25',
      category: 'seafoods',
    ),
    Product(
      id: '14',
      image: 'https://images.unsplash.com/photo-1606755456206-b25206cde27e',
      title: 'Chicken Nuggets',
      price: '\$11',
      category: 'fastfuuds',
    ),
    Product(
      id: '15',
      image: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd',
      title: 'Sashimi',
      price: '\$35',
      category: 'seafoods',
    ),
    Product(
      id: '16',
      image: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd',
      title: 'Double Burger',
      price: '\$16',
      category: 'fastfuuds',
    ),
    Product(
      id: '17',
      image: 'https://images.unsplash.com/photo-1586190848861-99aa4a171e90',
      title: 'Pepperoni Pizza',
      price: '\$20',
      category: 'fastfuuds',
    ),
    Product(
      id: '18',
      image: 'https://images.unsplash.com/photo-1550547660-d9450f859349',
      title: 'Fried Fish',
      price: '\$18',
      category: 'seafoods',
    ),
    Product(
      id: '19',
      image: 'https://images.unsplash.com/photo-1562967914-608f82629710',
      title: 'Onion Rings',
      price: '\$9',
      category: 'fastfuuds',
    ),
  ];

}

