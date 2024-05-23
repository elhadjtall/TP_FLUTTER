import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:store/models/product.dart';
import 'package:store/services/products_service.dart';
import 'package:store/widgets/home/product_item_grid.dart';

class ProductsGridWidget extends StatelessWidget {
  ProductsGridWidget({super.key});

  final ProductsService _productsService = ProductsService();

  @override
  Widget build(BuildContext context) {
    inspect(_productsService.getProducts());

    // Creer un container pour mettre du margin et du padding
    return Container(
      padding: const EdgeInsets.all(15),
      child: FutureBuilder(
          future: _productsService.getProducts(),
          builder: (context, snapshot) {
            // si les données sont accessibles
            if (snapshot.hasData) {
              // requireData : recuperer les données à l'interieur
              List<Product> data = snapshot.requireData;
              inspect(data);
              // Return un grid builder pour afficher les données
              return Column(
                children: [
                  const Text('Our products',
                      style: TextStyle(
                        fontSize: 30,
                      )),
                  GridView.builder(
                    //Ajout de ces deux propriété pour afficher les numéros des lignes et colonnes
                    shrinkWrap: true, // La taille ou la hauteur du contenu
                    itemCount: data.length, // La longueur du contenu
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                    ),
                    itemBuilder: (context, index) {
                      // return ProductItemGrid du fichier creer
                      return ProductItemGrid(product: data[index]);
                    },
                  ),
                ],
              );
            }

            return const CircularProgressIndicator();
          }),
    );
  }
}
