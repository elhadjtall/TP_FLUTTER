import 'package:flutter/material.dart';
import 'package:store/models/product.dart';

class ProductProvider extends ChangeNotifier {
  // On stock des produits
// On ajoute un ? pour dire que c'est null
  Product? _product;
  // getter / setter
  // On recupere le produit sans ondonscore
  // Le getter
  Product? get product => _product;

// le setter
  set product(Product? value) {
    _product = value;
    // On notifie la fonction notifiyListeners : permet de mettre à jour les écouteurs du provider
    notifyListeners();
  }
}
