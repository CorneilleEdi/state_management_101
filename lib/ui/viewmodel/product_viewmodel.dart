import 'package:flutter/widgets.dart';

import '../../models/product.dart';

class ProductViewModel extends ChangeNotifier {
  List<Product> _products = [];
  List<Product> get products => _products;
  List<Product> cart = [];

  ProductViewModel() {
    populate();
  }

  void populate() async {
    var res = await loadProducts();
    _products = res;
    notifyListeners();
  }

  bool isInCart(Product product) {
    return cart.contains(product);
  }

  Future addToCart(Product product) async {
    // await Future.delayed(Duration(seconds: 2));
    cart.add(product);
    notifyListeners();
  }

  removeFromCart(Product product) {
    cart.remove(product);
    notifyListeners();
  }

  removeAllFromCart() {
    cart = [];
    notifyListeners();
  }
}
