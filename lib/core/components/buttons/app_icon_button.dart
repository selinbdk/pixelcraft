//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
//import 'package:pixelcraft/config/router/app_router.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    required this.onPressed,
    required this.icon,
    super.key,
  });

  final Widget icon;
  final void Function()? onPressed;
  

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      
    );
  }
}
