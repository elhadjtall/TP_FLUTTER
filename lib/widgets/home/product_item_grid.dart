import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store/models/product.dart';

class ProductItemGrid extends StatelessWidget {
  // Recuperer les informations du produit par la grille
  final Product product;
  const ProductItemGrid({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    // Affichage des images dans les colonnes de la grille
    return Column(children: [
      // Afficher l'image du produit
      Image.network(product.image, height: 120, fit: BoxFit.contain),
      // Afficher le titre du produit
      Text(
        product.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      // Afficher le prix du produit
      Text('${product.price}€'),
      // Le boutton pour voir les details
      OutlinedButton(
        onPressed: () {
          /*
          navigeur vers un écran 
          context : écran en cours d'affichage

          */
          context.pushNamed('product-detail'); // 'product-detail' : nom de l'écran
        },

        style: OutlinedButton.styleFrom(
          // Le fond du bouton
          backgroundColor: Colors.blue,
          // Le texte du bouton
          foregroundColor: Colors.white,
          // Le bordure du bouton
          side: BorderSide.none,
          // La form du bouton
          shape: const BeveledRectangleBorder(),
        ),
        // L'ecriture sur le bouton du wiew details
        child: const Text('View Details'),
      ),
    ]);
  }
}
