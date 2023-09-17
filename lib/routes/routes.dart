import 'package:flutter/material.dart';
import 'package:shoes_nepal/pages/home_page.dart';
import 'package:shoes_nepal/pages/product_page.dart';

class RouteManager {
  static const String homePage = '/';
  static const String productPage = '/productPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case productPage:
        return MaterialPageRoute(builder: (context) => const ProductPage());
      default:
        throw const FormatException('Route not found!');
    }
  }
}
