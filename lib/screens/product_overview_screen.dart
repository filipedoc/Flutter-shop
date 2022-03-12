import 'package:flutter/material.dart';
import '../components/product_grid.dart';

class ProductOverviewScreen extends StatelessWidget {
  ProductOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minha Loja"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ProductGrid(),
      ),
    );
  }
}
