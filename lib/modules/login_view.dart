import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navrouterdemo/core/app_router.dart';
// import 'package:navrouterdemo/core/router.dart';
// import 'package:navrouterdemo/core/extensions/context.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                // Using Extension Function for Navigator 1.0
                // context.goNamed(RouteName.categoryList);
                // Using goRouter extension function for Navigator 2.0
                context.goNamed(AppRouteName.categoryList);
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
