import 'package:flutter/material.dart';
import 'package:flutter_uxcam/flutter_uxcam_observer.dart';
import 'package:go_router/go_router.dart';
import 'package:navrouterdemo/modules/about_view.dart';
import 'package:navrouterdemo/modules/category_list_view.dart';
import 'package:navrouterdemo/modules/login_view.dart';
import 'package:navrouterdemo/modules/product_detail_view.dart';
import 'package:navrouterdemo/modules/product_list_view.dart';
import 'package:navrouterdemo/modules/settings_view.dart';

/// Here we are using gorouter (An option for navigator 2.0) as there is implementation differences
/// with the approach
///
/// The Goal is to use same observer (in this case we are using observer in package - GoRouter) and
/// try to get the same result from both Navigator 1.0 and Navigator 2.0

class AppRouteName {
  static const String login = 'Login View';
  static const String categoryList = 'CategoryList View';
  static const String productList = 'ProductList View';
  static const String productDetail = 'ProductDetail View';
  static const String about = 'About View';
  static const String settings = 'Settings View';
}

class AppRouter {
  final GoRouter router = GoRouter(
    // debugLogDiagnostics: true,

    /// Here we add observables for app eg: FirebaseAnalytics Observer, Navigation Observers ...
    observers: [
      FlutterUxcamNavigatorObserver(),
    ],

    /// Used to Log all the changes while performing routing
    routes: [
      GoRoute(
        /// Top Level Route
        path: '/',
        name: AppRouteName.login,
        builder: (BuildContext context, GoRouterState state) {
          return LoginView(key: state.pageKey);
        },
      ),
      GoRoute(
        /// Top Level Route
        /// Consider this as dashboard with list of categories
        path: '/category-list',
        name: AppRouteName.categoryList,
        builder: (BuildContext context, GoRouterState state) {
          return CategoryListView(key: state.pageKey);
        },
        routes: [
          /// 2nd Level Nesting - Simple Nested Route
          GoRoute(
            path: 'about',
            name: AppRouteName.about,
            builder: (context, state) {
              return AboutView(key: state.pageKey);
            },
          ),
          GoRoute(
            path: 'settings',
            name: AppRouteName.settings,
            builder: (context, state) {
              return SettingsView(key: state.pageKey);
            },
          ),
          GoRoute(
            path: 'product-list',
            name: AppRouteName.productList,
            builder: (context, state) {
              return ProductListView(key: state.pageKey);
            },
            routes: [
              /// 3rd Level Nesting - Simple Nested Route
              GoRoute(
                path: 'product-detail',
                name: AppRouteName.productDetail,
                builder: (context, state) {
                  return ProductDetailView(key: state.pageKey);
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
