import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:store/models/product.dart';
import 'package:store/services/products_service.dart';

class ProductsGridWidget extends StatelessWidget {
  ProductsGridWidget({super.key});

  final ProductsService _productsService = ProductsService();

  @override
  Widget build(BuildContext context) {
    inspect(_productsService.getProducts());
    return FutureBuilder(
        future: _productsService.getProducts(),
        builder: (context, snapshot) {
          // si les données sont accessibles
          if (snapshot.hasData) {
            // requireData : recuperer les données à l'interieur
            List<Product> data = snapshot.requireData;
            inspect(data);
            // Return un grid builder pour afficher les données
            return GridView.builder(
              //Ajout de ces deux propriété pour afficher les numéros des lignes et colonnes
              shrinkWrap: true, // La taille ou la hauteur du contenu
              itemCount: data.length, // La longueur du contenu 
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemBuilder: (context, index) {
                return Text(index.toString());
              },
            );
          }

          return CircularProgressIndicator();
        });
  }
}
