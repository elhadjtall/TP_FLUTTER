import 'dart:async';

import 'package:flutter/material.dart';

class AdsWidget extends StatefulWidget {
  AdsWidget({super.key});

// dart :
// List : équivalent à un array indice
// Map : équivalent à un objet JS

// Visibilité des membres :
// Pas de protected
// Préfixe _ : équivalent à private

// Liste des Map
  final List<Map> _items = [
    {'img': 'ad1.jpeg', 'text': 'Text 1'},
    {'img': 'ad2.jpeg', 'text': 'Text 2'},
    {'img': 'ad3.jpeg', 'text': 'Text 3'},
  ];
// Indice de la liste
  final int _index = 0;

// muniteur
  Timer? _timer;
  @override
  State<AdsWidget> createState() => _AdsWidgetState();
}

class _AdsWidgetState extends State<AdsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/img/ad1.jpeg'),
      ],
    );
  }
}
