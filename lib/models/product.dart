import 'dart:convert';

import 'package:flutter/services.dart';

class Product {
  String id;
  String name;
  String description;
  int price;
  Product({
    this.id,
    this.name,
    this.description,
    this.price,
  });

  Product copyWith({
    String id,
    String name,
    String description,
    int price,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
    };
  }

  static Product fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Product(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      price: map['price'],
    );
  }

  String toJson() => json.encode(toMap());

  static Product fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(id: $id, name: $name, description: $description, price: $price)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Product &&
        o.id == id &&
        o.name == name &&
        o.description == description &&
        o.price == price;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ description.hashCode ^ price.hashCode;
  }
}

Future<List<Product>> loadProducts() async {
  List<Product> products = [];
  try {
    String jsonString =
        await rootBundle.loadString("assets/data/products.json");
    final jsonResponse = jsonDecode(jsonString) as List;

    jsonResponse.forEach((element) {
      products.add(Product.fromMap(element));
    });
  } catch (e) {
    print(e);
  }

  return products;
}
