import 'package:flutter/material.dart';
import 'package:store/widgets/common/appbar_widget.dart';
import 'package:store/widgets/common/drawer_widget.dart';

class ProductDetailsScrenn extends StatelessWidget {
  const ProductDetailsScrenn(
      {super.key}); // Correction de la déclaration du constructeur

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(),
      drawer: DrawerWidget(),
      body: SingleChildScrollView(
        // Correction de 'SimgleChildScrollView' en 'SingleChildScrollView'
        child: Column(
          // Correction de 'Colum' en 'Column'
          children: [
            // Affichage des texts des produits
            Text("product details"),
          ],
        ),
      ),
    );
  }
}
