import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halal Goodies'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              color: Colors.grey[300],
              child: const Center(child: Text("Map Placeholder")),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Nearby Halal Spots',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: const Icon(Icons.restaurant),
                    title: Text("Restaurant ${index + 1}"),
                    subtitle: const Text("123 Sample St"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
