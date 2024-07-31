import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelcraft/gen/assets.gen.dart';
import 'package:pixelcraft/theme/app_theme.dart';

class DiscoverView extends StatelessWidget {
  const DiscoverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          top: 1,
          right: 10,
        ),
        child: SafeArea(
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            InkWell(
              onTap: () {},
              child: Image.asset(
                Assets.images.discoverSettingsButton.keyName,
                height: 40,
              ),
            ),
            70.hSpace,
            Image.asset(
              Assets.images.discoverTitle.keyName,
              height: 40,
            ),
            70.hSpace,
            InkWell(
              onTap: () {},
              child: Image.asset(
                Assets.images.discoverAddButton.keyName,
                height: 40,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
