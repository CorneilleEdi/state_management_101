import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_101/ui/viewmodel/product_viewmodel.dart';

import 'themes/text_theme.dart';
import 'ui/pages/list/products_list_page.dart';

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ProductViewModel(),
      child: MaterialApp(
        title: 'Shooping',
        theme: ThemeData(
          primarySwatch: Colors.amber,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: textTheme,
          appBarTheme: AppBarTheme().copyWith(
            brightness: Brightness.light,
            textTheme: textTheme,
            elevation: 0.0,
          ),
        ),
        home: ProductsListPage(),
      ),
    );
  }
}
