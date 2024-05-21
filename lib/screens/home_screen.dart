import 'package:flutter/material.dart';
import 'package:store/widgets/common/appbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});  // Correction de la déclaration du constructeur

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget( 
      ),
      body: SingleChildScrollView(  // Correction de 'SimgleChildScrollView' en 'SingleChildScrollView'
        child: Column(  // Correction de 'Colum' en 'Column'
          children: [
            Text('home screen')  // Correction des parenthèses en crochets pour 'children'
          ],
        ),
      ), 
    );
  }
}
