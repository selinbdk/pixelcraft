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
    BookmarksRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BookmarksView(),
      );
    },
    DiscoverRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DiscoverView(),
      );
    },
    MasterRoute.name: (routeData) {
      final args = routeData.argsAs<MasterRouteArgs>(
          orElse: () => const MasterRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MasterView(key: args.key),
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
          collection: args.collection,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [BookmarksView]
class BookmarksRoute extends PageRouteInfo<void> {
  const BookmarksRoute({List<PageRouteInfo>? children})
      : super(
          BookmarksRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookmarksRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [MasterView]
class MasterRoute extends PageRouteInfo<MasterRouteArgs> {
  MasterRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MasterRoute.name,
          args: MasterRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MasterRoute';

  static const PageInfo<MasterRouteArgs> page = PageInfo<MasterRouteArgs>(name);
}

class MasterRouteArgs {
  const MasterRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MasterRouteArgs{key: $key}';
  }
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
    required ImageResponseCollection collection,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ResultRoute.name,
          args: ResultRouteArgs(
            collection: collection,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ResultRoute';

  static const PageInfo<ResultRouteArgs> page = PageInfo<ResultRouteArgs>(name);
}

class ResultRouteArgs {
  const ResultRouteArgs({
    required this.collection,
    this.key,
  });

  final ImageResponseCollection collection;

  final Key? key;

  @override
  String toString() {
    return 'ResultRouteArgs{collection: $collection, key: $key}';
  }
}
