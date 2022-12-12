import 'package:flutter/material.dart';
import 'package:navrouterdemo/modules/about_view.dart';
import 'package:navrouterdemo/modules/category_list_view.dart';
import 'package:navrouterdemo/modules/login_view.dart';
import 'package:navrouterdemo/modules/product_detail_view.dart';
import 'package:navrouterdemo/modules/product_list_view.dart';

class RouteName {
  static const String login = 'login';
  static const String categoryList = 'categoryList';
  static const String productList = 'productList';
  static const String productDetail = 'productDetail';
  static const String about = 'about';
  static const String settings = 'settings';
}

MaterialPageRoute<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouteName.login:
      return handlePageSwitch(settings, const LoginView(), 'Login View');
    case RouteName.categoryList:
      return handlePageSwitch(
          settings, const CategoryListView(), 'CategoryList View');
    case RouteName.productList:
      return handlePageSwitch(
          settings, const ProductListView(), 'ProductList View');
    case RouteName.productDetail:
      return handlePageSwitch(
          settings, const ProductDetailView(), 'ProductDetail View');
    case RouteName.about:
      return handlePageSwitch(settings, const AboutView(), 'About View');
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          backgroundColor: Colors.red,
          body: Center(child: Text('No Routes Found')),
        ),
      );
  }
}

MaterialPageRoute handlePageSwitch(
  RouteSettings settings,
  Widget page,
  String screenName,
) {
  return MaterialPageRoute(
    builder: (_) => page,
    settings: RouteSettings(
      arguments: settings.arguments,
      name: screenName,
    ),
  );
}
