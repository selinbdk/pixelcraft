import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelcraft/gen/assets.gen.dart';
import 'package:pixelcraft/gen/colors.gen.dart';
import 'package:pixelcraft/l10n/l10.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });
  final int currentIndex;
  final void Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      unselectedFontSize: 14.sp,
      selectedFontSize: 14.sp,
      unselectedItemColor: ColorName.primaryLabel,
      selectedItemColor: ColorName.primaryBlue,
      backgroundColor: ColorName.primaryBackground,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.home_outlined,
            size: 28,
          ),
          activeIcon: const Icon(
            Icons.home,
            size: 28,
            color: ColorName.primaryLabel,
          ),
          label: AppLocalizations.of(context).destinationHome,
        ),
        BottomNavigationBarItem(
          icon: Assets.icons.bookmark.svg(
            width: 28,
            height: 28,
          ),
          activeIcon: Assets.icons.filledBookmark.svg(
            width: 28,
            height: 28,
          ),
          label: AppLocalizations.of(context).destinationBookMarks,
        ),
      ],
      onTap: onTap,
    );
  }
}
