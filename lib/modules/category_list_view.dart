import 'package:flutter/material.dart';
// import 'package:navrouterdemo/core/router.dart';
// import 'package:navrouterdemo/core/extensions/context.dart';
import 'package:go_router/go_router.dart';
import 'package:navrouterdemo/core/app_router.dart';
import 'package:navrouterdemo/core/models/category.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = Category.categories;
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Categories'),
        leading: IconButton(
          onPressed: () {
            // context.go(RouteName.about);
            context.goNamed(AppRouteName.about);
          },
          icon: const Icon(Icons.info_outline),
        ),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return ListTile(
            onTap: () {
              // context.go(RouteName.productList);
              context.goNamed(AppRouteName.productList);
            },
            title: Text(category.name),
          );
        },
      ),
    );
  }
}
