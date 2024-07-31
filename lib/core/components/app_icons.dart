import 'package:flutter/material.dart';

class AppIcons extends StatelessWidget {
  const AppIcons({
    required this.icon,
    super.key,
  });

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: icon,
    );
  }
}
