class Product {
  // Creer le constructeur
  /*
  {} : paramètre nommé
  this : paramètre promu pour le constructeur
  required : paramètre obligatoire
  */
  int id;
  String title, description, category, image;
  num price;
  Map rating;

  // Creer le constructeur par defaut
  Product(
      {required this.id,
      required this.title,
      required this.description,
      required this.category,
      required this.image,
      required this.price,
      required this.rating});
}
