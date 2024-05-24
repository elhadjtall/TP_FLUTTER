import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:provider/provider.dart';
import 'package:store/models/product.dart';
import 'package:store/providers/product_provider.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Watch (getter) : acceder au product stocké dans ProductProvider
    Product? product = context.watch<ProductProvider>().product;
    return Column(children: [
      Container(
        height: 200,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(product!.image),
          fit: BoxFit.contain,
        )),
      ),
      // Pour espacer les blocs
      const SizedBox(
        height: 15,
      ),
      // Afficher le titre du produit
      Text(
        product.title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),

      // Afficher le prix du produit
      Text(
        '${product.price.toStringAsFixed(2)}€',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
      // Afficher les etoils du produit
      RatingStars(
        value: product.rating['rate'],
      )
    ]);
  }
}
