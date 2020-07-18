import 'package:flutter/material.dart';

import 'themes/text_theme.dart';

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shooping',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: textTheme,
        appBarTheme: AppBarTheme().copyWith(
          brightness: Brightness.light,
          textTheme: textTheme,
          elevation: 0.0,
        ),
      ),
      home: Scaffold(),
    );
  }
}
