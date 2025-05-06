import 'package:flutter/material.dart';
import 'shop_screen.dart';
import 'cart_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ikiraha App'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CartScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('View Shops'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => ShopScreen()),
            );
          },
        ),
      ),
    );
  }
}
