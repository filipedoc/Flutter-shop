import 'package:flutter/material.dart';
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
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ProductGrid(showFavoritesOnly),
      ),
    );
  }
}
