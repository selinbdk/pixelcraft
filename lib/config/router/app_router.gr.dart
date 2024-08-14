// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [DiscoverView]
class DiscoverRoute extends PageRouteInfo<void> {
  const DiscoverRoute({List<PageRouteInfo>? children})
      : super(
          DiscoverRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DiscoverView();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OnboardingView();
    },
  );
}

/// generated route for
/// [ResultView]
class ResultRoute extends PageRouteInfo<ResultRouteArgs> {
  ResultRoute({
    required TextEditingController controller,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ResultRoute.name,
          args: ResultRouteArgs(
            controller: controller,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ResultRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ResultRouteArgs>();
      return ResultView(
        controller: args.controller,
        key: args.key,
      );
    },
  );
}

class ResultRouteArgs {
  const ResultRouteArgs({
    required this.controller,
    this.key,
  });

  final TextEditingController controller;

  final Key? key;

  @override
  String toString() {
    return 'ResultRouteArgs{controller: $controller, key: $key}';
  }
}
