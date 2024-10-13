import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {'name': 'Apple', 'price': 2, 'isFruit': true},
    {'name': 'Carrot', 'price': 1, 'isFruit': false},
    {'name': 'Banana', 'price': 3, 'isFruit': true},
    {'name': 'Tomato', 'price': 2, 'isFruit': true},
  ];

  @override
  Widget build(BuildContext context) {
// Filter the fruits and transform them into ListTile widgets
    final filteredItems = items
        .where((item) => item['isFruit'] == true)
        .map((item) => ListTile(



    title: Text(item['name']),
      subtitle: Text('Price: \$${item['price']}'),
    ))
        .toList();

    return MaterialApp(
    home: Scaffold(
    appBar: AppBar(title: const Text('Filtered Items')),
    body: ListView(
    children: filteredItems,
    ),
    ),
    );
  }
}