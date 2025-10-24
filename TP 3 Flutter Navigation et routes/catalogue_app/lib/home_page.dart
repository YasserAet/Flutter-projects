import 'package:flutter/material.dart';
import 'models/product.dart';
import 'details_page.dart';

class HomePage extends StatelessWidget {
  final List<Product> products = [
    Product('Ordinateur', 3500, 'Ordinateur portable 16Go RAM'),
    Product('Smartphone', 12000, 'Smartphone dernière génération'),
    Product('Casque audio', 250, 'Casque sans fil Bluetooth'),
    Product('Montre connectée', 450, 'Montre connectée avec suivi santé'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Catalogue de produits')),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              title: Text(product.name),
              subtitle: Text('${product.price.toStringAsFixed(0)} MAD'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(product: product),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
