import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/product_list.dart';
import '../components/product_grid.dart';

class ProductOverviewScreen extends StatelessWidget {
  ProductOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Minha Loja"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("Todos"),
                value: 0,
              ),
              PopupMenuItem(
                child: Text("Somente favoritos"),
                value: 1,
              ),
            ],
            onSelected: (int selectedValue) {
              if (selectedValue == 0) {
                provider.showAll();
              } else {
                provider.showFavoritesOnly();
              }
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ProductGrid(),
      ),
    );
  }
}
