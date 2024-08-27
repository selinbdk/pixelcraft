import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pixelcraft/core/collections/image_response_collection.dart';
import 'package:pixelcraft/view/bookmarks_view.dart';
import 'package:pixelcraft/view/discover_view.dart';
import 'package:pixelcraft/view/master_view.dart';
import 'package:pixelcraft/view/onboarding_view.dart';
import 'package:pixelcraft/view/result_view.dart';

part 'app_router.gr.dart';

final appRouter = AppRouter();

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: OnboardingRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: MasterRoute.page,
          children: [
            AutoRoute(
              page: DiscoverRoute.page,
            ),
            AutoRoute(
              page: BookmarksRoute.page,
            ),
          ],
        ),
        

        CustomRoute(
          page: ResultRoute.page,
          fullscreenDialog: true,
          durationInMilliseconds: 500,
          reverseDurationInMilliseconds: 500,
          transitionsBuilder: (_, animation, __, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      ];
}
