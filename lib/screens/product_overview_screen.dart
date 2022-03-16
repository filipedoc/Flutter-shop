import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/cart.dart';
import '../components/badge.dart';
import '../components/product_grid.dart';

class ProductOverviewScreen extends StatefulWidget {
  ProductOverviewScreen({Key? key}) : super(key: key);

  @override
  State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  bool showFavoritesOnly = false;

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);

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
              setState(() {
                if (selectedValue == 0) {
                  showFavoritesOnly = false;
                } else {
                  showFavoritesOnly = true;
                }
              });
            },
          ),
          Consumer<Cart>(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
            ),
            builder: (context, value, child) => Badge(
              child: child!,
              value: cart.itemsCount.toString(),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ProductGrid(showFavoritesOnly),
      ),
    );
  }
}
