import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pixelcraft/config/gen/colors.gen.dart';

@RoutePage()
class BookmarksView extends StatelessWidget {
  const BookmarksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'BookMarks view',
          style: TextStyle(color: ColorName.primaryLabel),
        ),
      ),
    );
  }
}
