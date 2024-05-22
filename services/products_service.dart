import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:store/config/config.dart';

class ProductsService {
  /*
  recuperation de la liste des produits
  Future équivalent d'une Promise en JS
  */

  Future getProducts() async {
    // requete en GET
    Uri uri = Uri.parse('${Config.API_URL}/products');
    http.Response response = await http.get(uri);

    // recuperer la réponse de la requete
    if (response.statusCode == 200) {
      // convertir les donnée en Json
      List data = jsonDecode(response.body);
      inspect(data);
    } else {
      throw Error();
    }
  }
}
