import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:developer';
import 'package:store/services/categories_service.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    inspect((CategoriesService()).getCategories());
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
            ListTile(
              leading : icon(Icons.list_alt),
              title : Text('Category'),
              selected : true,
            )
          ],
        ),
      ),
    );
  }
}
