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
  int _index = 0;

// muniteur
  Timer? _timer;
  @override
  State<AdsWidget> createState() => _AdsWidgetState();
}

/*

Cycle de vie d'un widget 
initState : affichage du widget
dispose : désaffichage du widget

*/
class _AdsWidgetState extends State<AdsWidget> {
  @override
  void initState() {
    super.initState();
    // Déclencher le timer
    widget._timer = Timer.periodic(const Duration(seconds: 2), _setTimer);
  }

  void _setTimer(Timer timer) {
    setState(() {
      // Creer une condition timer
      if (widget._index < widget._items.length - 1) {
        widget._index++;
      } else {
        widget._index = 0;
      }
      // Changement de l'index (% : signifit modulo)
      // widget._index = (widget._index + 1) % widget._items.length;
    });
    print('timer');
  }

  // C'est le widget qui s'affiche pas
  @override
  void dispose() {
    super.dispose();

    // Stop le timer
    widget._timer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Le mot-clé widget permet d'acceder à la classe parente widget à partir de la classe de l'état du widget
        // On ajoute le $ pour concatener les variables
        Image.asset('assets/img/${widget._items[widget._index]['img']}'),
        Text(
            '${widget._items[widget._index]['text']}') // Image.asset('assets/img/ad1.jpeg'),
        // const Text('Informatique'),
        // Image.asset('assets/img/ad2.jpeg'),
        // const Text('Smartphone et Objet'),
        // Image.asset('assets/img/ad3.jpeg'),
        // const Text('TV, Video et HomeCineman  '),
      ],
    );
  }
}
