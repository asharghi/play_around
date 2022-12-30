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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../ui/estimator/screens/estimator_screen.dart' as _i4;
import '../ui/food/screen/food_screen.dart' as _i5;
import '../ui/screens/home_screen.dart' as _i1;
import '../ui/screens/item_screen.dart' as _i6;
import '../ui/screens/items_screen.dart' as _i3;
import '../ui/screens/not_found_screen.dart' as _i7;
import '../ui/screens/second_screen.dart' as _i2;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    SecondRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SecondScreen(),
      );
    },
    ItemsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ItemsScreen(),
      );
    },
    EstimatorRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EstimatorScreen(),
      );
    },
    FoodRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.FoodScreen(),
      );
    },
    ItemRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ItemRouteArgs>(
          orElse: () =>
              ItemRouteArgs(lineItemId: pathParams.getInt('lineItemId')));
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.ItemScreen(
          key: args.key,
          lineItemId: args.lineItemId,
        ),
      );
    },
    NotFoundRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.NotFoundScreen(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'food',
          fullMatch: true,
        ),
        _i8.RouteConfig(
          HomeRoute.name,
          path: '/home-screen',
        ),
        _i8.RouteConfig(
          SecondRoute.name,
          path: 'second',
        ),
        _i8.RouteConfig(
          ItemsRoute.name,
          path: 'items',
        ),
        _i8.RouteConfig(
          EstimatorRoute.name,
          path: 'estimator',
        ),
        _i8.RouteConfig(
          FoodRoute.name,
          path: 'food',
        ),
        _i8.RouteConfig(
          ItemRoute.name,
          path: 'items/:lineItemId',
        ),
        _i8.RouteConfig(
          NotFoundRoute.name,
          path: '404',
        ),
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-screen',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.SecondScreen]
class SecondRoute extends _i8.PageRouteInfo<void> {
  const SecondRoute()
      : super(
          SecondRoute.name,
          path: 'second',
        );

  static const String name = 'SecondRoute';
}

/// generated route for
/// [_i3.ItemsScreen]
class ItemsRoute extends _i8.PageRouteInfo<void> {
  const ItemsRoute()
      : super(
          ItemsRoute.name,
          path: 'items',
        );

  static const String name = 'ItemsRoute';
}

/// generated route for
/// [_i4.EstimatorScreen]
class EstimatorRoute extends _i8.PageRouteInfo<void> {
  const EstimatorRoute()
      : super(
          EstimatorRoute.name,
          path: 'estimator',
        );

  static const String name = 'EstimatorRoute';
}

/// generated route for
/// [_i5.FoodScreen]
class FoodRoute extends _i8.PageRouteInfo<void> {
  const FoodRoute()
      : super(
          FoodRoute.name,
          path: 'food',
        );

  static const String name = 'FoodRoute';
}

/// generated route for
/// [_i6.ItemScreen]
class ItemRoute extends _i8.PageRouteInfo<ItemRouteArgs> {
  ItemRoute({
    _i9.Key? key,
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

  final _i9.Key? key;

  final int lineItemId;

  @override
  String toString() {
    return 'ItemRouteArgs{key: $key, lineItemId: $lineItemId}';
  }
}

/// generated route for
/// [_i7.NotFoundScreen]
class NotFoundRoute extends _i8.PageRouteInfo<void> {
  const NotFoundRoute()
      : super(
          NotFoundRoute.name,
          path: '404',
        );

  static const String name = 'NotFoundRoute';
}
