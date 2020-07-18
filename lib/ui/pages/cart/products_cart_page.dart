import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/product.dart';
import '../../viewmodel/product_viewmodel.dart';
import '../../widgets/product_list_item.dart';

class ProductsCartPage extends StatelessWidget {
  const ProductsCartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Product> cart =
        Provider.of<ProductViewModel>(context, listen: true).cart;
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemCount: cart.length,
        itemBuilder: (BuildContext context, int index) {
          Product product = cart[index];
          return ProductListItem(product: product);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<ProductViewModel>(context, listen: false)
              .removeAllFromCart();
        },
        child: Icon(Icons.delete_sweep),
      ),
    );
  }
}
