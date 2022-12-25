// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../ui/screens/home_screen.dart' as _i1;
import '../ui/screens/item_screen.dart' as _i4;
import '../ui/screens/items_screen.dart' as _i3;
import '../ui/screens/not_found_screen.dart' as _i5;
import '../ui/screens/second_screen.dart' as _i2;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    SecondRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SecondScreen(),
      );
    },
    ItemsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ItemsScreen(),
      );
    },
    ItemRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ItemRouteArgs>(
          orElse: () =>
              ItemRouteArgs(lineItemId: pathParams.getInt('lineItemId')));
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.ItemScreen(
          key: args.key,
          lineItemId: args.lineItemId,
        ),
      );
    },
    NotFoundRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.NotFoundScreen(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'items',
          fullMatch: true,
        ),
        _i6.RouteConfig(
          HomeRoute.name,
          path: '/home-screen',
        ),
        _i6.RouteConfig(
          SecondRoute.name,
          path: 'second',
        ),
        _i6.RouteConfig(
          ItemsRoute.name,
          path: 'items',
        ),
        _i6.RouteConfig(
          ItemRoute.name,
          path: 'items/:lineItemId',
        ),
        _i6.RouteConfig(
          NotFoundRoute.name,
          path: '404',
        ),
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-screen',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.SecondScreen]
class SecondRoute extends _i6.PageRouteInfo<void> {
  const SecondRoute()
      : super(
          SecondRoute.name,
          path: 'second',
        );

  static const String name = 'SecondRoute';
}

/// generated route for
/// [_i3.ItemsScreen]
class ItemsRoute extends _i6.PageRouteInfo<void> {
  const ItemsRoute()
      : super(
          ItemsRoute.name,
          path: 'items',
        );

  static const String name = 'ItemsRoute';
}

/// generated route for
/// [_i4.ItemScreen]
class ItemRoute extends _i6.PageRouteInfo<ItemRouteArgs> {
  ItemRoute({
    _i7.Key? key,
    required int lineItemId,
  }) : super(
          ItemRoute.name,
          path: 'items/:lineItemId',
          args: ItemRouteArgs(
            key: key,
            lineItemId: lineItemId,
          ),
          rawPathParams: {'lineItemId': lineItemId},
        );

  static const String name = 'ItemRoute';
}

class ItemRouteArgs {
  const ItemRouteArgs({
    this.key,
    required this.lineItemId,
  });

  final _i7.Key? key;

  final int lineItemId;

  @override
  String toString() {
    return 'ItemRouteArgs{key: $key, lineItemId: $lineItemId}';
  }
}

/// generated route for
/// [_i5.NotFoundScreen]
class NotFoundRoute extends _i6.PageRouteInfo<void> {
  const NotFoundRoute()
      : super(
          NotFoundRoute.name,
          path: '404',
        );

  static const String name = 'NotFoundRoute';
}
