import 'package:flutter/material.dart';

class AdsWidget extends StatefulWidget {
  const AdsWidget({super.key});


// dart :
// List : équivalent à un array indice
// Map : équivalent à un objet JS

// Visibilité des membres :
// Pas de protected
// Préfixe _ : équivalent à private

  @override
  State<AdsWidget> createState() => _AdsWidgetState();
}

class _AdsWidgetState extends State<AdsWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}