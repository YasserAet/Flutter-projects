import 'package:flutter/material.dart';
import 'models/product.dart';

class DetailsPage extends StatelessWidget {
  final Product product;
  DetailsPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(product.description, style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text('Prix : ${product.price.toStringAsFixed(0)} MAD', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back),
              label: Text('Retour'),
            ),
          ],
        ),
      ),
    );
  }
}
