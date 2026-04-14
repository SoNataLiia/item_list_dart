import 'package:flutter/material.dart';
import 'item_screen.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  final List<String> items = const [
    'Apple',
    'Banana',
    'Orange',
    'Mango',
    'Grape',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fruit List'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemScreen(itemName: items[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}