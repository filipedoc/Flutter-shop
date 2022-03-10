import 'package:flutter/material.dart';

import '../models/product.dart';
import '../utils/app_route.dart';
import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.PRODUCT_DETAIL,
              arguments: product,
            );
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Icon(Icons.favorite, color: Theme.of(context).accentColor),
          title: Text(product.title, textAlign: TextAlign.center),
          trailing:
              Icon(Icons.shopping_cart, color: Theme.of(context).accentColor),
        ),
      ),
    );
  }
}
