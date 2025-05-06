import 'package:flutter/material.dart';

class Product {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final String description;
  final String category;

  const Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.description,
    required this.category,
  });
}

final List<Product> products = [
  Product(
    id: '1',
    name: 'Rwandan Coffee',
    imageUrl: 'assets/images/coffee.jpg',
    price: 12.99,
    description: 'Premium Rwandan coffee beans, hand-picked and roasted to perfection.',
    category: 'Coffee',
  ),
  Product(
    id: '2',
    name: 'Traditional Agaseke Basket',
    imageUrl: 'assets/images/agaseke.jpg',
    price: 24.50,
    description: 'Hand-woven traditional Rwandan basket, perfect for home decoration.',
    category: 'Crafts',
  ),
  Product(
    id: '3',
    name: 'Modern Agaseke Design',
    imageUrl: 'assets/images/ikiraha.jpg',
    price: 24.50,
    description: 'Contemporary take on the traditional Agaseke basket, featuring modern patterns.',
    category: 'Crafts',
  ),
  // More products can be added here...
];

const Map<String, Color> categoryColors = {
  'Coffee': Color(0xFFFFF3E0),
  'Crafts': Color(0xFFE3F2FD),
  'Art': Color(0xFFF3E5F5),
  'Tours': Color(0xFFE8F5E9),
  'Beauty': Color(0xFFFFEBEE),
  // Add more as needed
};
