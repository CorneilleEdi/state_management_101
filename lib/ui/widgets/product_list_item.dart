import 'package:flutter/material.dart';

import '../../models/product.dart';

class ProductListItem extends StatelessWidget {
  final Product product;

  const ProductListItem({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Text(
                  product.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                product.price.toString(),
                style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  product.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              GestureDetector(
                child: (!true)
                    ? Icon(
                        Icons.add_circle,
                        color: Colors.green,
                      )
                    : Icon(
                        Icons.remove_circle,
                        color: Colors.red,
                      ),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
