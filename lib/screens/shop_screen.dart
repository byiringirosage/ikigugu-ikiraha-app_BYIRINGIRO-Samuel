import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';
import 'product_detail_screen.dart';

class ShopScreen extends StatelessWidget {
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
      name: 'IKIRAHA Basket',
      imageUrl: 'assets/images/ikiraha.jpg',
      price: 24.50,
      description: 'Hand-woven traditional Rwandan basket, perfect for home decoration.',
      category: 'Crafts',
    ),
    Product(
      id: '3',
      name: 'Imigongo Art Piece',
      imageUrl: 'assets/images/imigongo.webp',
      price: 35.00,
      description: 'Traditional Rwandan art form using cow dung and natural colors.',
      category: 'Art',
    ),
    Product(
      id: '4',
      name: 'Kigali City Tour',
      imageUrl: 'assets/images/city tour.jpg',
      price: 55.00,
      description: 'Guided tour of Kigali\'s most beautiful and historic locations.',
      category: 'Tours',
    ),
    Product(
      id: '5',
      name: 'Rwandan Handmade Soap',
      imageUrl: 'assets/images/coffee.jpg', // Temporarily using coffee image until we have soap image
      price: 8.99,
      description: 'Natural handmade soap using traditional Rwandan ingredients.',
      category: 'Beauty',
    ),
    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shop')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.65,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductCard(
              product: products[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductDetailScreen(product: products[index]),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
