import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Shopping List"),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                // Add your cart action here
              },
            ),
          ],
        ),
        body: ShoppingList(),
      ),
    );
  }
}

class ShoppingList extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {"name": "Apples", "icon": Icons.shopping_basket},
    {"name": "Bananas", "icon": Icons.shopping_basket},
    {"name": "Milk", "icon": Icons.mic_none},
    {"name": "Bread", "icon": Icons.local_dining},
    {"name": "Eggs", "icon": Icons.kitchen},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(items[index]["icon"]), // Icon for the item
          title: Text(items[index]["name"]), // Name of the item
          onTap: () {
            // Add your item click action here
          },
        );
      },
    );
  }
}
