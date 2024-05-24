import 'dart:convert';
// import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:store/config/config.dart';
import 'package:store/models/category.dart';
import 'package:store/models/product.dart';

class CategoriesService {
  /*
  recuperation de la liste des produits
  Future équivalent d'une Promise en JS
  */
// List<Product cette methode renvoie une liste de product
  Future<List<Category>> getCategories() async {
    // requete en GET
    Uri uri = Uri.parse('${Config.API_URL}/products/categories');
    http.Response response = await http.get(uri);

    // recuperer la réponse de la requete
    if (response.statusCode == 200) {
      // convertir les donnée en Json
      List data = jsonDecode(response.body);
      return data.map((dynamic value) => Category(name: value)).toList();
    } else {
      throw Error();
    }
  }
}
