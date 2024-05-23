import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:store/config/config.dart';
import 'package:store/models/product.dart';

class ProductsService {
  /*
  recuperation de la liste des produits
  Future équivalent d'une Promise en JS
  */


// List<Product cette methode renvoie une liste de product
  Future <List<Product>> getProducts() async {
    // requete en GET
    Uri uri = Uri.parse('${Config.API_URL}/products');
    http.Response response = await http.get(uri);

    // recuperer la réponse de la requete
    if (response.statusCode == 200) {
      // convertir les donnée en Json
      List data = jsonDecode(response.body);
    

      return data
      .map((dynamic value) => Product(
        id: value['id'],
        title: value['title'],
        description: value['description'],
        price: value['price'],
        image: value['image'],
        category: value['category'],
        rating: value['rating'],
      )
      ).toList();
    } else {
      throw Error();
    }
  }
}
