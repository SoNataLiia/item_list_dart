import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget {
  final String itemName;

  const ItemScreen({super.key, required this.itemName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Icon(
              Icons.eco,
              size: 100,
              color: Colors.green,
            ),

            const SizedBox(height: 24),

            Text(
              itemName,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 16),

            Text(
              'This is the detail page for $itemName',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 32),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),

          ],
        ),
      ),
    );
  }
}