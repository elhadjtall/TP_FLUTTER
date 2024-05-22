import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Store',
        style: TextStyle(
          // color: colors.deepOrange,
          color: Color.fromRGBO(255, 0, 255, 1),
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
