import 'package:flutter/material.dart';
import 'package:store/widgets/common/appbar_widget.dart';
import 'package:store/widgets/common/drawer_widget.dart';
import 'package:store/widgets/home/ads_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});  // Correction de la déclaration du constructeur

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget( 
      ),
      drawer: DrawerWidget(),
      body: SingleChildScrollView(  // Correction de 'SimgleChildScrollView' en 'SingleChildScrollView'
        child: Column(  // Correction de 'Colum' en 'Column'
          children: [
            AdsWidget(),
            Text('Bienvenu sur mon application')  // Correction des parenthèses en crochets pour 'children'
          ],
        ),
      ), 
    );
  }
}
