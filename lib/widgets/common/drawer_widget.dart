import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: const Column(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
            )
          ],
        ),
      ),
    );
  }
}
