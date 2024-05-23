import 'package:flutter/material.dart';
import 'package:store/services/products_service.dart';


class ProductsGridWidget extends StatelessWidget {
  ProductsGridWidget({super.key});

  final _productsService = ProductsService();
  @override
  Widget build(BuildContext context) {
    _productsService.getProducts();
    return const Placeholder();
  }
}
