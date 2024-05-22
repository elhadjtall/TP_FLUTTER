import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.only(
          top: 30,
        ),
        child: const Column(
          children: [
            CloseButton(),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Home'),
            )
          ],
        ),
      ),
    );
  }
}
