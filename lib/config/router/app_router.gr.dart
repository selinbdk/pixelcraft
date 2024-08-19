// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DiscoverRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DiscoverView(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingView(),
      );
    },
    ResultRoute.name: (routeData) {
      final args = routeData.argsAs<ResultRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ResultView(
          base64String: args.base64String,
          controller: args.controller,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [DiscoverView]
class DiscoverRoute extends PageRouteInfo<void> {
  const DiscoverRoute({List<PageRouteInfo>? children})
      : super(
          DiscoverRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingView]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ResultView]
class ResultRoute extends PageRouteInfo<ResultRouteArgs> {
  ResultRoute({
    required String base64String,
    required TextEditingController controller,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ResultRoute.name,
          args: ResultRouteArgs(
            base64String: base64String,
            controller: controller,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ResultRoute';

  static const PageInfo<ResultRouteArgs> page = PageInfo<ResultRouteArgs>(name);
}

class ResultRouteArgs {
  const ResultRouteArgs({
    required this.base64String,
    required this.controller,
    this.key,
  });

  final String base64String;

  final TextEditingController controller;

  final Key? key;

  @override
  String toString() {
    return 'ResultRouteArgs{base64String: $base64String, controller: $controller, key: $key}';
  }
}
