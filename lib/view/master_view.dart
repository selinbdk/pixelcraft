import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelcraft/config/gen/assets.gen.dart';
import 'package:pixelcraft/config/gen/colors.gen.dart';
import 'package:pixelcraft/config/router/app_router.dart';
import 'package:pixelcraft/l10n/l10.dart';
import 'package:pixelcraft/view/widgets/app_navigation_bar.dart';

@RoutePage()
class MasterView extends StatelessWidget {
  const MasterView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        DiscoverRoute(),
        BookmarksRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
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
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
          ),
        );
      },
    );
  }
}
