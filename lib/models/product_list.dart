import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import './product.dart';

class ProductList with ChangeNotifier {
  List<Product> _items = dummyProducts;

  List<Product> get items => [..._items];
  List<Product> get itemsFavorite =>
      _items.where((product) => product.isFavorite).toList();

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}

// bool _showFavoritesOnly = false;

//   List<Product> get items {
//     if (_showFavoritesOnly) {
//       return _items.where((product) => product.isFavorite).toList();
//     }
//     return [..._items];
//   }

//   void showFavoritesOnly() {
//     _showFavoritesOnly = true;
//     notifyListeners();
//   }

//   void showAll() {
//     _showFavoritesOnly = false;
//     notifyListeners();
//   }
