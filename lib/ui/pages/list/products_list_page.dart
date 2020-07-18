import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/product.dart';
import '../../viewmodel/product_viewmodel.dart';
import '../../widgets/product_list_item.dart';
import '../cart/products_cart_page.dart';

class ProductsListPage extends StatelessWidget {
  const ProductsListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Product> productsList =
        Provider.of<ProductViewModel>(context, listen: true).products;
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemCount: productsList.length,
        itemBuilder: (BuildContext context, int index) {
          Product product = productsList[index];
          return ProductListItem(product: product);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => ProductsCartPage(),
              fullscreenDialog: true,
            ),
          );
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
