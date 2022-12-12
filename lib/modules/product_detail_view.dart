import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navrouterdemo/core/app_router.dart';
// import 'package:navrouterdemo/core/router.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.pushNamedAndRemoveUntil(
            //     context, RouteName.login, (route) => false);
            context.goNamed(AppRouteName.login);
          },
          child: const Text('Logout'),
        ),
      ),
    );
  }
}
