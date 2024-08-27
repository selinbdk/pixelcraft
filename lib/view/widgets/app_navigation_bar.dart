import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelcraft/config/gen/assets.gen.dart';
import 'package:pixelcraft/gen/colors.gen.dart';
import 'package:pixelcraft/l10n/l10.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({
    required this.onTap,
    super.key,
    });

  final void Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 10.sp,
        selectedFontSize: 10.sp,
        unselectedItemColor: ColorName.primaryLabel,
        selectedItemColor: ColorName.primaryLabel,
        backgroundColor: ColorName.primaryBackground,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.home,
              color: ColorName.primaryLabel,
            ),
            label: AppLocalizations.of(context).destinationHome,
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.bookmark.svg(),
            label: AppLocalizations.of(context).destinationBookMarks,
          ),
        ],
        onTap: onTap,
      ),
    );
  }
}
