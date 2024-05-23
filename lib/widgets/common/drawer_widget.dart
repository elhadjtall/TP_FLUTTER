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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CloseButton(),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
