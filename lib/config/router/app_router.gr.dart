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
    ImageDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ImageDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ImageDetailView(
          idNum: args.idNum,
          base64String: args.base64String,
          key: args.key,
        ),
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
/// [ImageDetailView]
class ImageDetailRoute extends PageRouteInfo<ImageDetailRouteArgs> {
  ImageDetailRoute({
    required int? idNum,
    required String? base64String,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ImageDetailRoute.name,
          args: ImageDetailRouteArgs(
            idNum: idNum,
            base64String: base64String,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ImageDetailRoute';

  static const PageInfo<ImageDetailRouteArgs> page =
      PageInfo<ImageDetailRouteArgs>(name);
}

class ImageDetailRouteArgs {
  const ImageDetailRouteArgs({
    required this.idNum,
    required this.base64String,
    this.key,
  });

  final int? idNum;

  final String? base64String;

  final Key? key;

  @override
  String toString() {
    return 'ImageDetailRouteArgs{idNum: $idNum, base64String: $base64String, key: $key}';
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
