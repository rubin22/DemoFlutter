import 'package:flutter/material.dart';
import 'package:navrouterdemo/core/extensions/context.dart';
import 'package:navrouterdemo/core/models/product.dart';
import 'package:navrouterdemo/core/router.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    final products = Product.products;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: ListView(
        children: [
          for (final Product product in products)
            ListTile(
              onTap: () {
                context.go(RouteName.productDetail);
                // context.goNamed(AppRouteName.productDetail);
              },
              title: Text(product.name),
            ),
        ],
      ),
    );
  }
}
