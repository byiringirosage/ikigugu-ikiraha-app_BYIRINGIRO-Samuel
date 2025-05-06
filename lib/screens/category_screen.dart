import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'icon': Icons.lunch_dining, 'label': 'Sandwich'},
    {'icon': Icons.ramen_dining, 'label': 'Salad'},
    {'icon': Icons.local_drink, 'label': 'Drinks'},
    {'icon': Icons.fastfood, 'label': 'Salted snacks'},
    {'icon': Icons.cake, 'label': 'Dessert'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF6F6),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top bar with logo and icons
            Container(
              color: Color(0xFFFFD6D0),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, color: Colors.black87),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26, style: BorderStyle.solid, width: 1, ),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Text('YOUR LOGO', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1)),
                  ),
                  Icon(Icons.shopping_basket_outlined, color: Colors.black87),
                ],
              ),
            ),
            SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Choose a product category',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
            ),
            SizedBox(height: 18),
            // Search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFAFA0),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Icon(Icons.search, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            // Categories grid
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 18,
                  crossAxisSpacing: 18,
                  childAspectRatio: 1.1,
                  children: categories.map((cat) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFFF0ED),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(cat['icon'], size: 56, color: Colors.orangeAccent),
                          SizedBox(height: 12),
                          Text(
                            cat['label'],
                            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 