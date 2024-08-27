import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pixelcraft/config/router/app_router.dart';
import 'package:pixelcraft/view/widgets/app_navigation_bar.dart';

@RoutePage()
class MasterView extends StatelessWidget {
  const MasterView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        DiscoverRoute(),
        BookmarksRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: Expanded(
            child: AppNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: (value) {
                tabsRouter.setActiveIndex(value);
              },
            ),
          ),
        );
      },
    );
  }
}
